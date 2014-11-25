//
//  Backgroundprocess.swift
//  ParallelProcessing
//
//  Created by Chad Slater on 11/22/14.
//  Copyright (c) 2014 Chad Slater. All rights reserved.
//



import Foundation
//inherit from NSOperation


class BackGroundProcess:NSOperation{
    //override NSOperation's void main(void) method
    override func main() -> (){
        println("hello from background")
}

}