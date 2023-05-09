#include <string>

extern "C"
{
    __attribute__((visibility("default")))
    __attribute__((used))
    const char *
    hello(const char *name)
    {
        const char *hello_string = "Hello, ";
        size_t len = strlen(hello_string) + strlen(name) + 2; // +2 for the comma and the null terminator
        char *result = (char *)malloc(len);
        snprintf(result, len, "%s%s!", hello_string, name);
        return result;
    }
}