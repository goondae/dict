//DEFINITION이 한개보다 많은 경우가 있는가?

//이상하게 schoo 치면 안됨.



//scroll 위치

//noun, audio 추가.
//전체적인 디자인 수정.



import Cocoa
import AVFoundation
import AVKit

public class MyModel: NSObject {
    @objc var someFlag = false// @objc
    @objc func doSomething() {         // @objc
        print("doing something")
    }
}





var url:String?

func setURL(_ receivedURL : String) {
    url = receivedURL
}

func getURL() -> String {
    return url!
}


class LastAnchor {
    var field:NSLayoutConstraint
    
    init(_ text : NSLayoutConstraint) {
        self.field = text
    }
    
    func changeToFalse() {
        field.isActive = false
    }
    
    func changeToTrue() {
        field.isActive = true
    }
    
}


class ViewController: NSViewController {
    
    
    
    override func presentViewController(_ viewController: NSViewController, animator: NSViewControllerPresentationAnimator) {
        performSegue(withIdentifier: NSStoryboardSegue.Identifier(rawValue: "move3"), sender: "segr")
    }

    
    @IBAction func moveSegue(_ sender: Any) {
        
    }
    
    
    @IBOutlet weak var searchButton: NSButton!
    
    
    
    
    
    @IBOutlet weak var viewHeightAnchor: NSLayoutConstraint!
    
    @IBOutlet weak var outputBox2: NSScrollView!
    
    
    @IBOutlet weak var outputBox: NSScrollView!
    
    
    @IBOutlet weak var customView: NSView!
    
    
    @IBOutlet weak var wordListVC2: NSTextField!
    

  
    @IBOutlet weak var searchButtonOutlet: NSButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.outputBox.hasVerticalScroller = false
        
        
        wordListVC2.translatesAutoresizingMaskIntoConstraints = false
        wordListVC2.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10).isActive = true
        wordListVC2.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 1).isActive = true
       wordListVC2.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 300).isActive = true
        wordListVC2.heightAnchor.constraint(equalToConstant: 80).isActive = true


        
    //view.trailingAnchor.constraint(greaterThanOrEqualTo: searchButton.trailingAnchor)
        
        
        view.translatesAutoresizingMaskIntoConstraints = false;
    view.widthAnchor.constraint(greaterThanOrEqualToConstant: 300).isActive = true
        //print(wordList)
        
//        var image = NSImage()
//        image = #imageLiteral(resourceName: "speaker3.png")
//
//        var button2 = NSButton()
//
//        button2.isBordered = false
//        button2.bezelColor = NSColor.white
//
//        view.addSubview(button2)
//        button2.image = image
//
//
//        button2.translatesAutoresizingMaskIntoConstraints = false
//        button2.topAnchor.constraint(equalTo: view.topAnchor,constant: 90).isActive = true
//        button2.leftAnchor.constraint(equalTo: view.leftAnchor,constant: 180).isActive = true
        
        
        
        
        
        
        
        
        view.wantsLayer = true
        
        view.layer?.backgroundColor = NSColor.systemBlue.cgColor
            
        
        
        outputBox.translatesAutoresizingMaskIntoConstraints = false
        
        outputBox.topAnchor.constraint(equalTo: view.topAnchor, constant: 70).isActive = true
        outputBox.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        outputBox.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        outputBox.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        

        
    }
    

    
