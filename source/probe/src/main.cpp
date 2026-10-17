#include <print>

class Probe
{
public:
    explicit Probe(int id) : id_{id}
    {
        std::println("construct {}", id_);
    }

    ~Probe()
    {
        std::println("destroy {}", id_);
    }

    int id() const
    {
        return id_;
    }

private:
    int id_;
};

void inspect(Probe probe)
{
    std::println("inspect {}", probe.id());
}

void leave_early(bool stop)
{
    Probe first{20};

    if (stop) {
        Probe second{21};
        return;
    }

    Probe third{22};
    std::println("end of leave_early");
}

int main(int argc, char** argv)
{
    Probe one{1};

    {
        Probe two{2};
        Probe copy = two;
        inspect(copy);
    }

    for (int i = 1; i <= 2; ++i) {
        Probe item{10 + i};
    }

    leave_early(true);
    leave_early(false);

    std::println("end of main");
    return 0;
}
