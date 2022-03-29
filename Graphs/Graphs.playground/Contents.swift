//let graph = ["a":["b","c"],
//             "b":["d"],
//             "c":["e"],
//             "d":["f"],
//             "e":[],
//             "f":[]]


 //MARK:DepthFirst Traversal Iterative

//func depthFirstTraversal(_ graph: [String:[String]],_ start: String){
//    var stack = [start]
//
//
//    while !stack.isEmpty{
//       let current = stack.removeLast()
//        print(current)
//
//        for item in graph[current]!{
//            stack.append(item)
//        }
//
////        print(stack)
//    }
//
//}


 //MARK: DepthFirst Traversal Recursive
//
//func depthFirstTraversal(_ graph: [String:[String]],_ start: String){
//    print(start)
//
//    for item in graph[start]!{
//        depthFirstTraversal(graph, item)
//    }
//
//}
//
//
//depthFirstTraversal(graph, "a")



 //MARK: Breadth First - always Iterative

//func breadthFirstTraversal(_ graph: [String:[String]],_ start: String){
//
//    var queue = [start]
//
//    while !queue.isEmpty{
//        let current = queue.removeFirst()
//        print(current)
//
//        for item in graph[current]!{
//            queue.insert(item, at: 0)
//        }
//    }
//}
//
//
//
//breadthFirstTraversal(graph, "a")



//let graph = ["f":["g","i"],
//             "g":["h"],
//             "h":[],
//             "i":["g","k"],
//             "j":["i"],
//             "k":[]]

//start f
//end j
 // --> false



let graph = [
  "f": ["g", "i"],
  "g": ["h"],
  "h": [],
  "i": ["g", "k"],
  "j": ["i"],
  "k": []
]

//start i
// end h
// --> true

//MARK: Has Path DFS


//func hasPath(_ graph:[String:[String]],_ start: String, _ dest: String)->Bool{
//    if start == dest{
//        print("Boom")
//        return true
//    }
//
//    for item in graph[start]!{
//        print(graph[start]!, item)
//        if hasPath(graph, item, dest) == true{
//            return true
//        }
//    }
//
//
//    return false
//}


 //MARK: BFS

//func hasPath(_ graph:[String:[String]],_ start: String, _ dest: String)->Bool{
//
//
//
//    var queue = [start]
//    while !queue.isEmpty{
//        let current = queue.removeFirst()
//        if current == dest{
//            return true
//        }
//
//        for item in graph[current]!{
//            queue.append(item)
//        }
//    }
//
//
//    return false
//}
//
//
//
//hasPath(graph, "f", "j")







//
//func buildGraph(edges:[[String]])->[String:[String]]{
//    var graph = [String:[String]]()
//
//    for edge in edges{
//        let a: String = edge[0]
//        let b: String = edge[1]
//        if !graph.values.contains([a]){
//            graph[a] = []
//        }
//        if !graph.values.contains([a]){
//            graph[a] = []
//        }
//
//        graph[a]?.append(b)
//        graph[b]?.append(a)
//
//    }
//
//
//    return graph
//}






//undirected path1
//=======================================================================================

//let edges = [[0,1],[0,2],[3,5],[5,4],[4,3]]
//
//let edges = [
//    ["i", "j],
//    ["k", "i"],
//    ["m", "k"],
//    ["k", "l"],
//    ["o", "n"]
//]
//undirectedPath(edges, 'j', 'm'); // -> true
//
// //MARK: convert Adjacency to graph
//func buildGraph<T>(_ edges:[[T]])->[T:[T]]{
//    var graph = [T:[T]]()
//
//    for edge in edges{
//        let a: T = edge[0]//0
//        let b: T = edge[1]//1
//
//        if !graph.values.contains([a]) && !graph.keys.contains(a){
//            graph[a] = []
//        }
//        if !graph.values.contains([b]) && !graph.keys.contains(b){
//            graph[b] = []
//        }
//        graph[a]?.append(b)
//        graph[b]?.append(a)
//    }
//    return graph
//}
//
////buildGraph(edges)
//
//
//func undirectedPath(edges:[[String]], nodeA:String, nodeB:String) -> Bool{
//    let graph  = buildGraph(edges)
//    print(graph)
//    var visited: Set<String> = []
//    return hasPath(graph, nodeA, nodeB, visited)
//}
//
//
//func hasPath(_ graph: [String:[String]], _ start: String, _ end: String, _ visited: Set<String>)->Bool{
//    var visited = visited
//
//    if start == end{
//        return true
//    }
//
//    if visited.contains(start){
//        return false
//    }
//
//    visited.insert(start)
//    print(visited)
//    for item in graph[start]!{
//        print(item)
//        if hasPath(graph, item, end, visited) == true{
//            return true
//        }
//    }
//    return false
//}
//
//
//undirectedPath(edges: edges, nodeA: "j", nodeB: "m")
//
//
//


