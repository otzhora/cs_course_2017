
#include "gtest/gtest.h"
#include "func.h"
#include <set>
#include <string>
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

    TEST(is_eq_sets, true) {
        std::set<string> test_set1;
        std::set<string> test_set2;

        test_set1.insert("abc");
        test_set1.insert("sas");
        test_set1.insert("kek");
        test_set1.insert("lol");

        test_set2.insert("abc");
        test_set2.insert("lol");
        test_set2.insert("kek");
        test_set2.insert("sas");

        EXPECT_TRUE(is_eq_sets(test_set1, test_set2));

    }
    
    TEST(is_eq_sets, false) {
        std::set<string> test_set1;
        std::set<string> test_set2;

        test_set1.insert("abc");
        test_set1.insert("sas");
        test_set1.insert("kek");
        test_set1.insert("lol");

        test_set2.insert("abc");
        test_set2.insert("lol");
        test_set2.insert("kek1");
        test_set2.insert("sas2");

        EXPECT_FALSE(is_eq_sets(test_set1, test_set2));
    }
    
    TEST(variables, all){
        std::set<string> test_set;

        test_set.insert("avar1");
        test_set.insert("bder1");
        test_set.insert("c12");

        EXPECT_EQ(higlight_vars("(avar1+bder1)-c12*(12+24)"), test_set);
    }

    
}