//    @IBAction func pushh(_ sender: Any) {
//
//
//        var player: AVPlayer?
//        let url  = URL.init(string:   "http://audio.oxforddictionaries.com/en/mp3/boy_gb_1.mp3")
//
//        let playerItem: AVPlayerItem = AVPlayerItem(url: url!)
//        player = AVPlayer(playerItem: playerItem)
//
//        let playerLayer = AVPlayerLayer(player: player!)
//
//        //playerLayer.frame = CGRect(x: 0, y: 0, width: 10, height: 50)
//        self.view.layer?.addSublayer(playerLayer)
//
//        player?.play()
//
//    }
    
    
    
    var firstTimeSearch = true
    var searchCount = 0
    
    
    var wordList = [String]()
    
    
    @IBAction func enterTapped2(_ sender: NSTextField) {
        if !sender.stringValue.isEmpty {
            var word = ""
            for alphabet in sender.stringValue {
                
                if String(alphabet) != " " {
                    word += String(alphabet)
                }
                
            }
            
            
            
            wordList.append(word)
            wordListVC2.stringValue = String(describing: wordList)
            sender.stringValue = ""
        }
        //print(wordList)
    }
    
    
    @objc func buttonAction(sender: NSButton!) {
        print("Button tapped")
    }
    
    @IBAction func buttonPressed2(sender: NSButton!) {
        print("sergesrgersg")
    }
    

    
    
    @objc func go(_ sender: NSButton) { //복습하쟈.. sender의 attribute를 이용하는 거였음.
        
        print(sender.title, "plz")
        
        var player: AVPlayer?
        let url  = URL.init(string: sender.title)
        
        let playerItem: AVPlayerItem = AVPlayerItem(url: url!)
        player = AVPlayer(playerItem: playerItem)
        
        let playerLayer = AVPlayerLayer(player: player!)
        
        self.view.layer?.addSublayer(playerLayer)
        
        player?.play()

        
        
    }
    

    

   

    var listsForAny = [NSTextField]()
    var listsForAudio = [String]()
    var firstLabel = true
    var listsForVocab = [Vocab]()
    var topAnchorSet = false
    
    var listsForAnchor = [LastAnchor]()
    
    
    var initialCustomViewHeight = 5000
    func printSomething() {
        print("Hello")
    }
    
    //fuck this
    class Vocab {
        var title : String?
        var dictionary : [[String]]?
        var audioExists = false
        var audioURL : String?
        
        var audioFile:NSButton?
        
        
        
        @objc func hehe() {
            print(self.title, "why")
        }
        
        func lastplay() {
            self.audioFile?.action = #selector(hehe)
        }
        
        func setFile(_ file : NSButton) {
            self.audioFile = file
        }
        
        //        func playFile(){
        //            hehe(self.audioFile!)
        //        }
        
        
        func setDict(_ dict : [[String]]) {
            self.dictionary = dict
        }
        
        
        func audioDoesExist(_ url : String) {
            self.audioExists = true
            self.audioURL = url
        }
        
        func getURL() -> String {
            return self.audioURL!
        }
        
        func go3() {
            print("33333")
        }
        
        
        
        
    }
    
    func Output(_ finalInfo: [Vocab],_ notFound:[String])  {
        

        DispatchQueue.main.async {
            
        
            
        self.outputBox.hasVerticalScroller = true
            
            
        for vocab in finalInfo {
            
//            print(vocab.hehe())
            
            var defCounter = 1
            var firstEx = true
            
            var labelForWord = NSTextField()
            self.customView.addSubview(labelForWord)
            
            labelForWord.stringValue = vocab.title!
            labelForWord.alignment = .left
            
            
            
            
            if !self.firstLabel{
                print(self.listsForAny.last?.stringValue)
                
                self.customView.translatesAutoresizingMaskIntoConstraints = false
                
                
                
                if self.firstTimeSearch == false {
                    
                    self.customView.translatesAutoresizingMaskIntoConstraints = false
                    
                    self.listsForAnchor.last?.changeToFalse()
                    
                    self.viewHeightAnchor.constant = CGFloat(self.initialCustomViewHeight)
                    self.initialCustomViewHeight += 3000
                    
                }
                
                
                
                
                labelForWord.translatesAutoresizingMaskIntoConstraints = false
                labelForWord.topAnchor.constraint(equalTo: (self.listsForAny.last?.bottomAnchor)!, constant: 50).isActive = true
                labelForWord.leadingAnchor.constraint(equalTo: self.customView.leadingAnchor, constant: 10).isActive = true
                
                if !vocab.audioExists {
                    labelForWord.trailingAnchor.constraint(equalTo: self.customView.trailingAnchor, constant: -10).isActive = true
                }
                
                
                labelForWord.lineBreakMode = .byWordWrapping
                labelForWord.setContentCompressionResistancePriority(NSLayoutConstraint.Priority(rawValue: 250), for: .horizontal)
                
                
            }
            
            
            if self.firstLabel{
                print("START")
                
                if self.listsForAny.count > 0 {
                    
                    
                    
                    labelForWord.translatesAutoresizingMaskIntoConstraints = false
                    labelForWord.topAnchor.constraint(equalTo: (self.listsForAny.last?.bottomAnchor)!, constant: 50).isActive = true
                    labelForWord.leadingAnchor.constraint(equalTo: self.customView.leadingAnchor, constant: 10).isActive = true
                    if !vocab.audioExists {
                        labelForWord.trailingAnchor.constraint(equalTo: self.customView.trailingAnchor, constant: -10).isActive = true
                    }
                    
                    labelForWord.lineBreakMode = .byWordWrapping
                    labelForWord.setContentCompressionResistancePriority(NSLayoutConstraint.Priority(rawValue: 250), for: .horizontal)
                } else {
                    labelForWord.translatesAutoresizingMaskIntoConstraints = false
                    
                    labelForWord.topAnchor.constraint(equalTo: self.customView.topAnchor, constant: 10).isActive = true
                    
                    labelForWord.leadingAnchor.constraint(equalTo: self.customView.leadingAnchor, constant: 10).isActive = true
                    
                    //labelForWord.heightAnchor.constraint(equalToConstant: 20)
                    print(vocab.audioExists, "pppp")
                    if !vocab.audioExists {
                        labelForWord.trailingAnchor.constraint(equalTo: self.customView.trailingAnchor, constant: -10).isActive = true
                    }
                    
                    
                    
                    
                    
                    
                    
                    labelForWord.lineBreakMode = .byWordWrapping
                    labelForWord.setContentCompressionResistancePriority(NSLayoutConstraint.Priority(rawValue: 250), for: .horizontal)
                }
                
                
            }
            
            labelForWord.font = NSFont(name: "Arial Black", size: 30)
            labelForWord.isEditable = false
            labelForWord.isHidden = false
            labelForWord.isBordered = false
            
            
            
            self.firstLabel = false
            
            self.listsForAny.append(labelForWord)

            func onClick(_: Any) {
                //print(gett)
                
            }
            
            if vocab.audioExists{
                print(vocab.audioExists, "ttt")
                let url = vocab.getURL()
                
                var image = NSImage()
                image = #imageLiteral(resourceName: "speaker3.png")
                
                
                
                
                var button = NSButton()
                
                button.title = vocab.getURL()
                button.action = #selector(self.go(_:))

                
                
                
            
//                button.target = self
//                button.mouse
//
//                //button.target(self, action: #selector(vocab.hehe(_ :)), for: NSControl.touchUpInside)
//
//                vocab.hehe()
//                button.action = #selector(vocab.hehe())
                
                //shitt
                
                
                
                //var button = NSButton(title: "ViewController", sender: vocab, target: self, action: #selector(self.go))
                //button.target = self
                //button.action = #selector(self.go)
                //button.sendAction(#selector(self.onClick(_:)), to: vocab)
                //button.sendAction(#selector(self.onClick(_:)), to: vocab)
                
                //button.action = #selector(self.onClick(_:))
                
                //vocab.setFile(button)
                
                
                
                //vocab.audioFile?.action = NSObject.performSelector(inBackground: self.go, with: "serg")
                //vocab.audioFile?.perform(#selector(self.go), with: "ersserg")
                
                //vocab.audioFile?.perfor
                
                button.isBordered = false
                button.bezelColor = NSColor.white
                
                
                
                self.customView.addSubview(button)
                button.image = image
                
                //button.action = #selector()
                
                //let continueButton = NSButton(title: "Continue", target: self, action: #selector(self.continueButtonClicked))
                
                button.translatesAutoresizingMaskIntoConstraints = false
                
                if self.topAnchorSet {
                    button.leadingAnchor.constraint(equalTo: (self.listsForAny.last?.trailingAnchor)! ,constant: 20).isActive = true
                    button.topAnchor.constraint(equalTo: (self.listsForAny[self.listsForAny.count-2].bottomAnchor) , constant: 67).isActive = true
                    
                } else {
                    button.leadingAnchor.constraint(equalTo: (self.listsForAny.last?.trailingAnchor)! ,constant: 20).isActive = true
                    button.topAnchor.constraint(equalTo: self.customView.topAnchor, constant: 27).isActive = true
                    self.topAnchorSet = true
                }
                

                
            }

            
            
            
            
            for value in vocab.dictionary! {
                var counter = 0
                
                for detail in value {
                    
                    if counter == 0 {
                        
                        print(self.listsForAny.last?.stringValue)
                        
                        var labelForDef = NSTextField()
                        self.customView.addSubview(labelForDef)
                        labelForDef.stringValue = String(defCounter) + ".   " + detail
                        labelForDef.alignment = .left
                        
                        
                        
                        labelForDef.translatesAutoresizingMaskIntoConstraints = false
                        labelForDef.topAnchor.constraint(equalTo: (self.listsForAny.last?.bottomAnchor)!, constant: 20).isActive = true
                        labelForDef.leadingAnchor.constraint(equalTo: self.customView.leadingAnchor, constant: 10).isActive = true
                        labelForDef.trailingAnchor.constraint(equalTo: self.customView.trailingAnchor, constant: -10).isActive = true
                        labelForDef.lineBreakMode = .byWordWrapping
                        //labelForDef.heightAnchor.constraint(equalToConstant: 20)
                        labelForDef.setContentCompressionResistancePriority(NSLayoutConstraint.Priority(rawValue: 250), for: .horizontal)
                        
                        
                        labelForDef.font = NSFont(name: "Arial", size: 17)
                        labelForDef.isEditable = false
                        labelForDef.isHidden = false
                        labelForDef.isBordered = false
                        
                        
                        
                        
                        self.listsForAny.append(labelForDef)
                        
                        
                        defCounter += 1
                        firstEx = true
                        
                    } else {
                        
                        var labelForEx = NSTextField()
                        self.customView.addSubview(labelForEx)
                        labelForEx.stringValue = detail
                        labelForEx.alignment = .left
                        
                        
                        labelForEx.translatesAutoresizingMaskIntoConstraints = false
                        
                        
//                        if firstEx {
//                            labelForEx.topAnchor.constraint(equalTo: (self.listsForAny.last?.bottomAnchor)!, constant: 10).isActive = true
//                            firstEx = false
//                        } else {
//                            labelForEx.topAnchor.constraint(equalTo: (self.listsForAny.last?.bottomAnchor)!, constant: 1).isActive = true
//                        }
                        
                        labelForEx.topAnchor.constraint(equalTo: (self.listsForAny.last?.bottomAnchor)!, constant: 1).isActive = true
                        labelForEx.leadingAnchor.constraint(equalTo: self.customView.leadingAnchor, constant: 25).isActive = true
                        //labelForEx.heightAnchor.constraint(equalToConstant: 20)
                        
                        labelForEx.trailingAnchor.constraint(equalTo: self.customView.trailingAnchor, constant: -10).isActive = true
                        labelForEx.lineBreakMode = .byWordWrapping
                        labelForEx.setContentCompressionResistancePriority(NSLayoutConstraint.Priority(rawValue: 250), for: .horizontal)
                        
                        
                        labelForEx.font = NSFont(name: "Arial", size: 13)
                        labelForEx.isEditable = false
                        labelForEx.isHidden = false
                        labelForEx.isBordered = false
                        
                        
                        print(self.listsForAny.last?.stringValue)
                        
                        
                        
                        self.listsForAny.append(labelForEx)
                        
                        
                        
                        
                    }
                    
                    
                    counter += 1
                    
                    
                }
          
                
                
            }
            
 
            
            
        }
        print("qqqqq")
        
        
        
        self.customView.translatesAutoresizingMaskIntoConstraints = false
        
        var anchor = self.customView.bottomAnchor.constraint(equalTo: (self.listsForAny.last?.bottomAnchor)!, constant: 10)
        
        
        var lastOne = LastAnchor(anchor)
        
        lastOne.changeToTrue()
        
        self.listsForAnchor.append(lastOne)
        
        
        
        
        
        
        if self.firstTimeSearch {
            if let documentView = self.outputBox.documentView {
                documentView.scroll(NSPoint(x: 0, y: documentView.bounds.size.height))
                
            }
        }
        
        
        
        
   //endj
    }
    }
    
    
    
    
    
    @IBAction func search2(_ sender: Any) {
        
        self.searchCount += 1
        
        if searchCount >= 2 {
            firstTimeSearch = false
        }
        
        let finalList = wordList
        wordList = []
        listsForVocab = [] //이거 이렇게 해야되나????
        
        
        //print(finalList)
        let appId = "c2d1d1bc"
        let appKey = "abc2122fb2b6dde84207ad517289f74b"
        let language = "en"
        
        var wordsNotFound = [String]()
        
        var words = [Word]()
        var informationDict = [String: [[String]]]()
        
        var lastWord = false
        
        for hehe in finalList {
            //print(hehe)
            
            
            
            var countForDef = 0
            
            let word = hehe
            
            let word_id = word.lowercased() //word id is case sensitive and lowercase is required
            let url = URL(string: "https://od-api.oxforddictionaries.com:443/api/v1/entries/\(language)/\(word_id)")!
            var request = URLRequest(url: url)
            request.addValue("application/json", forHTTPHeaderField: "Accept")
            request.addValue(appId, forHTTPHeaderField: "app_id")
            request.addValue(appKey, forHTTPHeaderField: "app_key")
            
            
            //print(word)
            let session = URLSession.shared
            _ = session.dataTask(with: request, completionHandler: { data, response, error in
                if let response = response,
                    let data = data,
                    let jsonData = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) {
                    //print(response)
                    
                    
                    
                    
                    print(jsonData,"ohh")
                    //print("ZZZ")
                    var final = jsonData as! Dictionary<String, AnyObject>
                    
                    
                    var final2 = final["results"]! as! [Dictionary<String,Any>]
                    
                    
                    
                    var vocab = Vocab()
                    for i in final2 {
                        
                        
                        
                        informationDict[hehe] = []
                        
                        for e in i.keys {
                            
                            
                            
                            
                            if e == "lexicalEntries"{
                                
                                let lastOne = i[e] as! [Dictionary<String, Any>]
                                
                                for line in lastOne {
                                    
                                    
                                    
                                    for goo in line.keys {
                                        
                                        if goo == "pronunciations"{
                                            
                                            
                                            
                                            print(line[goo], "lalala")
                                            
                                            let forAudio = line[goo] as! [Dictionary<String, Any>]
                                            print("whatman", forAudio[0]["audioFile"]!, "endman")
                                            
                                            
                                            
                                            print(type(of: forAudio[0]["audioFile"]!), "yesss")
                                            
                                            var audio = forAudio[0]["audioFile"]! as! String
                                            
                                            self.listsForAudio.append(audio)
                                            
                                            vocab.audioDoesExist(audio)
                                            
                                            
                                            
                                            
                                            
                                            
                                        }
                                        
                                        
                                        if goo == "entries" {
                                            
                                            let secondOne = line[goo] as! [Dictionary<String, Any>]
                                            
                                            for line2 in secondOne {
                                                
                                                
                                                for whatup in line2.keys {
                                                    
                                                    
                                                    if whatup == "senses" {
                                                        let thirdOne = line2[whatup] as! [Dictionary<String, Any>]
                                                        
                                                        for p in thirdOne {
                                                            
                                                            for real in p {
                                                                
                                                                if real.key == "definitions" {
                                                                    var finalDef = real.value as! [String]
                                                                    
                                                                    informationDict[hehe]?.append(finalDef)
                                                                    
                                                                    //information.append([finalDef[0]])
                                                                    //informationDict[word_id]![countForWord].append(finalDef)
                                                                    countForDef += 1
                                                                    // print(information)
                                                                    
                                                                }
                                                                
                                                                
                                                                
                                                                
                                                                if real.key == "examples" {
                                                                    
                                                                    
                                                                    
                                                                    let cmon2 = real.value as! [Dictionary<String, Any>]
                                                                    for noo in cmon2 {
                                                                        for wordsMane in noo {
                                                                            
                                                                            if wordsMane.key == "text" {
                                                                                
                                                                                
                                                                                let example = wordsMane.value as! String
                                                                                
                                                                                informationDict[hehe]![countForDef-1].append("  \"" + example + "\"")
                                                                                
                                                                                
                                                                            }
                                                                            
                                                                        }
                                                                    }
                                                                    
                                                                }
                                                                
                                                                
                                                            }
                                                            
                                                            
                                                            
                                                        }
                                                        
                                                    }
                                                    
                                                }
                                                
                                            }
                                            
                                        }
                                        
                                    }
                                    
                                }
                                
                            }
                        }
                        
                        //여기에 assign
                        vocab.title = hehe
                        vocab.setDict(informationDict[hehe]!)
                        
                        print(vocab.title)
                        print("ppp")
                        //print(hehe, "shit")
                    }
                    
                    
                    //                    let word = Word(hehe, informationDict[hehe]!)
                    //                    words.append(word)
                    
                    self.listsForVocab.append(vocab)
                    
                    
                    if self.listsForVocab.count + wordsNotFound.count == finalList.count {
                        lastWord = true
                    }
                    
                    if lastWord == true {
                        
                        print(self.listsForVocab, "damn")
                        
                        self.Output(self.listsForVocab, wordsNotFound)
                        
                        
                        
                        
                    }
                    
                } else {
                    wordsNotFound.append(word_id)
                }
                
                
                
                
                
            }).resume()
            
            
        }
        
        
        
    }
    
    
    
    
    
            
            
            
}
        
        

    

    
    

    
    
    
    var a = false

    

    



//


class Word {
    
    
    var wordTitle:String?
    var information:[[String]]
    
    init(_ word:String,_ info:[[String]]) {
        self.wordTitle = word
        self.information = info
    }
    
}




