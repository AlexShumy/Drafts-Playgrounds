
import UIKit

    func fibonacci(n: Int) {
        
        var n1 = 0
        var n2 = 1
        
        if n == 0 {
            print("Invalid")
        } else if n == 1 {
            print(n1)
        } else if n == 2 {
            print("[\(n1), \(n2)]")
        } else {
            var array = [n1, n2]
            for _ in 2..<n {
                let newElement = n1 + n2
                n1 = n2
                n2 = newElement
                array.append(newElement)
            }
            print(array)
//            print("n1 = \(n1)   n2= \(n2)")
        }
    }

fibonacci(n: 8)
