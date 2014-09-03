let array : Array<Int> = [1,2,3,4]
let dictionary : Dictionary<String,Int> = ["dog": 1,"elephant": 2, "Dog": 3]

var airport:[String: String] = ["TYO":"Tokyo","DUB":"Dublin"]

airport["LHR"] = "London"
airport

airport["BBK"] = "Bankok"
airport

//if let oldValue = airport.updateValue("Dublin International", forKey: "DUB")
