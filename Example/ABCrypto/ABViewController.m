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
    
    NSString *hexKey = @"2034F6E32958647FDFF75D265B455EBF40C80E6D597092B3A802B3E5863F878C";
    NSString *plainText = @"Thank you Mr Warrender, Reinforcements have arrived! Send biscuits";
    
    NSData *plainData = [plainText dataUsingEncoding:NSUTF8StringEncoding];
//    NSData *encryptedData = [cryptor encodeAndPrintPlainText:plainData usingHexKey:hexKey hexIV:hexIV];
    NSData *encryptedData = [cryptor encryptData:plainData usingKey:hexKey];
    NSString *ENplainText = [encryptedData base64EncodedStringWithOptions:0];
    NSLog(@"En Data: %@", ENplainText);
    
    NSData *decryptedString = [cryptor decryptCipherData:encryptedData usingKey:hexKey];
    NSString *DEplainText = [[NSString alloc] initWithData:decryptedString encoding:NSUTF8StringEncoding];
    NSLog(@"DeC Data: %@", DEplainText);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
