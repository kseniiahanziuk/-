#ifndef ELEVATOR_HPP
#define ELEVATOR_HPP

class Elevator
{
public:
    explicit Elevator(int top_floor);

    bool go_to(int requested);

    int current_floor() const;
    int top_floor() const;

private:
    int current_floor_{1};
    int top_floor_{1};
};

#endif
