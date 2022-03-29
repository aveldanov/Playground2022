/*
 
 /*
 As part of a new payments system, you've been asked to implement some code to support showing the card issuer as the user enters their number. For example, before the user even clicks "Pay", you want to display "VISA" for Visa cards, "MC" for MasterCard, etc.

 Here are some basic rules and a test harness.
 Please implement the detection function for those rules.


 Network          | IIN (Prefix)                             | Length
 -----------------|------------------------------------------|--------
 Amex             | 34, 37                                   | 15
 Diners           | 38, 39                                   | 14
 Visa             | 4                                        | 13, 16, 19
 MasterCard       | 51, 52, 53, 54, 55                       | 16
 Discover         | 6011, 622126-622925, 644-649, 70         | 16, 19
 Maestro          | 50, 56-69                                | 12-19
 China UnionPay   | 62                                                 | 16-19
 Switch           | 4903, 4905, 4911, 4936, 564182, 633110, 6333, 6759 | 16, 18, 19


 */

 import Foundation
 import XCTest

 func detectNetwork(_ cardNumber: String) -> String? {
   // TODO

   // numbers only
   
   
    //    ["Amex" :[[34, 37 ],[15]]]

   
   
   // dict = ["Amex": [34,37], "Visa": [4], "Switch":[4903, 4905 ] ]
   
   
   
   
   
   
   
   
   let arr = Array(cardNumber)
   
     print(arr)

     if arr.count != 14 && arr.count != 15{
       return nil
     }
   
   
   if (arr[0] == "3" && arr[1] == "4") || (arr[0] == "3" && arr[1] == "7"){
     
     return "Amex"
     
   }
   if (arr[0] == "3" && arr[1] == "8") || (arr[0] == "3" && arr[1] == "9"){
   
     return "Diners"
   }
     
   
   return nil

 }




 // Unit tests

 final class MyTest : XCTestCase {
   static var allTests = {
     return [("detectNetworkTest", detectNetworkTest)]
   }()
   
   func detectNetworkTest() {
     XCTAssertEqual("Amex", detectNetwork("341234567890123"))
     XCTAssertEqual("Diners", detectNetwork("38212678901234"))
     
     // TODO: additional unit tests
   }
 }

 XCTMain([testCase(MyTest.allTests)])
 
 
 
 */







/*
 amex    | 33 34               |     15
 visa    | 4                   | 13, 16, 19
 discover| 6011, 622126-622925 | 16, 19
 switch  | 4903, 4905          | 16,18,19
 
 
 */



func checkCard(_ card: String)->String?{
    
    var dict = [ String: [[String]] ]()
    let range = 622126...622129

    
    let arrNum = Array(card)
    
    
    let arr = arrNum.map{Int(String($0))!}
    
    dict = ["amex": [["33","34"], ["15"]],
            "visa": [["4"], ["13","16","19"]],
            "discover": [["6011"]+range.compactMap{$0}.map{String($0)},["13","16","19"]],
            "switch": [["4903","4905"], ["16","18","19"]]
    ]
    
//    print(dict)
    var result = ""
    for i in 0..<dict.count{
        let items = Array(dict.values)[i]
        print("BOOM",items[0].sorted{$0 > $1})
        
        items[0].forEach{
            if card.hasPrefix($0) {
//                print(Array(dict.keys)[i])
                result = Array(dict.keys)[i]
            }
        }

    }

   
    
    
    return result
}


checkCard("449034123456789")







let str = "3499878709"

let items = [[["33","34"], ["15"]],[["4"], ["13","16","19"]], [["4903","4905"], ["16","18","19"]] ]

//print(items.compactMap{$0})


//for item in items{
//
//   item[0].forEach{print(str.hasPrefix($0), item[])}
//}

//str.hasPrefix(items.map{$0})


let range = 622126...622129

print(Array(range).map{String($0)})
