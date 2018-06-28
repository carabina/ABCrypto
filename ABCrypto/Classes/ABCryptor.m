//
//  ABCryptor.m
//  MHCrypto
//
//  Created by Perayil, Abhilash (US - Bengaluru) on 6/26/18.
//

#import "ABCryptor.h"
#import "NSData+AES256Encryption.h"

@implementation ABCryptor

/* Method will encrypt the data and return the same.
 
 -parameter data : Data to be encrypted.
 -parameter key  : Key used for encryption
 */
- (NSData *)encryptData:(NSData *)data usingKey:(NSString *)key{
    NSData *encryptedPayload = [data encryptedDataWithKey:key];
    return encryptedPayload;
}

/* Method will decrypt the data and return the same.
 
 -parameter data : Data to be decrypted.
 -parameter key  : Key used for decryption
 */
- (NSData *)decryptCipherData:(NSData *)data usingKey:(NSString *)key{
    NSData *encryptedPayload = [data decryptedDataWithKey:key];
    return encryptedPayload;
}

@end
