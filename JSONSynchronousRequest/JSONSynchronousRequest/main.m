//
//  main.m
//  JSONSynchronousRequest
//
//  Created by Chad Slater on 10/15/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
        // Prepare the link that is going to be used on the GET request
        NSURL * url = [[NSURL alloc] initWithString:@"http://api.nytimes.com/svc/books/v2/lists.json?list=hardcover-fiction&weeks-on-list=2&api-key=5dccb91cdc2998be790dcf899cb1f9a3:12:70001517"];
        
        // Prepare the request object
        NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url
                                                    cachePolicy:NSURLRequestReturnCacheDataElseLoad
                                                timeoutInterval:30];
        
        // Prepare the variables for the JSON response
        NSData *urlData;
        NSURLResponse *response;
        NSError *error;
        
        // Make synchronous request
        urlData = [NSURLConnection sendSynchronousRequest:urlRequest
                                        returningResponse:&response
                                                    error:&error];
        
        
        
        
        
        // Construct an Dictionary around the Data from the response
        NSDictionary    * object = [NSJSONSerialization
                                    JSONObjectWithData:urlData
                                    options:0
                                    error:&error];
        
        // Iterate through the object and print desired results
        if( error )
        {
            NSLog(@"%@", [error localizedDescription]);
        }
        else {
            NSArray *cat = object[@"results"];
            // Iterate through the object and print desired results
            //    NSArray *details = [object valueForKeyPath: @"results.book_details"];
            
            for ( NSDictionary *results in cat)
            {
                NSLog(@"----");
                NSLog(@"List name: %@", [results objectForKey: @"list_name"] );
                NSLog(@"Display name: %@", results[@"display_name"] );
                NSLog(@"Author: %@", [results valueForKeyPath: @"book_details.author"] );
                
                NSLog(@"----");
            }
            
           
        }
   
}
