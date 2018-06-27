//
//  ABCryptor.h
//  MHCrypto
//
//  Created by Perayil, Abhilash (US - Bengaluru) on 6/26/18.
//

#import <Foundation/Foundation.h>

@interface ABCryptor : NSObject
- (NSData *)decodeAndPrintCipherBase64Data:(NSData *)cipherText
                               usingHexKey:(NSString *)hexKey
                                     hexIV:(NSString *)hexIV;
- (NSData *)encodeAndPrintPlainText:(NSData *)plainData
                        usingHexKey:(NSString *)hexKey
                              hexIV:(NSString *)hexIV;

@end
