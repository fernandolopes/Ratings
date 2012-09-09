//
//  PlayerDetailsViewController.m
//  Ratings
//
//  Created by Fernando Lopes on 09/09/12.
//  Copyright (c) 2012 Fernando Lopes. All rights reserved.
//

#import "PlayerDetailsViewController.h"
#import "Player.h"

@interface PlayerDetailsViewController ()

@end

@implementation PlayerDetailsViewController {
    NSString *game;
}

@synthesize delegate;
@synthesize nameTextField;
@synthesize detailLabel;
@synthesize concluido;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
	if ((self = [super initWithCoder:aDecoder]))
	{
		//NSLog(@"init PlayerDetailsViewController");
        game = @"Chess";
	}
	return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.detailLabel.text = game;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [self setNameTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     */
    if (indexPath.section == 0)
		[self.nameTextField becomeFirstResponder];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
	if ([segue.identifier isEqualToString:@"PickGame"])
	{
		GamePickerViewController *gamePickerViewController =
        segue.destinationViewController;
		gamePickerViewController.delegate = self;
		gamePickerViewController.game = game;
	}
}

- (IBAction)cancel:(id)sender
{
	[self.delegate playerDetailsViewControllerDidCancel:self];
}
- (IBAction)done:(id)sender
{
    Player *player = [[Player alloc] init];
	player.name = self.nameTextField.text;
	player.game = game;
	player.rating = 1;
	[self.delegate playerDetailsViewController:self
                                  didAddPlayer:player];
}

-(IBAction)texto:(id)sender
{
    
    if([nameTextField.text length] == 0){
        concluido.enabled = NO;
    } else {
        concluido.enabled = YES;
    }
}

#pragma mark - GamePickerViewControllerDelegate

- (void)gamePickerViewController:
(GamePickerViewController *)controller
                   didSelectGame:(NSString *)theGame
{
	game = theGame;
	self.detailLabel.text = game;
	[self.navigationController popViewControllerAnimated:YES];
}

- (void)dealloc
{
	NSLog(@"dealloc PlayerDetailsViewController");
}
@end
