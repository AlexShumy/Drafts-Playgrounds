


protocol AdvancedLifeSupport {
    func performCPR ()
}




class EnergencyCallHandler {
    var delegate: AdvancedLifeSupport?
    
    func assessSituation() {
        print("Can you tell me what happend?")
    }
    
    func medicalEmergency() {
        delegate?.performCPR()
    }
}



struct Paramedic: AdvancedLifeSupport {
    
    init(handler: EnergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The paramedic does chest compression, 30 per second.")
    }
}




class Doctor: AdvancedLifeSupport {
    
    init(handler: EnergencyCallHandler) {
        handler.delegate = self
    }
    
    func performCPR() {
        print("The doctor does chest compressions, 30 per second.")
    }
    
    
    func useStethescope() {
        print("Listening for heart sounds")
    }
    
}



class Surgeon: Doctor {
    override func performCPR() {
        super.performCPR()
        print("Sings staying alive by the BeeGees")
    }
    
    func useElectricDrill() {
        print("Whirr...")
    }
    
}



let emilio = EnergencyCallHandler()
let angela = Surgeon(handler: emilio)

emilio.assessSituation()
emilio.medicalEmergency()
