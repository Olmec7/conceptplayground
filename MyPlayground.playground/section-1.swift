// Playground - noun: a place where people can play

import UIKit

var playerName = "Chip"
var highScore = 1000
var isActive = true

let daysInWeek = 7

func calculateBonus() -> Int {
    
    var bonus = 0
    var bonusMultiplier : Int
    var livesRemaining : Int
    livesRemaining = 5
    
    
    if livesRemaining > 2 {
        bonusMultiplier = 2
    } else {
        bonusMultiplier = 1
    }

//    for enemySpaceship in tally {
   //     bonus = bonus + (100 * bonusMultiplier)
   // }

    // TODO: add percentage based on level number
    return bonus
}

println(calculateBonus())



highScore


let city = "Carpinteria"
var day = "Thursday"

var temp = 76

"The High for \(city) on \(day) is \(temp) degrees"

println("The High for \(city) on \(day) is \(temp) degrees"

)

var quantity = 28
var unitPrice = 400


println("The amount is \(quantity * unitPrice)")

var total = 0
for index in 1...100 {
    total = total + index
    
}

println("The total is \(total)")

var colorOptions : [String]
colorOptions = ["Red", "Green"]

colorOptions.append("Blue")
for color in colorOptions{
    println(color)
}

var states = ["AZ" : "Arizona", "CA" : "California"]
states["FL"] = "Florida"

for (key, value) in states{
println("This \(key) is the pair for \(value)")
}

var str = "hi"
var num = 2

var tuple = (str, num)

func getCurrentSongAndDuration () -> (String, Int) {
    return("Moonlightin Vermont", 219)
}

let result = getCurrentSongAndDuration()

println(result.0)

let (name, location) = getCurrentSongAndDuration()


var travelerSeatPreference : Int

enum SeatPreference{
    case Middle
    case Window
    case Aisle
}

var chadPrefers : SeatPreference

chadPrefers = .Aisle

var kierstenPrefers = SeatPreference.Window

let myClosure = {()->() in
    println("This is a simple closure")
}

func performThreeTimes(closure : ()->() ) {
    for i in 1...5{
        closure()
    }
}

performThreeTimes(myClosure)

let unsortedArray = [3, 4, 949, 454, 023, 3954]



class Player {
    
    var name : String
    var score : Int
    func description(){
        println("No desc yet")
    }
    
    init(){
        name = "Jane"
        score = 20
    }
    
    init(name: String){
        self.name = name
        self.score = 0
    }
}

var badChad = Player()


class BestPlayer : Player{
    
    
    func newMethod(){
        
    }
    override func description() {
        println("the best eva")
        
     super.description()
    }
    
}


import UIKit

class ViewController: UIViewController,NSXMLParserDelegate {
    
    var strXMLData:String = &quot;&quot;
    var currentElement:String = &quot;&quot;
    var passData:Bool=false
    var passName:Bool=false
    
    @IBOutlet var lblNameData : UILabel = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var url:String=&quot;http://api.androidhive.info/pizza/?format=xml&quot;
        var urlToSend: NSURL = NSURL(string: url)
        // Parse the XML
        var parser = NSXMLParser(contentsOfURL: urlToSend)
        parser.delegate = self
        
        var success:Bool = parser.parse()
        
        if success {
            println(&quot;parse success!&quot;)
            
            println(strXMLData)
            
            lblNameData.text=strXMLData
            
        } else {
            println(&quot;parse failure!&quot;)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func parser(parser: NSXMLParser!,didStartElement elementName: String!, namespaceURI: String!, qualifiedName : String!, attributes attributeDict: NSDictionary!) {
        currentElement=elementName;
        if(elementName==&quot;id&quot; || elementName==&quot;name&quot; || elementName==&quot;cost&quot; || elementName==&quot;description&quot;)
        {
            if(elementName==&quot;name&quot;){
                passName=true;
            }
            passData=true;
        }
    }
    
    func parser(parser: NSXMLParser!, didEndElement elementName: String!, namespaceURI: String!, qualifiedName qName: String!) {
        currentElement=&quot;&quot;;
        if(elementName==&quot;id&quot; || elementName==&quot;name&quot; || elementName==&quot;cost&quot; || elementName==&quot;description&quot;)
        {
            if(elementName==&quot;name&quot;){
                passName=false;
            }
            passData=false;
        }
    }
    
    func parser(parser: NSXMLParser!, foundCharacters string: String!) {
        if(passName){
            strXMLData=strXMLData+&quot;\n\n&quot;+string
        }
        
        if(passData)
        {
            println(string)
        }
    }
    
    func parser(parser: NSXMLParser!, parseErrorOccurred parseError: NSError!) {
        NSLog(&quot;failure error: %@&quot;, parseError)
    }
}














