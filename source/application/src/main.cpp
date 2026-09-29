#include <print>
#include "fibonacci.hpp"

int main(int argc, char** argv)
{
    std::print("{}\n", fibonacci_recursive(2));
    std::print("{}\n", fibonacci_recursive(10));

    std::print("{}\n", fibonacci_iterative(2));
    std::print("{}\n", fibonacci_iterative(10));

    return 0;
}