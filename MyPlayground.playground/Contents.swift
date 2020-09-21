import UIKit

var str = "Hello, playground"

import UIKit
import Foundation
let arry = [3,6,2,7,5]
var count = 0
func find( inputArray:[Int]){
    var isFound = false
    var array:[Int] = []
    for i in 0..<inputArray.count{
        
        if i == 0{
            array.append(inputArray[i])
            continue
        }
        if inputArray[i] < inputArray[i - 1]{
            array.append(inputArray[i])
        }else{
            isFound = true
        }
    }
    if(isFound){
        count += 1
        find(inputArray: array)
    }
    
}
//Mark you can pass your input here
find(inputArray: arry)
print(count)
