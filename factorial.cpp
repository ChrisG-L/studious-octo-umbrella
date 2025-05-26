/*
** EPITECH PROJECT, 2025
** MANUS [WSL : Ubuntu]
** File description:
** factorial
*/

int factorial(int n) {
    if (n == 0) {
        return 1;
    }
    return n * factorial(n - 1);
}
