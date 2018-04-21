#include "gtest/gtest.h"
#include "polynomial.h"


namespace{

    TEST(polynom, equality) {
        double c[] = { 0, 0, 3, 4, 5 };
        double c2[] = { 0, 0, 2, 1 };
        polynom p1(5, c);
        polynom p2(5, c);
        polynom p3(4, c2);
        EXPECT_TRUE(p1 == p2);
        EXPECT_FALSE(p1 == p3);
    }

    TEST(polynom, summ_with_poly) {
        double c1[] = { 1, 2, 3, 4 };
        double c2[] = { 5, 4, 2, 1, 0, 1 };
        double c3[] = { 5, 4, 3, 3, 3, 5 };
        polynom p1(4, c1);
        polynom p2(6, c2);
        polynom p3(6, c3);

        EXPECT_TRUE( (p1+p2) == p3 );
    }

    TEST(polynom, summ_with_double) { 
        double c1[] = {1, 2, 3};
        double c2[] = {1, 2, 6};
        polynom p1(3, c1);
        polynom p2(3, c2);
        
        EXPECT_TRUE( (p1+3) == p2 );
    }

    TEST(polynom, diff) {
        double c1[] = { 1, 2, 3, 4 };
        double c2[] = { 5, 4, 2, 1, 0, 1 };
        double c3[] = { 5, 4, 1, -1, -3, -3 };
        polynom p1(4, c1);
        polynom p2(6, c2);
        polynom p3(6, c3);

        EXPECT_TRUE( (p2 - p1) == p3 );
    }

    TEST(polynom, multiplication) { 
        double c1[] = { 1, 2, 3};
        double c2[] = { 5, 4 };
        double c3[] = { 5, 14, 23, 12 };
        polynom p1(3, c1);
        polynom p2(2, c2);
        polynom p3(4, c3);

        EXPECT_TRUE( (p1 * p2) == p3);
    }
    
}   