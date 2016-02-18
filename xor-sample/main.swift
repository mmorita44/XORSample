//
//  main.swift
//  xor-sample
//
//  Created by Masato Morita on 15-9-25.
//  Copyright (c) 2015年 Masato Morita. All rights reserved.
//

import Foundation

print("Hello, World!\n")

let inPath = "\(NSHomeDirectory())/10_Dev/xor-sample.in.txt"

let outPath = "\(NSHomeDirectory())/10_Dev/xor-sample.out.txt"


var data = NSData(contentsOfFile: inPath)

var length: Int = data!.length

var resultData = MQDumpNSData(inPath as NSString, 0, UInt(length))

resultData!.writeToFile(outPath, atomically: false)
