//
//  TableViewController.m
//  Animation
//
//  Created by Mahmoud Mohamed on 23/03/2021.
//

#import "TableViewController.h"
#import "Movies.h"
#import <SDWebImage/SDWebImage.h>
@interface TableViewController ()
@property NSMutableArray *movies;
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    Movies *m1 = [Movies new];
    [m1 setMovieDetail:@"Dawn of the Planet of the Apes" :@"https://api.androidhive.info/json/movies/1.jpg" :@"2014"];
    
    Movies *m2 = [Movies new];
    [m2 setMovieDetail:@"District 9" :@"https://api.androidhive.info/json/movies/2.jpg" :@"2009"];
    
    Movies *m6 = [Movies new];
    [m6 setMovieDetail:@"Transformers: Age of Extinction" :@"https://api.androidhive.info/json/movies/3.jpg" :@"2014"];
    
    Movies *m3 = [Movies new];
    [m3 setMovieDetail:@"X-Men: Days of Future Past" :@"https://api.androidhive.info/json/movies/4.jpg" :@"2014"];
    
    Movies *m4 = [Movies new];
    [m4 setMovieDetail:@"The Machinist" :@"https://api.androidhive.info/json/movies/5.jpg" :@"2004"];
    
    Movies *m5 = [Movies new];
    [m5 setMovieDetail:@"The Last Samurai" :@"https://api.androidhive.info/json/movies/6.jpg" :@"2003"];
    
    _movies = [NSMutableArray arrayWithObjects:m1,m2,m3,m4,m5,m6, nil];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete implementation, return the number of rows
    return _movies.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    Movies *m = _movies[indexPath.row];
    
    cell.textLabel.text = ((Movies*)_movies[indexPath.row]).name;
    [cell.imageView sd_setImageWithURL:[NSURL URLWithString:m.image]
                 placeholderImage:[UIImage imageNamed:@"placeholder.png"]];
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
