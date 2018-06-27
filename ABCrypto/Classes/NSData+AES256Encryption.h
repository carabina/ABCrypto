//
//  NSData+AES256Encryption.h
//  MHCrypto
//
//  Created by Perayil, Abhilash (US - Bengaluru) on 6/26/18.
//

#import <Foundation/Foundation.h>

@interface NSData (AES256Encryption)
- (NSData *)encryptedDataWithHexKey:(NSString*)hexKey hexIV:(NSString *)hexIV;
- (NSData *)originalDataWithHexKey:(NSString*)hexKey hexIV:(NSString *)hexIV;
@end
