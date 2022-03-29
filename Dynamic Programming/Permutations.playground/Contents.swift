


func permutation(_ arr: [String])->[[String]]{
    if arr.count == 0{
        return [[]]
    }
    
    let firstEl = arr.first
    let rest = Array(arr[1...])
    
    print(firstEl,rest)
    
    
    let permWithoutFirst = permutation(rest)
    
    for item in permWithoutFirst{
        
        for i in 0..<item.count{
           let permWithFirst = item[
            
        }
        
    }
    return [[]]
}

permutation(["a","b","c"])
