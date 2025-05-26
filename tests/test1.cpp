/*
** EPITECH PROJECT, 2025
** MANUS [WSL : Ubuntu]
** File description:
** test1
*/

#define DOCTEST_CONFIG_IMPLEMENT_WITH_MAIN
#include "doctest.h"

#include <iostream>

int factorial(int n);

TEST_CASE("factorial of 10 is 3628800") {
    CHECK(factorial(10) == 3628800);
}

TEST_CASE("factorial of 0 is 1") {
    CHECK(factorial(0) == 1);
}

TEST_CASE("factorial of 5 is 120") {
    CHECK(factorial(5) == 120);
}
