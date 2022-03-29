// Fibonacci
// Time O(2^n)
// Space O(n)
// Recursive
//func fib(_ n: Int)->Int{
//    return n<=2 ? 1 : fib(n-1)+fib(n-2)
//}
//fib(7)

// fib(50) will take forever - 2^50 times

//COPLEXITY TEST

//func dib(_ n:Int)->Int{
//
//    return n <= 1 ? 1 : dib(n-1) + dib(n-1)
//}

/*
 heign is N - is exact number of elements we use in stack
 Time O(2^n)
 Space O(n)
 1               5     1row
 *2             / \
                4   4    2rows
                /\   /\
 *2           3  3  3  3   4rows
              /\ /\  /\ /\
             4 4 4 4 4 4 4 4  8 rows ---->> 2^n
 2^n
 */




// FIB Memoization
//=============================================================================


// Time O(n)
// Space O(n)

//var dp = [Int: Int]()
//
//func fibMem(_ n: Int)->Int{
//    if dp.keys.contains(n){
//        print("Boom")
//        return dp[n]!
//    }
//    dp[n] = n<=2 ? 1 : fibMem(n-1)+fibMem(n-2)
//    return dp[n]!
//}
//
//fibMem(8)






// gridTraveler - ways to get to bottom right
//=============================================================================
// height (m+n)
// Time O( 2^(n+m) )
// Space O(n+m)

// Recuresive
//func gridTraveller(_ m: Int, _ n: Int)->Int{
//    if m==1 && n==1 {
//        return 1
//    }
//    if m==0 || n==0 {
//        return 0
//    }
//
//    return gridTraveller(m-1, n)+gridTraveller(m, n-1)
//}
//
//gridTraveller(10, 10)



//Memo

// height (m+n)
// Time O( m*n )
// Space O(n+m)

//var dp = [[Int]:Int]()
//func gridTravellerMemo(_ m: Int, _ n: Int)->Int{
//    // if param is in the memo
//
//    if dp.keys.contains([m,n]){
//        return dp[[m,n]]!
//    }
//
//    if m==1 && n==1 {
//        return 1
//    }
//    if m==0 || n==0 {
//        return 0
//    }
//
//    dp[[m,n]] = gridTravellerMemo(m-1, n)+gridTravellerMemo(m, n-1)
////    print(dp)
//    return dp[[m,n]]!
//}
//
//gridTravellerMemo(18, 18)

//
//let dict = [[2,3]:1, [2,4]:3]
//
//dict[[2,3]]









// canSum - if array numbers can sum up to a target number
//=============================================================================
// Height (m)
// Time O(n^m)
// Space O(m)

//func canSum(_ arr:[Int],_ target:Int)->Bool{
//    if target == 0{
//        return true
//    }
//
//    if target<0{
//        return false
//    }
//
//    for item in arr{
//        if canSum(arr, target-item) == true{
//            return true
//        }
//    }
//
//    return false
//}
//
//canSum([5,3,4,7], 7) // true
//canSum([2,4], 7) //false
//canSum([2,4], 300) //false






// canSumMemo - if array numbers can sum up to a target number
//=============================================================================
// Height (m)
// Time O(m*n)
// Space O(m)

//
//
//var dp = [Int:Bool]()
//func canSumMemo(_ arr:[Int],_ target:Int)->Bool{
//    if target == 0{
//        return true
//    }
//
//    if target<0{
//        return false
//    }
//
//    if dp.keys.contains(target){
//        return dp[target]!
//    }
//
//    for item in arr{
//        if canSumMemo(arr, target-item) == true{
//            dp[target] = true// we do not need that though
//            return true
//        }
//    }
//    dp[target] = false
//    print(dp)
//    return false
//}
//
////canSumMemo([5,3,4,7], 7) // true
//canSumMemo([2,4], 7) //false




// howSum - if array numbers can sum up to a target number, return list of these numbers(any)
//=============================================================================

// Height (m)
// Time O(n^m)
// Space O(m)

//
//func howSum(_ arr: [Int], _ target: Int)->[Int]?{
//    if target == 0{
//        return []
//    }
//
//    if target < 0 {
//        return nil
//    }
//
//    for item in arr{
//        print("BOOM",target, item, target-item)
//     var result = howSum(arr, target-item)
//        print("result",result)
//        //
//        if result != nil{
//            print("append",item)
//            print("")
//            result!.append(item)
//            return result!
//        }
//    }
//    return nil
//}
//
//howSum([5,4,3,7], 7) // [7] or [3,4]





// howSumMemo - if array numbers can sum up to a target number, return list of these numbers(any)
//=============================================================================

// Height (m)
// Time O(n*m)
// Space O(m)

