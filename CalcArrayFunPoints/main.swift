//
//  main.swift
//  CalcArrayFunPoints
//
//  Created by Weschler, Sabrina on 10/11/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

func add(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil{
        return num1! + num2!
    } else {
        return nil
    }
}

func subtract(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil{
        return num1! - num2!
    } else {
        return nil
    }
}

func multiply(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil{
        return num1! * num2!
    } else {
        return nil
    }
}

func divide(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil{
        //ask: Int(round(Double(num1!) / Double(num2!))?
        return num1! / num2!
    } else {
        return nil
    }
}

func operation(op: (Int?, Int?) -> Int?, num1: Int?, num2: Int?) -> Int? {
    if num1 == nil || num2 == nil {
        return nil
    } else {
        return op(num1!, num2!)
    }
}

func addArray(numList: [Int]?) -> Int? {
    var total = 0
    if numList == nil {
        return nil
    } else {
        for num in numList! {
            total += num
        }
        return total
    }
}

func multiplyArray(numList: [Int]?) -> Int? {
    var total = 1
    if numList == nil {
        return nil
    } else {
        for num in numList! {
            total *= num
        }
        return total
    }
}

func count(numList: [Int]?) -> Int? {
    if numList == nil {
        return nil
    } else {
         return numList!.count
    }
}

func avg(numList: [Int]?) -> Int? {
    if numList != nil {
        return numList!.reduce(0, combine: +) / numList!.count
    } else {
        return nil
    }
//    var sum = 0
//    if numList == nil {
//        return nil
//    } else {
//        for num in numList! {
//            sum += num
//        }
//        return sum / (numList!.count)
//    }
}

func genericOp(op: [Int]? -> Int?, numList: [Int]?) -> Int? {
    if numList == nil {
        return nil
    } else {
        return op(numList!)
    }
}

func addPoints(point1: (x: Int?, y: Int?)?, point2: (x: Int?, y: Int?)?) -> (Int, Int)? {
    if point1 != nil && point2 != nil && point1!.x != nil && point2!.x != nil
        && point1!.y != nil && point2!.y != nil {
            return (point1!.x! + point2!.x!, point1!.y! + point2!.y!)
    } else {
        return nil
    }
}

func subtractPoints(point1: (x: Int?, y: Int?)?, point2: (x: Int?, y: Int?)?) -> (Int, Int)? {
    if point1 != nil && point2 != nil && point1!.x != nil && point2!.x != nil
        && point1!.y != nil && point2!.y != nil {
        return (point1!.x! - point2!.x!, point1!.y! - point2!.y!)
    } else {
        return nil
    }
    
}


//func addPointsDict(Dict1: [x: Int, y: Int]...) -> Dictionary) {
//    
//}


//println(operation(add, 5, 3)!)
//println(divide(5, 3)!)
//
//println(addArray([1, 2, 3, 4, 5])!)
//println(multiplyArray([1, 2, 3])!)
//println(count([1, 2, 4, 5]))
println(avg([1, 2, 3])!)

//println(genericOp(avg, [1, 2])!)
//println(addPoints((1, 2), (3, 4))!)

