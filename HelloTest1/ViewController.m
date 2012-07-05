//
//  ViewController.m
//  HelloTest1
//
//  Created by Alejandro Asenjo on 6/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textField;
@synthesize label;
@synthesize name = _name;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setTextField:nil];
    [self setLabel:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

- (IBAction)changeGreeting:(id)sender {
    self.name = textField.text;
    NSLog(@"textField:%@\n", self.name);
    [label setText:[NSString stringWithFormat:@"Hello %@ my friend", self.name]];
}

- (BOOL) textFieldShouldReturn: (UITextField*) theTextField{
    [theTextField resignFirstResponder];
    return true;
}
@end
