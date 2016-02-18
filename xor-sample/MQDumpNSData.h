//
//  MQDumpNSData.h
//  xor-sample
//
//  Created by Masato Morita on 15-9-26.
//  Copyright (c) 2015年 Masato Morita. All rights reserved.
//

#ifndef __xor_sample__MQDumpNSData__
#define __xor_sample__MQDumpNSData__

#import <Foundation/Foundation.h>
NSData* MQDumpNSData(NSString* path, off_t offset, size_t bytes);
#endif /* defined(__xor_sample__MQDumpNSData__) */