//undirected path2
//=======================================================================================
//
//class Solution {
//    func validPath(_ n: Int, _ edges: [[Int]], _ start: Int, _ end: Int) -> Bool {
//        if edges.count <= 1{
//            return true
//        }
//
//        let graph  = buildGraph(edges)
//        var visited: Set<Int> = []
//        var stack = [start]
//
//        while !stack.isEmpty{
//            let current = stack.removeLast()
//            if visited.contains(current){
//                continue
//            }
//
//            for item in graph[current]!{
//                if item == end{
//                    return true
//                }else{
//                    stack.append(item)
//                }
//            }
//            visited.insert(current)
//        }
//        return false
//    }
//
//
//
//    func buildGraph<T>(_ edges:[[T]])->[T:[T]]{
//        var graph: [T:[T]] = [:]
//        for item in edges{
//            graph[item[0], default: []].append(item[1])
//            graph[item[1], default: []].append(item[0])
//        }
//        return graph
//    }
//}





//  Connected components count
//=======================================================================================




//let graph = [
//  0: [8, 1, 5],
//  1: [0],
//  5: [0, 8],
//  8: [0, 5],
//  2: [3, 4],
//  3: [2, 4],
//  4: [3, 2]
//]

// --->2
//
//let graph = [
//    3: [],
//    4: [6],
//    6: [4, 5, 7, 8],
//    8: [6],
//    7: [6],
//    5: [6],
//    1: [2],
//    2: [1]
//]
//
//->3
//
//func connectedComponenetsCount(_ graph:[Int:[Int]])->Int{
//    var visited = Set<Int>()
//    var count = 0
//
//    for item in graph.keys{
////        print(item)
//        if helper(graph, item, &visited) == true{
//            count+=1
//        }
//    }
//    return count
//}
//
//
//func helper(_ graph:[Int:[Int]], _ start: Int, _ visited: inout Set<Int>)->Bool{
//
//    if visited.contains(start){
//        return false // stop traversing this node
//    }
//    visited.insert(start)
//
//
//    for item in graph[start]!{
//        helper(graph, item, &visited)
//    }
////all neighbors traversed
//    return true
//}
//
//connectedComponenetsCount(graph)



// Biggest component
//=======================================================================================


//let graph = [
//    "0": ["8", "1", "5"],
//    "1": ["0"],
//    "5": ["0", "8"],
//    "8": ["0", "5"],
//    "2": ["3", "4"],
//    "3": ["2", "4"],
//    "4": ["3", "2"]
//]
// -->4
//
//let graph = [
//
//"1": ["2"],
//"2": ["1","8"],
//"6": ["7"],
//"9": ["8"],
//"7": ["6", "8"],
//"8": ["9", "7", "2"]
//]
//
//-->6
//
//
//func biggestComponent(_ graph: [String:[String]])->Int{
//    var maxC = 0
//
//    var visited = Set<String>()
//
//    for item in graph.keys{
//       let count = helper(graph, item, &visited)
//        maxC = max(maxC,count)
//    }
//
//
//    return maxC
//}
//
//
//func helper(_ graph:[String:[String]], _ start: String, _ visited: inout Set<String>)->Int{
//
//    var count = 1
//    if visited.contains(start){
//        return 0 // stop traversing this node
//    }
//    visited.insert(start)
//
//
//    for item in graph[start]!{
//        count += helper(graph, item, &visited)
//    }
////all neighbors traversed
//
//    return count
//}
//
//
//biggestComponent(graph)






