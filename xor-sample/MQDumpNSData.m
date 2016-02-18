//
//  MQDumpNSData.m
//  xor-sample
//
//  Created by Masato Morita on 15-9-26.
//  Copyright (c) 2015年 Masato Morita. All rights reserved.
//

#import <Foundation/Foundation.h>

NSData* MQDumpNSData(NSString* path, off_t offset, size_t bytes)
{
    FILE *file = fopen([path UTF8String], "rb");
    if(file == NULL)
        return nil;
    
    fpos_t fsize = 0;
    fseeko(file, 0, SEEK_END);
    fgetpos(file, &fsize);
    
    fpos_t diff = fsize - offset;
    if (diff < bytes)
    {
        bytes = diff;
    }
    
    void *data = malloc(bytes);
    fseeko(file, offset, SEEK_SET);
    fread(data, 1, bytes, file);
    
    fclose(file);
    
    signed int *ptr = (signed int *) data;
    NSLog(@"%d", *ptr);
//    *ptr ^= 0b01010101;
    *ptr ^= 1195463236;
    
    NSLog(@"%d", *ptr);
    
    NSData *resultData = [NSData dataWithBytes:data length:bytes];
    
    free(data);
    
    return resultData;
}