

let myOptional: String?
myOptional = nil

/*
1. Force Unwrapping - optional!
myOptional!
*/


/*
 2. Check for a nil value
 if optional != nil {
 optional!
 */

if myOptional != nil {
let text = myOptional!
} else {
    print("myOptional was found to be nil.")
}

 
/*
 3. Optional binding
 if let safeOptional = optional {
 let newValue = safeOptional
 */

if let safeOptional = myOptional {
    let text2 = safeOptional
    print(text2)
} else {
    print("myOptional is nil")
}


/*
 4. Nil Coalescing operator
 optional ?? default value
 */
let text3: String = myOptional ?? "myOptional was nil"
print(text3)


/*
 5. Optional chaining
 optional?.property
 optional?.method()
 */

struct MyOptional {
    var property = 123
    func method() {
        print("I am the struct's method.")
    }
}

let myOptional2: MyOptional?

myOptional2 = MyOptional()

print(myOptional2?.property)

myOptional2?.method()
