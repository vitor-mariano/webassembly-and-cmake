#include <emscripten/emscripten.h>
#include <cmath>

extern "C"
{
    double EMSCRIPTEN_KEEPALIVE get_sqrt(double number)
    {
        return std::sqrt(number);
    }
}
