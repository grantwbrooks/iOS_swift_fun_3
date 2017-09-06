//: Playground - noun: a place where people can play

import UIKit

// Part 1:
func numbToArray() -> [Int] {
    var arr = [Int]()
    for i in 1...255 {
        arr.append(i)
    }
    print(arr)
    return arr
    
//    var swap1: Int = Int(arc4random_uniform(255))
//    var swap2: Int = Int(arc4random_uniform(255))
//    var temp = Int()
//    temp = arr[swap1]
//    arr[swap1] = arr[swap2]
//    arr[swap2] = temp
//    print(arr)
}

var x = numbToArray()

// Part 2:

func swaparray(arr: inout [Int]) -> [Int]{
    let swap1: Int = Int(arc4random_uniform(UInt32(arr.count)))
    let swap2: Int = Int(arc4random_uniform(UInt32(arr.count)))
    var temp = Int()
    temp = arr[swap1]
    arr[swap1] = arr[swap2]
    arr[swap2] = temp
//    print(arr)
    return arr
}

//swaparray(arr: &x)

// Part 3:

func shuffle(arr: inout [Int]) -> [Int] {
    for _ in 1...100{
        swaparray(arr: &arr)
    }
    print(arr)
    return arr
}

var shuffler = shuffle(arr: &x)

// Part 4:

func removenumb(arr: inout [Int]) {
    var spot = Int()
    for i in 1..<arr.count {
        if arr[i] == 42 {
            print(i)
            spot = i
            print("We found the answer to the Ultimate Question of Life, the Universe, and Everything at index \(spot)")
        }
    }
    arr.remove(at: spot)
    print(arr)
}

removenumb(arr: &shuffler)

