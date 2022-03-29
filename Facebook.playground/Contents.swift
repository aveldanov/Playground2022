/*
 1)
 give views in views
 _______________________
 |A                     |
 | ________             |
 | |B __  |   _______   |
 | | |F|  |  | C     |  |
 | | ____ |  |       |  |
 | | |D | |  |       |  |
 | | |__| |  | ______|  |
 | |______|             |
 |                      |
 |______________________|
 
 
 Need to delete common ancestor. for example for D and C - remove A OR for F and D remove B
 
 
 _________   _________
 |_X|__|__|  |_X|_X|__|
 |_X|__|__|  |__|_X|__|
 |_X|_X|_X|  |__|_X|_X|
 
 return DDRR   return RDDR etc for all possible options
 
 */

//import UIKit
//var stack = [UIView]()
//
//func views(_ view1: UIView?, _ view2: UIView?){
//
//    if view1!=nil{
//        stack.append(view1)
//    }else if view2!=nil{
//        stack.append(view2)
//    }else{
//        return
//    }
//
//    if stack.sorted()[0] === stack.sorted()[1]{
//         stack[0] = nil
//        return
//    }
//
//    if view1.superview != nil && view2?.superview != nil{
//        views(view1?.superview, view2.superview)
//    }else if view2.superview != nil{
//        views(nil, view2?.superview)
//    }else{
//        views(view1.superview, nil)
//    }
//
//
//}

var list = [Character]()
func steps(_ n: Int){
    
    var i = 0
    var j = 0
    while i<n {
        helper(i,j,n)

        i+=1
        
    }
}


func helper(_ i:Int,_ j: Int,_ n: Int){
        
    if i!=0{
        list.append("R")
    }else if j!=0{
        list.append("D")
    }
    
    
    
    
}

steps(3)


