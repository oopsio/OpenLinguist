/* 
 * Hello.mm
 * Compile with: g++ -x objective-c++ -framework Foundation Hello.mm -o hello 
 */
#import <Foundation/Foundation.h>
#include <iostream>

int main() {
    // C++ style output
    std::cout << "Hello, World! (C++ style)" << std::endl; //

    // Objective-C style output using NSLog and NSString
    NSString *greeting = @"Hello, World! (Objective-C style)";
    NSLog(@"%@", greeting); //

    return 0; //
}
