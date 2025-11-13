#include <format>
#include <iostream>

int main()
{
    std::cout << std::format("hello {0} {1}", "vulkan", 1.1) << std::endl;
    return 0;
}