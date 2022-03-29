//let items = {(w:1, v:6), (w:2, v:10), (w:3, v:12)}
let values = [6,10,12]
let weights = [1,2,3]
let maxWeight = 5





func knapsack(_ values:[Int],_ weights: [Int], _ maxWeight: Int)->Int{
    
    var dp = Array(repeating: Array(repeating: 0, count: maxWeight + 1), count: values.count+1)
    
    for i in 1...weights.count{
        let w = weights[i-1]
        let v = values[i-1]
//        print(i)
        print(w,v)
        for j in 1...maxWeight{
            
            dp[i][j] = dp[i-1][j]
            
            
            if j >= w && (dp[i-1][j-w]+v) > dp[i][j]{
                dp[i][j] = dp[i-1][j-w]+v
            }
        }
    }
    
    print(dp)
    
    var itemsSelected = [Int]()
    let wCount = weights.count
    var cap = maxWeight
    for i in stride(from: wCount, to: 0, by: -1) {
        if dp[i][cap] != dp[i-1][cap]{
         let index = i-1
            itemsSelected.append(index)
            cap -= weights[index]
    }
    
    }
    print(itemsSelected)
    return 0
}

knapsack(values,weights, maxWeight) // = 22