//
//
//var dp = [Int:[Int]?]()
//func howSumMemo(_ arr: [Int], _ target: Int)->[Int]?{
//    print(target, dp)
//
//    if dp.keys.contains(target){
//        print(target,"BOOM")
//        return dp[target]!
//    }
//
//    if target == 0{
//        return []
//    }
//
//    if target < 0 {
//        return nil
//    }
//
//
//
//
//    for item in arr{
//        var result = howSumMemo(arr, target-item)
//        print("result",result)
//        if result != nil{
//            result!.append(item)
//            print(result,"YO")
//            dp[target] = result!
//            print(dp)
//            return dp[target]!
//        }
//    }
//
//    dp[target] = nil as [Int]?
//    return nil
//}

//howSumMemo([5,4,3,7], 7) // [7] or [3,4]

//howSumMemo([14,7], 300)

//howSumMemo([2,4], 7)





//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!===========

// Add NIL to Dict
//var dp:[Int:[Int]?] = [3: [2,3], 4:[6,5]]
//
// dp.updateValue(nil, forKey: 3)
//
////OR
// dp[3] = nil as [Int]?
//

//===========





//// bestSum - return shortest sum up to target
////=============================================================================
//
//// n = arr, m = target
//// Height (n)
//// Time O(n^m*m)
//// Space O(m^2) //maintaining 2 arrays
//
//func bestSum(_ arr: [Int], _ target: Int) -> [Int]?{
//
//    if target == 0{
//        return []
//    }
//
//    if target < 0{
//        return nil
//    }
//
//    var shortComb: [Int]? = nil
//    print("SET TO NIL ==========================", target)
//
//    for item in arr{
//
//        var result = bestSum(arr, target-item)
//
//        if result != nil{
//
//            result!.append(item)
//            guard let combination = result else{
//                return nil
//            }
////            if the combination is shorter, then update the shortest
//
//            print(combination, shortComb)
//            if shortComb == nil {
//                shortComb = combination
//            }else if combination.count < shortComb!.count{
//                shortComb = combination
//            }
//
//        }
//
//
//      print("FOR EXIT, shortComb", shortComb, result, target, item)
//
//    }
//
//    print("FINAL EXIT====================================================")
//    return shortComb
//}
//
//print(bestSum([4,3,7], 7))



// bestSumMemo - return shortest sum up to target
//=============================================================================

// n = arr, m = target
// Time O(n^2*m)
// Space O(m^2) //maintaining 2 arrays

//
//var dp = [Int: [Int]?]()
//func bestSumMemo(_ arr: [Int], _ target: Int) -> [Int]?{
//
//    if dp.keys.contains(target){
//        return dp[target]!
//    }
//
//    if target == 0{
//        return []
//    }
//
//    if target < 0{
//        return nil
//    }
//
//    var shortComb: [Int]? = nil
//
//    for item in arr{
//
//        var result = bestSumMemo(arr, target-item)
//
//        if result != nil{
//
//            result!.append(item)
//            guard let combination = result else{
//                return nil
//            }
//
//
//
////            if the combination is shorter, then update the shortest
//
//            print(combination, shortComb)
//            if shortComb == nil {
//                shortComb = combination
//            }else if combination.count < shortComb!.count{
//                shortComb = combination
//            }
//        }
//    }
//
//    dp[target] = shortComb
//
//    return shortComb
//}
//
//print(bestSumMemo([4,3,7], 7))





// canConstruct - return true if word can be constructed
//=============================================================================

// n = arr, m = target
// height = m
// Time O(n^m*m) //(*m from slicing)
// Space O(m^2) //maintaining 2 arrays


//
//
//
//extension String {
//    func deletingPrefix(_ prefix: String) -> String {
//        guard self.hasPrefix(prefix) else { return self }
//        return String(self.dropFirst(prefix.count))
//    }
//}
//
//
//
//func canConstruct(_ arr:[String], _ target: String)->Bool{
//
//    if target == ""{
//        return true
//    }
//
//    for item in arr{
//      if target.hasPrefix(item){
//        if canConstruct(arr, target.deletingPrefix(item)) == true{
//            return true
//        }
//      }
//    }
//
//    return false
//}
//
//
//print(canConstruct(["def","abcd"], "abcdef"))
//print(canConstruct(["ab","abc","cd", "def","abcd"], "abcdef"))





// canConstructMemo - return true if word can be constructed
//=============================================================================

// n = arr, m = target
// height = m
// Time O(n*m^2) //(*m from slicing)
// Space O(m^2) //maintaining 2 arrays




//
//extension String {
//    func deletingPrefix(_ prefix: String) -> String {
//        guard self.hasPrefix(prefix) else { return self }
//        return String(self.dropFirst(prefix.count))
//    }
//}
//
//
//var dp = [String:Bool]()
//
//func canConstructMemo(_ arr:[String], _ target: String)->Bool{
//
//    if dp.keys.contains(target){
//        return dp[target]!
//    }
//
//    if target == ""{
//        return true
//    }
//
//    for item in arr{
//      if target.hasPrefix(item){
//        if canConstructMemo(arr, target.deletingPrefix(item)) == true{
//            dp[target]! = true
//            return true
//        }
//      }
//    }
//
//
//    dp[target]! = false
//
//    return false
//}
//
//
//print(canConstructMemo(["def","abcd"], "abcdef"))
//print(canConstructMemo(["ab","abc","cd", "def","abcd"], "abcdef"))





