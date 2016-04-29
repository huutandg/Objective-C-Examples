//
//  DemoSelector.m
//  ObjCExamples
//
//  Created by Tan on 4/29/16.
//  Copyright © 2016 Tan. All rights reserved.
//

#import "DemoSelector.h"

@interface DemoSelector ()
@property (weak, nonatomic) IBOutlet UISlider *slider;

@end

@implementation DemoSelector

- (void)viewDidLoad {
    [super viewDidLoad];
    [self performSelector:@selector(hideSlider) withObject:nil afterDelay:2];
}
- (IBAction)onCrunchData:(id)sender {
    //[self performSelectorInBackground:@selector(doCruchData) withObject:nil];
    //[self performSelectorOnMainThread:@selector(doCruchData) withObject:nil waitUntilDone:true];
    [self performSelectorInBackground:@selector(processData:) withObject:@{@"apple": @"táo", @"lemon":@"chanh"}];
}
- (void) doCruchData{
    [NSThread sleepForTimeInterval:2];
}
- (void) hideSlider{
    self.slider.hidden = true;
}
- (void) processData: (NSDictionary*) data{
    for (NSString* key in [data allKeys]) {
        NSLog(@"%@ - %@", key, [data valueForKey:key]);
    }
}
@end
