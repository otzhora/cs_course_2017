
#include "gtest/gtest.h"
#include "func.h"

namespace {
    TEST(is_correct, true){
        EXPECT_EQ(is_correct("(())"), true);
        EXPECT_EQ(is_correct("[()]{}<><{}>"), true);
        EXPECT_EQ(is_correct("{(())}[][]"), true);
    }

    TEST(is_correct, false){
        EXPECT_EQ(is_correct("({(}))"), false);
        EXPECT_EQ(is_correct("((])"), false);
        EXPECT_EQ(is_correct("[(])"), false);
        EXPECT_EQ(is_correct("())"), false);
    }


    TEST(is_bracket, true){
        EXPECT_EQ(is_bracket('('), true);
    }
    TEST(is_bracket, false){
        EXPECT_EQ(is_bracket('a'), false);
    }

    TEST(match_bracket, true){ 
        EXPECT_EQ(match_brackets('(', ')'), true);
        EXPECT_EQ(match_brackets('{', '}'), true);
    }

    TEST(match_bracket, false){ 
        EXPECT_EQ(match_brackets('[', '}'), false);
        EXPECT_EQ(match_brackets('a', 'b'), false);
    }
}