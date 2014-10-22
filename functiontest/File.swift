//
//  File.swift
//  functiontest
//
//  Created by Chad Slater on 9/23/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//

import Foundation

func add(anInt:Int, aDouble:Double) ->(Double, Bool){
    return (Double(anInt) + aDouble, true)
}