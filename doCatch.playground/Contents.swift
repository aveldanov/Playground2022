
enum CustomError: Error{
    case ErrorLoading
    case ErrorFetching
    case UnknownError
}


func viewDidLoad(){
    do{
        let result = try doSomething(30)
        print(result)
    }catch{
        
        print("Got an error: ",error)
        
    }
}

func doSomething(_ input: Int) throws -> String{
    if input > 5{
        throw CustomError.ErrorFetching
    }
    
    
    
    return "TEST"
}

viewDidLoad()
