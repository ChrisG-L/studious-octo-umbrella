/*
** EPITECH PROJECT, 2025
** Workflow
** File description:
** main
*/

#include <iostream>
#include <string>

int factorial(int n);

int main(int ac, char **av)
{
    if (ac != 2 || std::string(av[1]) == "--help") {
        std::cerr << "Usage: " << av[0] << " <number>" << std::endl;
        return (ac != 2) ? 84 : 0;
    }
    int number = 0;
    try {
        number = std::stoi(av[1]);
    } catch (const std::exception &e) {
        std::cerr << "Error: Invalid number." << std::endl;
        return 84;
    }
    if (number < 0) {
        std::cerr << "Error: Number must be non-negative." << std::endl;
        return 84;
    }
    int result = factorial(number);
    std::cout << "Factorial of " << number << " is " << result << std::endl;
    return 0;
}
