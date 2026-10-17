#include <print>

#include "elevator.hpp"

int main(int argc, char** argv)
{
    Elevator lift{10};
    std::println("{} {}", lift.current_floor(), lift.top_floor());

    bool accepted = lift.go_to(7);
    std::println("{} {}", accepted, lift.current_floor());
    accepted = lift.go_to(12);
    std::println("{} {}", accepted, lift.current_floor());
    accepted = lift.go_to(0);
    std::println("{} {}", accepted, lift.current_floor());

    Elevator service = lift;
    service.go_to(2);
    std::println("{} {}", lift.current_floor(), service.current_floor());

    lift = service;
    std::println("{} {}", lift.current_floor(), service.current_floor());

    const Elevator fixed{3};
    std::println("{}", fixed.current_floor());

    return 0;
}
