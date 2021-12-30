

class Bird {
    
    var isFemale = true
    
    func layEggs() {
        if isFemale {
            print("The bird makes a bird in a shell.")
        }
    }
    
    func fly() {
        print("The bird flaps its wings and lifts off into the sky.")
    }
    
}


class Eagle: Bird {
   
    func soar() {
        print("The eagle glides in the air using air currents.")
    }
}

let myEagle = Eagle()
myEagle.fly()
myEagle.layEggs()
myEagle.soar()


