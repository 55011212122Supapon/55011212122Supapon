class TheZoo{
    
    let zoo : String
    let eat : String
    let feed : [String:String]=["frog":"fly","Lion":"meat","Dog":"meat","Monkey":"banana","fish":"bat"]
    
    init(zoo : String,eat : String){
        self.zoo = zoo
        self.eat = eat
        
        //feed = [zoo:eat]
    }
    
    func ZooEat()->String{
       var eatzoo =feed[zoo]
        //println("\(eatzoo)")
       //eatzoo("\(eatzoo)") =

        return eatzoo!
    }
    
    func MyZoo(anzoo:String){
    
        
    }
    
}

let Animal = TheZoo(zoo: "fish", eat: "bat")
Animal.ZooEat()
//Animal.add("Cat")
//Animal.MyZoo()

if (true){
    println("\(Animal)")
}

