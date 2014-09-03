class TheZoo{
    
    let zoo : String
    let eat : String
    let feed : [String:String]
    
    init(zoo : String,eat : String){
        self.zoo = zoo
        self.eat = eat
        feed = [zoo:eat]
    }
    
    func ZooEat()->[String:String]{
        var zooeat:[String:String] = ["frog":"fly","Lion":"meat","Dog":"meat","Monkey":"banana","fish":"bat",]
        zooeat ("\(zooeat)")= feed
        println("\(zooeat)")
        return feed
    }
    
   // func returnZoo() -> [String : String]{
        
    //}
    
}

let Zoo = TheZoo(zoo: "fish", eat: "tree")

