//
//  ViewController.m
//  TableViewTest
//
//  Created by Paul John Parreno on 9/4/13.
//  Copyright (c) 2013 Paul John Parreno. All rights reserved.
//

#import "ViewController.h"
#import "DetailsViewController.h"

@interface ViewController ()
{
    NSArray *countryArray, *capitalArray;
}

@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    countryArray = [NSArray arrayWithObjects:@"Philippines", @"Singapore", @"China", @"Thailand", @"Malaysia", @"Indonesia", @"Japan", @"South Korea", @"Vietnam", @"India", nil];
    capitalArray = [NSArray arrayWithObjects:@"Manila", @"Singapore", @"Beijing", @"Bangkok", @"Kuala Lumpur", @"Jakarta", @"Tokyo", @"Incheon", @"Hanoi", @"New Delhi", nil];
    
    self.title = @"Countries";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [countryArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *reuseIdentifier = @"myCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    }
    
    [cell.textLabel setText:[countryArray objectAtIndex:indexPath.row]];
    [cell.detailTextLabel setText:[capitalArray objectAtIndex:indexPath.row]];
    [cell.imageView setImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@-01", [countryArray objectAtIndex:indexPath.row]]]];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    DetailsViewController *detailsVC = [[DetailsViewController alloc] initWithCountryName:[countryArray objectAtIndex:indexPath.row] capitalName:[capitalArray objectAtIndex:indexPath.row] andCountryImage:[UIImage imageNamed:[NSString stringWithFormat:@"%@-01", [countryArray objectAtIndex:indexPath.row]]]];
    [self.navigationController pushViewController:detailsVC animated:YES];
}

@end