// countConstruct - return count of way to construct word
//=============================================================================

// n = arr, m = target
// height = m
// Time O(n^m*m) //(*m from slicing)
// Space O(m^2) //maintaining 2 arrays


//extension String {
//    func deletingPrefix(_ prefix: String) -> String {
//        guard self.hasPrefix(prefix) else { return self }
//        return String(self.dropFirst(prefix.count))
//    }
//}
//
//
//var dp = [String: Int]()
//func countConstruct(_ arr:[String], _ target: String)->Int{
//
//    if dp.keys.contains(target){
//        return dp[target]!
//    }
//
//    if target == ""{
//        return 1
//    }
//
//    var count = 0
//    for item in arr{
//      if target.hasPrefix(item){
//         count += countConstruct(arr, target.deletingPrefix(item))
//      }
//    }
//
//    dp[target] = count
//    return  count
//}
//
//
//print(countConstruct(["def","abcd"], "abcdef")) //0
//print(countConstruct(["ab","abc","cd", "def","abcd"], "abcdef"))//1
//print(countConstruct(["purp","p","ur","le","purpl"], "purple")) //2




// countConstructMemo - return count of way to construct word
//=============================================================================

// n = arr, m = target
// height = m
// Time O(n^m*m) //(*m from slicing)
// Space O(m^2) //maintaining 2 arrays


//
//
//
//extension String {
//    func deletingPrefix(_ prefix: String) -> String {
//        guard self.hasPrefix(prefix) else { return self }
//        return String(self.dropFirst(prefix.count))
//    }
//}
//
//
//var dp = [String: Int]()
//func countConstructMemo(_ arr:[String], _ target: String)->Int{
//
//    if dp.keys.contains(target){
//        return dp[target]!
//    }
//
//    if target == ""{
//        return 1
//    }
//
//    var count = 0
//    for item in arr{
//      if target.hasPrefix(item){
//         count += countConstructMemo(arr, target.deletingPrefix(item))
//      }
//    }
//
//    dp[target] = count
//    return  count
//}
//
//
//
//print(countConstructMemo(["def","abcd"], "abcdef")) //0
//print(countConstructMemo(["ab","abc","cd", "def","abcd"], "abcdef"))//1
//print(countConstructMemo(["purp","p","ur","le","purpl"], "purple")) //2
//






// allConstruct - return all possible way to create array
//=============================================================================

// n = arr, m = target
// height = m
// Time O(n^m) //(*m from slicing)
// Space O(m)

//
//
//
//

//
//
//func allConstruct(_ arr:[String], _ target: String)->[[String]]{
//
//
//    if target == ""{
//        return [[]]
//    }
//
//    var result = [[String]]()
//
//    for item in arr{
//        if target.hasPrefix(item){
//            let arrWay = allConstruct(arr, target.deletingPrefix(item))
//            let targetWay = arrWay.map{el -> [String] in
//                var el = el
//                el.insert(item, at: 0)
//                return el
//            }
//            result+=targetWay
//        }
//    }
//    return result
//}
//
//
//
//
////print(allConstruct(["def","abcd"], "abcdef")) //0
//print(allConstruct(["ab","abc","cd", "def","abcd"], "abcdef"))//1
////print(allConstruct(["purp","p","ur","le","purpl"], "purple")) //2
//
//



// allConstructMemo - return all possible way to create array
//=============================================================================

// n = arr, m = target
// height = m
// Time O(n*m) //(*m from slicing)
// Space O(m) //maintaining 2 arrays






extension String {
    func deletingPrefix(_ prefix: String) -> String {
        guard self.hasPrefix(prefix) else { return self }
        return String(self.dropFirst(prefix.count))
    }
}


var dp = [String:[[String]]]()
func allConstructMemo(_ arr:[String], _ target: String)->[[String]]{
    
    if dp.keys.contains(target){
        
        return dp[target]!
    }
    
    if target == ""{
        return [[]]
    }
    
    var result = [[String]]()
    
    for item in arr{
        if target.hasPrefix(item){
            let arrWay = allConstructMemo(arr, target.deletingPrefix(item))
            let targetWay = arrWay.map{el -> [String] in
                var el = el
                el.insert(item, at: 0)
                return el
            }
            result+=targetWay
        }
    }
    
    dp[target] = result
    return result
}




//print(allConstructMemo(["def","abcd"], "abcdef")) //0
//print(allConstructMemo(["ab","abc","cd", "def","abcd"], "abcdef"))//1
print(allConstructMemo(["purp","p","ur","le","purpl"], "purple")) //2

