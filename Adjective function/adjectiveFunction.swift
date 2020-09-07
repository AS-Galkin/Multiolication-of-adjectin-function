//
//  adjectiveFunction.swift
//  Adjective function
//
//  Created by Александр Галкин on 04.09.2020.
//  Copyright © 2020 ASGalkin. All rights reserved.
//

import Foundation

//MARK:- Create protocols

protocol Recurcive{
    func recursiveCalculate(leftValue: Int, rightValue: Int) -> Int
}

protocol Iterative {
    func iterativeCalculate(leftValue: Int, rightValue: Int) -> Int
}

class AdjectiveFunction: Recurcive, Iterative {
    private var leftValue: Int = 0
    private var rightValue: Int = 0
    var recursiveResult: Int = 0
    var iterativeResult: Int = 0
    
    init? (leftValue: String, rightValue: String) {
        if let x = Int(leftValue),
            let y = Int(rightValue) {
                self.leftValue = x
                self.rightValue = y
        } else {
            return nil
        }
        self.recursiveResult = recursiveCalculate(leftValue: self.leftValue, rightValue: self.rightValue)
        self.iterativeResult = iterativeCalculate(leftValue: self.leftValue, rightValue: self.rightValue)
    }
}

extension AdjectiveFunction {
    internal func recursiveCalculate (leftValue: Int, rightValue: Int) -> Int {
        var result: Int
        if leftValue == 0 || rightValue == 0 {
            return 0
        } else {
            result = leftValue + (recursiveCalculate(leftValue: leftValue, rightValue: rightValue - 1))
        }
        return result
    }
    
    internal func iterativeCalculate(leftValue: Int, rightValue: Int) -> Int {
        var result: Int = 0
        if leftValue != 0, rightValue != 0 {
            for _ in 1...rightValue {
                result += leftValue
            }
        } else { return 0 }
        return result
    }
}