// Shortest path
//=======================================================================================
//
//let edges = [
//  ["w", "x"],
//  ["x", "y"],
//  ["z", "y"],
//  ["z", "v"],
//  ["w", "v"]
//]
//shortestPath(edges, 'w', 'z'); // -> 2
//
//func buildGraph<T>(_ edges: [[T]])-> [T:[T]]{
//    var graph:[T:[T]] = [:]
//
//    for item in edges{
//        graph[item[0],default: []].append(item[1])
//        graph[item[1],default: []].append(item[0])
//    }
//    return graph
//}
//
//
//
//func shortestPath(_ edges: [[String]], _ start: String, _ end: String)->Int{
//
//    let graph = buildGraph(edges)
//    var queue = [(start, 0)]
//    var visited : Set<String> = [start]
//
//    while !queue.isEmpty{
//        let current = queue.removeFirst()
//        let currNode = current.0
//        let currCount = current.1
//
//        if currNode == end{
//            return currCount
//        }
//
//        for item in graph[currNode]!{
//
//            if visited.contains(item){
//                continue
//            }
//            visited.insert(item)
//            queue.insert((item, currCount+1), at: 0)
//
//        }
//
//    }
//
//    return -1
//}
//
//
//shortestPath(edges, "w", "z")




// Island Count
//=======================================================================================

let grid = [
  ["W", "L", "W", "W", "W"],
  ["W", "L", "W", "W", "W"],
  ["W", "W", "W", "L", "W"],
  ["W", "W", "L", "L", "W"],
  ["L", "W", "W", "L", "L"],
  ["L", "L", "W", "W", "W"],
]
// ->3

func countIslands(_ grid: [[String]])->Int{
    var count = 0
    var visited = Set<[Int]>()
    for i in 0..<grid.count{
        for j in 0..<grid[0].count{
            if helper(grid, i, j, &visited) == true{
                count+=1
            }
        }
    }
    return count
}


func helper(_ grid:[[String]], _ i: Int, _ j: Int, _ visited: inout Set<[Int]>)->Bool{

    guard i>=0 && i<grid.count && j>=0 && j<grid[0].count && grid[i][j] == "L" else{
        return false
    }


    if visited.contains([i,j]){
        return false
    }
    visited.insert([i,j])

    helper(grid, i+1, j, &visited)
    helper(grid, i, j+1, &visited)
    helper(grid, i-1, j, &visited)
    helper(grid, i, j-1, &visited)

    print(visited)
    return true
}



countIslands(grid)




// Minimum Count
//=======================================================================================
//let grid = [
//  ["W", "L", "W", "W", "W"],
//  ["W", "L", "W", "W", "W"],
//  ["W", "W", "W", "L", "W"],
//  ["W", "W", "L", "L", "W"],
//  ["L", "W", "W", "L", "L"],
//  ["L", "L", "W", "W", "W"],
//]
//// --> 2
//
//func minIsland(_ grid: [[String]])->Int{
//
//    var minCount = Int.max
//    var visited = Set<[Int]>()
//
//    for i in 0..<grid.count{
//        for j in 0..<grid[0].count{
//            let size = helper(grid, i, j, &visited)
//            if size > 0{
//                minCount = min(minCount, size)
//            }
//        }
//    }
//    return minCount
//}
//
//
//func helper(_ grid:[[String]], _ i:Int, _ j: Int, _ visited: inout Set<[Int]>)->Int{
//
//    guard i>=0 && i<grid.count && j>=0 && j<grid[0].count && grid[i][j] == "L" else{
//        return 0
//    }
//
//    if visited.contains([i,j]){
//        return 0
//    }
//    visited.insert([i,j])
//
//    var count = 1
//    count += helper(grid, i+1, j, &visited)
//    count += helper(grid, i, j+1, &visited)
//    count += helper(grid, i-1, j, &visited)
//    count += helper(grid, i, j-1, &visited)
//
//
//    return count
//}
//
//
//minIsland(grid)
