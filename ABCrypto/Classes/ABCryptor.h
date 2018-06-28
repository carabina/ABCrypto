//
//  ABCryptor.h
//  MHCrypto
//
//  Created by Perayil, Abhilash (US - Bengaluru) on 6/26/18.
//

#import <Foundation/Foundation.h>

@interface ABCryptor : NSObject
- (NSData *)encryptData:(NSData *)data usingKey:(NSString *)key;
- (NSData *)decryptCipherData:(NSData *)data usingKey:(NSString *)key;
@end
