
 /*
 #fileLiteral(resourceName: "Swift Coding Challenges")
 */





//MARK: Protocol
//
//protocol WebService{
//
//    func collect(_ id: String)->String
//    var id: String { get set}
//
//
//
//}
//
//protocol WebService2{
//
//    func collect2(_ id: String)->String
//    var id2: String { get set}
//
//
//
//}
//
//protocol All: WebService, WebService2{}


 //MARK: Generics
//
//let arr1 = ["a","b", "c", "d"]
//let arr2 = [2,3,4,5,6]
//
//
//func findIndexOfItem<T: Comparable>(_ arr:[T], _ item: T) -> Int?{
//
//    for (index, el) in arr.enumerated(){
//        if el == item{
//            return index
//        }
//
//
//    }
//
//    return nil
//}
//
//
//findIndexOfItem(arr1, "d")
//findIndexOfItem(arr2, 6)


 //MARK: Higher Order Functions


//var array = [1,2,x3,5,12,199,17,100]

//Filter
//
//array = array.filter{$0 > 10}
//print(array)

//Map
//
//array = array.map{$0 * 2}
//print(array)


//Reduce

//let new = array.reduce(0){$0+$1}
//
//print(new)



 //MARK: Closures


//func add(_ a: Int, _ b:Int)->Int{
//    return a+b
//}


//let add = {(_ a: Int, _ b:Int)->Int in
//    return a+b
//}


//let add : (_ a: Int, _ b:Int)->Int = { (a,b) in
//    return a+b
//}

//let add : (Int,Int)->Int = {
//    return $0+$1
//}
//
//let sub : (Int,Int)->Int = {
//    return $0-$1
//}
//
//
//let funcs = [
//    add, sub
//]


//
//func calculator(_ a:Int, _ b: Int,_ oper:(Int,Int)->(Int) ) -> Int{
//
//    return oper(a,b)
//}
//
//
//func add(_ a1:Int, _ b1: Int) -> Int{
//    return a1+b1
//}

//func multyply(_ a1:Int, _ b1: Int) -> Int{
//    return a1*b1
//}

//
//{(_ a1:Int, _ b1: Int) -> Int in
//    return a1*b1
//}



//let result = calculator(3, 4) {$0*$1}
//
//print(result)
//
//
//var array2 = [4,5,6,67,7,1,3]
//
//array2 = array2.map{$0+1}
//print(array2)
//
//{$0 + 1 }

 //MARK: throws

//
//enum LoginError: Error{
//    case incompleteForm
//    case invalidEmail
//    case incorrectPasswordLength
//}
//
//
//func login() throws{
//
//    let email = "kljdslkjsdc"
//    let password = ""
//
//    if email.isEmpty || password.isEmpty {
//        throw LoginError.incompleteForm
//    }
//
//}
//
//do{
//    try login()
//}catch LoginError.incompleteForm{
//    print("incomplete form")
//}

//
//struct Input{
//    var x: Int
//    var y: Int
//}
//
//enum FuncError: Error{
//    case thereIsAnError
//}
//
//class Calc{
//    static func add(_ input: Input) throws -> Int{
//        if input.x > 5 {
//            throw FuncError.thereIsAnError
//        }
//
//        return input.x + input.y
//   }
//
//}
//
//try Calc.add(Input(x: 40, y: 5))
//



//
//
//func calculator (_ a: Int, _ b: Int, _ oper: (Int, Int)->(Int))->Int{
//
//    return oper(a, b)
//
//}
//
//
//func add(num1: Int, num2: Int) -> Int{
//
//    return num1 + num2
//}
//
//func multiply(num1: Int, num2: Int) -> Int{
//
//    return num1 * num2
//}
//
//let result = calculator(3, 4){$0*$1}
//result



//
//
//
//func calculator(_ a:Int, _ b:Int,_ oper:(Int,Int)->(Int) )->Int{
//
//
//
//    return oper(a,b)
//
//}

//func calculator(_ a:Int, _ b:Int,_ oper:(Int,Int)->(Int) )->Int{


//
//func add(_ n1:Int, _ n2:Int)->Int{
//
//    return n1+n2
//}
//
//
//
//func muliply(_ n1:Int, _ n2:Int)->Int{
//
//    return n1*n2
//}


//    print(calculator(3, 4){$0*$1})

//
//
//enum ErrorHandler: Error{
//    case emptyInput
//}
//
//
//func login(_ login: String,_ password:String) throws{
//   
//    if login.isEmpty || password.isEmpty{
//        throw ErrorHandler.emptyInput
//    }
//    
//    
//}
//
//
//let result = try login("skcjlksdjc", "sfjv")
//




//
//struct Item{
//
//    let title: String?
//    let name: String?
//}
//
//let input1: String = "1"
//let input2: String = "2"
//
//let item = Item(title: input1, name: input2)
//
//if let title = item.title,let name = item.name{
//
//    return Item(title: {title}, name: {name})
//
//
//}
//



// throw error BEST

//
//enum AddError: Error{
//    case additionError
//}
//
//func add(a: Int, b: Int)throws -> Int{
//    var result = 0
//    do{
//        if a+b<10{
//            result = a+b
//        }else{
//            throw AddError.additionError
//        }
//    }catch{
//        print(error)
//    }
//    return result
//}
//
//try add(a: 3, b: 22)


extension Int{
    
    func adddd(_ a: Int)->Int{
        
        return self+a
    }
}


let result = 3.adddd(2)
