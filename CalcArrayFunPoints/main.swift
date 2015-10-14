//
//  main.swift
//  CalcArrayFunPoints
//
//  Created by Weschler, Sabrina on 10/11/15.
//  Copyright (c) 2015 Weschler, Sabrina. All rights reserved.
//

import Foundation

// Adds the values
func add(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil{
        return num1! + num2!
    } else {
        return nil
    }
}

// Subtracts the values
func subtract(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil{
        return num1! - num2!
    } else {
        return nil
    }
}

// Multiplies the values
func multiply(num1: Int?, num2: Int?) -> Int? {
    if num1 != nil && num2 != nil{
        return num1! * num2!
    } else {
        return nil
    }
}

// Divides the values
func divide(num1: Int?, num2: Int?) -> Int? {
    if let numOne = num1, numTwo = num2 {
        return numOne / numTwo
    } else {
        return nil
    }
}

// Takes in the generic math operations created above and two numbers and returns the results
func operation(op: (Int?, Int?) -> Int?, num1: Int?, num2: Int?) -> Int? {
    if num1 == nil || num2 == nil {
        return nil
    } else {
        return op(num1!, num2!)
    }
}

// Adds the numbers in a array
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

// Multiples the numbers in an array
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

// Counts the numbers in an array
func count(numList: [Int]?) -> Int? {
    if numList == nil {
        return nil
    } else {
         return numList!.count
    }
}

// Averages the numbers in an array
func avg(numList: [Int]?) -> Int? {
    if numList != nil {
        return numList!.reduce(0, combine: +) / numList!.count
    } else {
        return nil
    }
}

// Takes an generic operation and an array and computes it
func genericOp(op: [Int]? -> Int?, numList: [Int]?) -> Int? {
    if numList == nil {
        return nil
    } else {
        return op(numList!)
    }
}

// Adds two tuples together
func addPoints(point1: (x: Int?, y: Int?)?, point2: (x: Int?, y: Int?)?) -> (Int, Int)? {
    if point1 != nil && point2 != nil && point1!.x != nil && point2!.x != nil
        && point1!.y != nil && point2!.y != nil {
            return (point1!.x! + point2!.x!, point1!.y! + point2!.y!)
    } else {
        return nil
    }
}

//Subtracts two tuples 
func subtractPoints(point1: (x: Int?, y: Int?)?, point2: (x: Int?, y: Int?)?) -> (Int, Int)? {
    if point1 != nil && point2 != nil && point1!.x != nil && point2!.x != nil
        && point1!.y != nil && point2!.y != nil {
        return (point1!.x! - point2!.x!, point1!.y! - point2!.y!)
    } else {
        return nil
    }
    
}

// Add two dictionaries together
func addPoints(point1: [String: Double]?, point2: [String: Double]?) -> (Double, Double)? {
    if point1 != nil && point2 != nil {
        if let point1X = point1!["x"], point1Y = point1!["y"], point2X = point2!["x"], point2Y = point2!["y"] {
            return (point1X + point2X, point1Y + point2Y)
        }
    }
    return nil
}

// Subtract two dictionaries
func subtractPoints(point1: [String: Double]?, point2: [String: Double]?) -> (Double, Double)? {
    if point1 != nil && point2 != nil {
        if let point1X = point1!["x"], point1Y = point1!["y"], point2X = point2!["x"], point2Y = point2!["y"] {
            return (point1X - point2X, point1Y - point2Y)

        }
    }
    return nil
}

println(add(1, 2)!) //3
println(add(nil, 2))
println(subtract(3, 1)!) //2
println(multiply(2, 2)!) //4
println(divide(5, 4)!) //1

println(operation(add, 5, 3)!) //8
println(operation(add, 5, nil))
println(operation(subtract, 5, 3)!) //2
println(operation(multiply, 5, 3)!) //15
println(operation(divide, 5, 3)!) //1

println(addArray([1, 2, 3, 4, 5])!) //15
println(addArray(nil))
println(multiplyArray([1, 2, 3])!) //6
println(count([1, 2, 4, 5])) //4
println(avg([1, 2, 3])!) //2

println(genericOp(avg, [1, 3])!) //2
println(genericOp(avg, nil))
println(genericOp(addArray, [1, 3])!) //4
println(genericOp(multiplyArray, [1, 3])!) //3
println(genericOp(count, [1, 3])!) //2

println(addPoints((1, 2), (3, 4))!) //(4,6)
println(subtractPoints((1, 2), (3, 4))!) //(-2, -2)

// Two dictionaries each with x and y key to test
let point1 = ["x": 2.0, "y": 2.0]
let point2 = ["x": 1.0, "y": 1.0]

//let x = addPoints(point1, point2)

println(addPoints(point1, point2)!) //(3.0, 3.0)
println(addPoints(point1, nil)) //nil
println(subtractPoints(point1, point2)!) //(1.0, 1.0)
println(subtractPoints(point1, nil)) //nil






