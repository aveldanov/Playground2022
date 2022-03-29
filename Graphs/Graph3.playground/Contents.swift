let edges = [
    ["i", "j"],
    ["k", "i"],
    ["m", "k"],
    ["k", "l"],
    ["o", "n"]
]

//let edges = [[0,1],[0,2],[3,5],[5,4],[4,3]]

//let edges = [[0,1],[0,2]]


//
//
//func buildGraph<T>(_ edges:[[T]])->[T: [T]]{
//    var graph: [T: [T]] = [:]
//    for edge in edges {
//        graph[edge[0], default: []].append(edge[1])
//        graph[edge[1], default: []].append(edge[0])
//    }
//    return graph
//}
//
//
//
//func undirectedPath(edges:[[String]], nodeA:String, nodeB:String) -> Bool{
//    let graph  = buildGraph(edges)
//    print(graph)
//    var visited: Set<String> = []
//    return hasPath(graph, nodeA, nodeB, visited)
//}
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




func buildGraph<T>(_ edges:[[T]])->[T:[T]]{
    var graph: [T:[T]] = [:]
    
    
    for item in edges{
        
        graph[item[0], default: []].append(item[1])
        graph[item[1], default: []].append(item[0])
        
    }
    
    
    return graph
}


//buildGraph(edges)



func undirectedGraph(_ edges:[[String]], _ start: String, _ end: String) -> Bool{
    print("undirectedGraph")

    let graph = buildGraph(edges)
    
    let visited: Set<String> = []
    return hasPath(graph, start, end, visited)
    
    
     
}


func hasPath(_ graph: [String:[String]], _ start: String, _ end: String, _ visited: Set<String>)->Bool{
    var visited = visited
    
    print("BOOM")
    var stack = [start]


    while !stack.isEmpty{

        var current = stack.removeLast()

        if visited.contains(current){
            continue
        }

        for item in graph[current]!{
            if item == end{
                return true
            }else{
                stack.append(item)
            }
        }
        visited.insert(start)
    }
    return false
}


undirectedGraph(edges, "j", "m")
