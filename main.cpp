#include <print>

int fibonacci_recursive(const int value)
{
    if (value < 2)
        return value;

    return fibonacci_recursive(value - 1) + fibonacci_recursive(value - 2);
}

int fibonacci_iterative(const int value)
{
    if (value < 2)
        return value;

    int previous = 0;
    int current  = 1;

    for (int i = 2; i <= value; ++i)
    {
        const int next = previous + current;
        previous = current;
        current  = next;
    }

    return current;
}

int main(int argc, char** argv)
{
    std::print("{}\n", fibonacci_recursive(2));
    std::print("{}\n", fibonacci_recursive(10));

    std::print("{}\n", fibonacci_iterative(2));
    std::print("{}\n", fibonacci_iterative(10));

    return 0;
}