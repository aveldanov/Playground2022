/*
 Challenge 3
 
 Define a function named map with two generic type parameters, T and U. The function takes two arguments - array of type [T], and transformation of type (T) -> U. The function returns an array of type U.
 
 The goal of the function is to apply the transformation operation on the array passed in as argument to return a new array containing the values transformed. For example given the array [1,2,3,4,5] as first argument, and a square function as the transformation argument, the result should be [1, 4, 9, 16, 25].
 */
//file:///Users/aveldanov/Downloads/make_an_app/make_an_app.html

import UIKit

// Enter code below
//ME:

let arr = [1,2,3,4,5]
func map<T,U>(_ arr:[T], _ transform:(T)->U)->[U]{
    
   
//    return arr.map{transform($0)}
    
    
    return arr.map{transform($0)}
    
}


//let result = map(arr) {$0*$0}
//
//let res = map(arr) { tr in
//    tr*tr
//}

let res = map(arr) { tr in
    tr*tr
}







/*


    var arr = [1,2,3,4,5]
    func map<T,U>(_ array:[T],_ trans:(T)->U)->[U]{
//        var result = [U]()
//        for i in array{
//            result.append(trans(i))
//        }
//        return result
        
        return array.map{trans($0)}
    }




let res = map(arr){$0*$0}
print(res)



*/
