#include "iostream"
#include "xmmintrin.h"	
#include <stdio.h>
#include <stdlib.h>

void * aligned_malloc(size_t size, int align) {
    
    if (align < 0) {
        return NULL;
    }

    void *ptr;
    void *p = malloc(size + align - 1 + sizeof(void*));

    if (p != NULL) {       
        ptr = (void*) (((size_t)p + sizeof(void*) + align -1) & ~(align-1));
        *((void**)((size_t)ptr - sizeof(void*))) = p;
        return ptr;
    }
    return NULL;
}

void aligned_free(void *p) {
    void *ptr = *((void**)((size_t)p - sizeof(void*)));
    free(ptr);
    return;
}

int main()
{
	const auto N = 8;

	alignas(32) float a[] = { 41982.0,  81.5091, 3.14, 42.666, 54776.45, 342.4556, 6756.2344, 4563.789 };
	alignas(32) float b[] = { 85989.111,  156.5091, 3.14, 42.666, 1006.45, 9999.4546, 0.2344, 7893.789 };
	
	__m128* a_simd = reinterpret_cast<__m128*>(a);
	__m128* b_simd = reinterpret_cast<__m128*>(b);

    auto size = sizeof(float);
    void *ptr = aligned_malloc(N * size, 32);
	float* c = reinterpret_cast<float*>(ptr);
	
    for (size_t i = 0; i < N/4; i++, a_simd++, b_simd++, c += 4)
	    _mm_store_ps(c, _mm_add_ps(*a_simd, *b_simd));
	c -= N;

	std::cout.precision(10);
	for (size_t i = 0; i < N; i++)
		std::cout << c[i] << std::endl;

	aligned_free(ptr);

	return 0;
}