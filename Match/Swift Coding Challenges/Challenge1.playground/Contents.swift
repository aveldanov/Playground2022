/*
 Challenge 1
 
 Define a function, named largest, with a generic type parameter, T. The function takes an array of type T as its first argument. Give this argument an external name of in. The return type of the function is optional T. Given an array the function should return the largest value in the array. For example, calling largest(in: [1,2,3]) should return 3. To make this work, you'll need to constrain the generic type T to conform to Comparable.
 */

import UIKit
//

let arrInt = ["b", "c" , "d", "a","h","b"]
let arr = [1,2,3, 7,2]
let arr2 = [Int]()

func largest<T: Comparable>(in arr: [T])->T?{
    
    
    
    return arr ?? arr.sorted{$0 > $1}[0]
}



largest(in: arr2)














//// Enter code below
//let arrInt = ["b", "c" , "d", "a"]
//
//func largest<T: Comparable>(in arr: [T])->T?{
//    return arr.count == 0 ? nil : arr.sorted{$0 > $1}[0]
//}
//let result = largest(in: arrInt)
//print(result)



