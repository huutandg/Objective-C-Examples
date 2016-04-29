//
//  DemoFunction.m
//  ObjCExamples
//
//  Created by Tan on 4/28/16.
//  Copyright © 2016 Tan. All rights reserved.
//

#import "DemoFunction.h"

@interface DemoFunction ()

@end

@implementation DemoFunction

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self writeln: @"Demo Function"];
    //[self writeln: @"Hello world"];
    [self sayFisrtName:@"Steve" andLastName:@"Jobs"];
    float tempDegree = 30.1;
    NSString* result = [NSString stringWithFormat:@"%2.1f celcius degree is equal to %3.1f fahrenheit degree", tempDegree, [self celciusToFahrenheit:tempDegree]];
    [self writeln:result];
    
    [self performSelector:@selector(celciusToFahrenheit)];
    // @(30.1) == [[NSNumber alloc] initWithFloat:30.1]
    [self performSelector:@selector(celciusToFahrenheit2:) withObject:@(30.1)];
    }

- (void) sayFisrtName: (NSString*) firstName andLastName: (NSString*) lastName {
    NSLog(@"%@ %@", firstName, lastName);
}

- (float) celciusToFahrenheit: (float) degree{
    return degree *1.8 + 32.0;
}

- (void) celciusToFahrenheit{
    NSLog(@"Do nothing");
}

- (float) celciusToFahrenheit2{
    return 10.1;
}

- (void) celciusToFahrenheit2: (NSNumber*) degree{
    float result = [degree floatValue] * 1.8 + 32.0;
    NSLog(@"Result = %2.1f", result);
}
@end
