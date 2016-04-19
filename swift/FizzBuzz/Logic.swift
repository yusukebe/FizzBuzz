//
//  Logic.swift
//  FizzBuzz
//
//  Created by Yusuke Wada on 2016/04/19.
//  Copyright © 2016年 Yusuke Wada. All rights reserved.
//

import Foundation

class Logic {
    func fizzbuzz(i:Int) -> String {
        if(i % 3 == 0) {
            if(i % 5 == 0) {
                return "FizzBuzz"
            }
            return "Fizz"
        }else if(i % 5 == 0){
            return "Buzz"
        }
        return String(i)
    }
}
