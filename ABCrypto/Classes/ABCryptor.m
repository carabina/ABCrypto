//
//  ABCryptor.m
//  MHCrypto
//
//  Created by Perayil, Abhilash (US - Bengaluru) on 6/26/18.
//

#import "ABCryptor.h"
#import "NSData+AES256Encryption.h"

@implementation ABCryptor
- (NSData *)decodeAndPrintCipherBase64Data:(NSData *)cipherText
                           usingHexKey:(NSString *)hexKey
                                 hexIV:(NSString *)hexIV
{
    NSAssert(cipherText != nil, @"Couldn't base64 decode cipher text");
    NSData *decryptedPayload = [cipherText originalDataWithHexKey:hexKey hexIV:hexIV];
    return decryptedPayload;
}

- (NSData *)encodeAndPrintPlainText:(NSData *)plainData
                    usingHexKey:(NSString *)hexKey
                          hexIV:(NSString *)hexIV
{
    NSData *encryptedPayload = [plainData encryptedDataWithHexKey:hexKey hexIV:hexIV];
    return encryptedPayload;
}

@end
