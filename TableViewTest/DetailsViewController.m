//
//  DetailsViewController.m
//  TableViewTest
//
//  Created by Paul John Parreno on 9/4/13.
//  Copyright (c) 2013 Paul John Parreno. All rights reserved.
//

#import "DetailsViewController.h"

@interface DetailsViewController ()
{
    NSString *countryName, *capitalName;
    UIImage *countryImage;
}

@end

@implementation DetailsViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithCountryName:(NSString *)pCountryName capitalName:(NSString *)pCapitalName andCountryImage:(UIImage *)pCountryImage
{
    self = [super init];
    if(self != nil)
    {
        countryName = pCountryName;
        capitalName = pCapitalName;
        countryImage = pCountryImage;
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.title = @"Country Details";
    
    [self.countryLabel setText:[NSString stringWithFormat:@"Country: %@", countryName]];
    [self.capitalLabel setText:[NSString stringWithFormat:@"Capital: %@", capitalName]];
    [self.countryImage setImage:countryImage];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark User Defined Methods

-(void)didTapShowActionSheetControlButton:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc] initWithTitle:@"My ActionSheet" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Cancel" otherButtonTitles:@"Action 1", @"Action 2", nil];
    [actionSheet showInView:self.view];
}

- (void)didTapShowAlertViewButton:(id)sender
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Hello Alert!" message:@"This is an Alert View!" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:@"Do Something?!",nil];
    
    [alertView show];
    
    
}

#pragma mark UIAlertViewDelegate

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"Alert View Button at index %d was tapped!", buttonIndex);
    
    switch(buttonIndex)
{
    case 0:
    {
        NSLog(@"Cancel button was tapped!");
        break;
    }
     
    case 1:
    {
        NSLog(@"Do Something button was tapped!");
        break;
    }
    default:
        break;
}

}

#pragma mark UIActionSheetDelegate

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    NSLog(@"ActionSheet Button at index %d was tapped!", buttonIndex);
    
    switch(buttonIndex)
    {
        case 0:
        {
            NSLog(@"Destructive button was tapped!");
            break;
        }
            
        case 3:
        {
            NSLog(@"Cancel button was tapped!");
            break;
        }
        default:
        {
            NSLog(@"Just some action button...");
             break;
        }
           
    }

}


@end
