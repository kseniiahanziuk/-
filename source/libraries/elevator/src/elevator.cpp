#include "elevator.hpp"

Elevator::Elevator(int top_floor) : top_floor_{top_floor}
{
}

bool Elevator::go_to(int requested)
{
    if (requested < 1 || requested > top_floor_)
        return false;

    current_floor_ = requested;
    return true;
}

int Elevator::current_floor() const
{
    return current_floor_;
}

int Elevator::top_floor() const
{
    return top_floor_;
}
