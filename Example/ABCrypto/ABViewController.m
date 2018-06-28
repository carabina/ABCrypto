//
//  ABViewController.m
//  ABCrypto
//
//  Created by abhilashpnayar on 06/27/2018.
//  Copyright (c) 2018 abhilashpnayar. All rights reserved.
//

#import "ABViewController.h"
#import "ABCryptor.h"

@interface ABViewController ()

@end

@implementation ABViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    ABCryptor *cryptor = [[ABCryptor alloc] init];
    
    NSMutableData *key = [NSMutableData dataWithLength:64];
    int result = SecRandomCopyBytes(kSecRandomDefault, 64, key.mutableBytes);
    if (result == 0){
        NSString *plainText = @"Thank you Mr Warrender, Reinforcements have arrived! Send biscuits";
        NSData *plainData = [plainText dataUsingEncoding:NSUTF8StringEncoding];
        
        NSData *encryptedData = [cryptor encryptData:plainData usingKey:[NSData dataWithData:key]];
        NSString *ENplainText = [encryptedData base64EncodedStringWithOptions:0];
        NSLog(@"En Data: %@", ENplainText);
        
        NSData *decryptedString = [cryptor decryptCipherData:encryptedData usingKey:[NSData dataWithData:key]];
        NSString *DEplainText = [[NSString alloc] initWithData:decryptedString encoding:NSUTF8StringEncoding];
        NSLog(@"DeC Data: %@", DEplainText);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
