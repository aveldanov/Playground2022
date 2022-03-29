
// Fib - fibbonacci, tabulation
//==============================================================
// Time O(n)
// Space O(n)


//func fib(_ n: Int)->Int{
//
//  var dp:[Int] = Array(repeating: 0, count: n+1)
//
//
//  dp[1] = 1
//
//  for i in 2...n{
//
//
//    dp[i] = dp[i-1]+dp[i-2]
//    print(dp)
//  }
//
//
//
//    return dp[n]
//}
//
//
//print(fib(21))




// gridTraveller - number of ways to get to grid
//==============================================================
// Time O(n*m)
// Space O(n*m)

//
//
//func gridTraveller(_ n: Int, _ m: Int)->Int{
//
//
//    var dp = Array(repeating: Array(repeating: 0, count: m+1), count: n+1)
//
//    dp[0][0] = 0
//    dp[1][1] = 1
//
//                // print(dp)
//
//    for i in 0...m{
//        for j in 0...n{
//
//         if i+1 <= n {
//
//           dp[i+1][j]+=dp[i][j]
//
//         }
//
//          if j+1 <= n{
//                dp[i][j+1]+=dp[i][j]
//
//          }
//
//            print(dp)
//        }
//    }
//
//
//    return dp[m][n]
//
//}
//
//
//print(gridTraveller(3, 3))





// canSum - return BOOL if possible to build target sum
//==============================================================
// Time O(n*m)
// Space O(m)




//canSum([5,3,4,7], 7) // true

//
//func canSum(_ arr: [Int], _ target: Int)->Bool{
//
//    var dp = Array(repeating: false, count: target+1)
//    dp[0] = true
//
//    for i in 0...target{
//
//        if dp[i] == true{
//
//            for item in arr where i+item <= target{
//                // if we can build sum for i==0 then we can build for any item in arr 5,3,4,7
//                print(item,i)
//                dp[i+item] = true
//
//            }
//
//        }
//
//    }
//
//    print(dp)
//
//    return dp[target]
//
//}
//canSum([5,3,4,7], 7) // true
////canSum([2,4], 7) // false



// howSum - return [Int] if possible to build target sum
//==============================================================
// Time O(n*m*m) (say array of all "1")
// Space O(m*m)  [[1,1,1,1,1,1,1], ..... ]


//
//func howSum(_ arr: [Int], _ target: Int)->[Int]?{
//
//    var dp = Array<[Int]?>(repeating: nil, count: target+1)
//
//    dp[0] = [Int]()
//
//    for i in 0...target{
//        if dp[i] != nil{
//            for item in arr where i+item<=target{
//                dp[i+item] = dp[i]
//                dp[i+item]?.append(item)
//            }
//        }
//    }
//    return dp[target]!
//}
//howSum([5,3,4,7], 7) // [3,4]




// bestSum - return [Int] if possible shortest sum to build target sum
//==============================================================
// Time O(n*m*m)
// Space O(m*m)
//
//
//func bestSum(_ arr: [Int],_ target: Int)->[Int]?{
//
//    var dp = Array<[Int]?>(repeating: nil, count: target+1)
//
//    dp[0] = [Int]()
//    print(dp)
//
//    var shorComb: [Int]? = nil
//    for i in 0...target{
//        if dp[i] != nil{
//            for item in arr where item+i<=target{
//                var comb = dp[i]
//                comb?.append(item)
//                if dp[i+item] == nil{
//                    dp[i+item] = comb
//                } else if comb!.count < dp[i+item]!.count{
//                    dp[i+item] = comb
//                }
//            }
//        }
//    }
//    print(dp)
//    return dp[target]
//}
//
//
//bestSum([2,3,5], 8) // [3,5]






// canConstruct - return BOOL if can construct string target
//==============================================================
// Time O(n*m*m)
// Space O(m)

//
//
//func canConstruct(_ arr: [String], _ target: String)->Bool{
//
//    var dp = Array(repeating: false, count: target.count+1)
//    dp[0] = true
//    print(dp)
//
//    for i in 0...target.count{
//        if dp[i] == true{
//            for item in arr where item.count+i<=target.count{
//                if target.dropFirst(i).prefix(i+item.count).hasPrefix(item){
//                    print(dp[i],item)
//                    dp[i+item.count] = true
//                }
//            }
//        }
//    }
//    print(dp)
//    return dp[target.count]
//}
//
//
//canConstruct(["ab","abc","cd", "def","abcd"], "abcdef") // true




// countConstruct - return count of ways to construct target
//==============================================================
// Time O(n*m*m)
// Space O(m)

//func countConstruct(_ arr: [String],_ target: String)->Int{
//
//    var dp = Array(repeating: 0, count: target.count+1)
//    dp[0] = 1
//    for i in 0...target.count{
//        if dp[i] != 0{
//            for item in arr where i+item.count<=target.count{
//                var result = dp[i+item.count]
//                if target.dropFirst(i).prefix(i+item.count).hasPrefix(item){
//                    dp[i+item.count]+=dp[i]
//                }
//            }
//        }
//    }
//    return dp[target.count]
//}






//
//print(countConstructMemo(["def","abcd"], "abcdef")) //0
//print(countConstructMemo(["ab","abc","cd", "def","abcd"], "abcdef"))//1
//print(countConstruct(["purp","p","ur","le","purpl"], "purple")) //2
//



// allConstruct - return all possible ways to construct target
//==============================================================
// Time O(n^m)
// Space O(n^m)



func allConstruct(_ arr: [String],_ target: String)->[[String]]{
    var dp = Array<[[String]]?>(repeating: nil, count: target.count+1)
    dp[0] = [[String]]()
    print(dp)
    

    for i in 0...target.count{
            for item in arr where i+item.count <= target.count{
                if target.dropFirst(i).prefix(i+item.count).hasPrefix(item){
                    let res = dp[i]
                    var comb = res.map{el -> [String] in
                        var el = el
                        el.append(item)
                        return el
                    }
                    
//                    var comb = dp[i].map{el -> [String] in
//                        var el = el
//                        el.insert(item, at: 0)
//                        return el
//                    }
//                    print(comb)
//                    if dp[i+item.count] == nil{
//                        dp[i+item.count] = comb
//
//                    }else{
//                        dp[i+item.count]!.append(comb)
//
//                    }

//                    print(comb)
                }
        }
    }

    
    print(dp)
    return [[]]
}


print(allConstruct(["purp","p","ur","le","purpl"], "purple"))

//
var arr = [
            [
             ["ab","bc"],
             ["r","z"]
            ],
           [
             ["cd","de"]
           ]
        ]

let res = arr[0].map{el -> [String] in
    var el = el
    el.append("t")
    return el
}

print(res)




class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var dp = Array(repeating: -1, count: amount+1)
        dp[0]=0
        for i in 0...amount{
            if dp[i] != -1{
                for item in coins where i+item<=amount{
                    dp[i+item] = dp[i+item] == -1 ? dp[i]+1 : min(dp[i]+1,dp[i+item])
                }
            }
        }
        print(dp)
        return dp[amount]
    }
}
