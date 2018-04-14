#include "gtest/gtest.h"
#include "complex_numbers.h"


namespace{
    
    TEST(math, eq) {
        complex_number z1(3, 4);
        complex_number z2(3, 4);

        EXPECT_TRUE(z1 == z2);
    }

    TEST(math, plus) {
        complex_number z1(3, 4);
        complex_number z2(5, 6);
        complex_number z3(8, 10);

        EXPECT_TRUE((z1 + z2) == z3);
    }

    TEST(math, multiplication) {
        complex_number z1(2, 3);
        complex_number z2(-1, 1);
        complex_number z3(-5, -1);

        EXPECT_TRUE((z1 * z2) == z3);
    }

    TEST(type, double) {
        complex_number z(5, 3);

        EXPECT_EQ(double(z), 34);
    }

    TEST(brackets, Re) {
        complex_number z(-4, 3.756);

        EXPECT_EQ(z["Re"], -4);
    }

    TEST(brackets, Im) {
        complex_number z(-4, 3.756);

        EXPECT_EQ(z["Im"], 3.756);
    }
};