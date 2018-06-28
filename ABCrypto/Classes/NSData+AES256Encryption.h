//
//  NSData+AES256Encryption.h
//  MHCrypto
//
//  Created by Perayil, Abhilash (US - Bengaluru) on 6/26/18.
//

#import <Foundation/Foundation.h>

@interface NSData (AES256Encryption)
- (NSData *)encryptedDataWithKey:(NSData *)key;
- (NSData *)decryptedDataWithKey:(NSData *)key;
@end
