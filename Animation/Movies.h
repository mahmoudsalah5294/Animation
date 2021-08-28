//
//  Movies.h
//  Animation
//
//  Created by Mahmoud Mohamed on 23/03/2021.
//

#ifndef Movies_h
#define Movies_h


#endif /* Movies_h */
#import <Foundation/Foundation.h>

@interface Movies:NSObject

@property NSString *name;
@property NSString *image;
@property NSString *releaseDate;

-(void) setMovieDetail:(NSString*)n:(NSString*)i:(NSString*)r;
@end
