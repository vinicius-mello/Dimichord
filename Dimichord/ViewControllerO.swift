//
//  ViewController.swift
//  Dimichord
//
//  Created by Vinicius Moreira on 17/05/20.
//  Copyright © 2020 Vinicius Mello. All rights reserved.
//
/*
import SwiftUI

var midi = VirtualSourceMidi("Dimichord")
//let BackgroundColor = UIColor(rgba: "#774F38")
let BackgroundColor = UIColor(hexString: "#333333")
let ShadowColor = UIColor.white //BackgroundColor.grayscaled().inverted()
let CColor = UIColor(hexString: "#EFDFBB")
//let BlackNoteColor = UIColor(hexString: "#E08E79")
let BlackNoteColor = UIColor(hexString: "555D50")
let WhiteNoteColor = UIColor(hexString: "#FFFFF0")
//let CColor = UIColor(hexString: "#30475e")
//let BlackNoteColor = UIColor(hexString: "#162447")
//let WhiteNoteColor = UIColor(hexString: "#ececec")
//let BlackNoteColor = UIColor(hexString: "#7d5a5a").darkened().tinted(amount: 0.1).lighter(amount: 0.1)
//let WhiteNoteColor = UIColor(hexString: "#fee2b3")
//let CColor = WhiteNoteColor.darkened(amount: 0.25).tinted(amount: 0.3)
//let Text1Color = UIColor(red: 0.90, green: 0.74, blue: 0.25, alpha: 1.0)
//let Text1Color = UIColor.black
let TextCColor = CColor.darkened(amount: 0.8)
let TextBlackColor = BlackNoteColor.lighter(amount: 0.5)
let TextWhiteColor = WhiteNoteColor.darkened(amount: 0.8)

class Key : UIView {
    private var _midiNote : Int = 0
    private var name : CATextLayer = CATextLayer()
    private var key : CAGradientLayer = CAGradientLayer()
    private var padding : CGFloat = 6
    override init(frame: CGRect) {
        super.init(frame: frame)
        key.cornerRadius = 20
        key.contentsScale = UIScreen.main.scale
        key.frame = CGRect(x: padding-3, y: padding, width: frame.width-padding, height: frame.height-padding)
        key.shadowColor = ShadowColor.cgColor
        key.shadowOpacity = 0.8
//        key.shadowOffset = CGSize(width: 3, height: -5)
        key.shadowRadius = 4
        key.shadowPath = UIBezierPath(roundedRect: key.frame, cornerRadius: 20).cgPath
        name.fontSize = 18
        name.font = "Verdana" as CFTypeRef?
        name.backgroundColor = UIColor.clear.cgColor
        name.foregroundColor = TextCColor.cgColor
        name.frame = CGRect(x: 0, y: padding, width: key.frame.width, height: key.frame.height-padding)
        name.alignmentMode = CATextLayerAlignmentMode.center
        name.contentsScale = UIScreen.main.scale
        key.addSublayer(name)
        self.layer.addSublayer(key)
    }
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    public var midiNote: Int {
        get {
            _midiNote
        }
        set(newMidiNote) {
            _midiNote = newMidiNote
            if blackNote(_midiNote) {
//                key.backgroundColor = BlackNoteColor.cgColor
                key.colors = [BlackNoteColor.cgColor,BlackNoteColor.darkened(amount: 0.07).cgColor ]
                name.foregroundColor = TextBlackColor.cgColor
            } else if(_midiNote%12 == 0 ) {
                //key.backgroundColor = CColor.cgColor
                key.colors = [CColor.cgColor,CColor.darkened(amount: 0.07).cgColor ]
                name.foregroundColor = TextCColor.cgColor
            } else {
                //key.backgroundColor = WhiteNoteColor.cgColor
                key.colors = [WhiteNoteColor.cgColor,WhiteNoteColor.darkened(amount: 0.07).cgColor ]
                name.foregroundColor = TextWhiteColor.cgColor
            }
            name.string = midiToName(_midiNote)
        }
    }
}

class Pad : UIView {
    public var pad : CAGradientLayer = CAGradientLayer()
    private var padding : CGFloat = 6
    override init(frame: CGRect) {
        super.init(frame: frame)
//        pad.backgroundColor = WhiteNoteColor.cgColor
        pad.colors = [WhiteNoteColor.cgColor,WhiteNoteColor.darkened(amount: 0.07).cgColor ]
        pad.cornerRadius = 20
        pad.contentsScale = UIScreen.main.scale
        pad.frame = CGRect(x: padding-3, y: padding, width: frame.width-padding, height: frame.height-padding)
        pad.shadowColor = ShadowColor.cgColor
        pad.shadowOpacity = 0.8
        pad.shadowPath = UIBezierPath(roundedRect: pad.frame, cornerRadius: 20).cgPath
//        pad.shadowOffset = CGSize(width: 3, height: 5)
        pad.shadowRadius = 4
        self.layer.addSublayer(pad)
    }
    convenience init() {
        self.init(frame: CGRect.zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class ViewController<T : View>: UIHostingController<T> {
    
    var activeKeys : [UITouch : (Int,Int)] = [:]
    var width : CGFloat = 0.0
    var height : CGFloat = 0.0
    var keyWidth : CGFloat = 0.0
    var keyHeight : CGFloat = 0.0
    var activeNotes : [Bool] = [Bool](repeating: false, count: 128)
    var currentChord : ChordType? = nil
    var currentRoot : Int = 0
    var currentBass : Int = 0
    var chordLabel : CATextLayer = CATextLayer()
    var pedalLabel : CATextLayer = CATextLayer()
    var pedal : Pad!
    var _level : CGFloat = 90
    var level : CGFloat {
        get {
            return _level
        }
        set(newLevel) {
            _level = min(max(newLevel, 0), 127)
            let r = _level/127.0
            //let h = (height/3-10)
            //levelBar.frame = CGRect(x: 3, y: h-h*r+5, width: width-2*keyWidth-6, height: h*r-5)
            let col = WhiteNoteColor.mixed(withColor: CColor, weight: r);
            self.pedal.pad.colors = [col.cgColor,col.darkened(amount: 0.07).cgColor ]
            midi?.sendBytes([0xD0,UInt8(level)])
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        width = UIScreen.main.bounds.width
        height = UIScreen.main.bounds.height
        keyWidth = width/16.0
        keyHeight = (2.0*height/3.0)/8.0
        let background = UIView(frame: CGRect(x: 0, y: 0, width: width, height: height))
        background.backgroundColor = BackgroundColor
        self.view.addSubview(background)
        for i in 0...7 {
            for j in 0...15 {
                let key = Key(frame: CGRect(x: CGFloat(j)*keyWidth, y: CGFloat(7-i)*keyHeight, width: keyWidth, height: keyHeight))
                key.midiNote = 3*j+i+35
                key.tag = 16*(i+1)+j
                key.isHidden = (i == 7) && (j<3)
                self.view.addSubview(key)
            }
        }
        
        pedal = Pad(frame: CGRect(x: keyWidth, y: 8*keyHeight, width: width-2*keyWidth, height: height/3-10))
        //levelBar.backgroundColor = CColor.cgColor
        //levelBar.colors = [CColor.cgColor,CColor.darkened(amount: 0.07).cgColor ]
        //levelBar.cornerRadius = 20
        level = 90
        //let circle = CAShapeLayer()
        //let rad : CGFloat = 124
        //circle.path = UIBezierPath(roundedRect: CGRect(x: -rad, y: -rad, width: 2*rad, height: 2*rad), cornerRadius: rad).cgPath
        //circle.fillColor = BackgroundColor.cgColor
        //circle.opacity = 1
        
        //let path = rosePath(p: [(60.0,1,0.0),(30.0,7,0.0),(20.0,-17,CGFloat.pi/2)], steps: 2000)
        //let path = rosePath(p: [(60.0,-2,0.0),(50.0,12,-CGFloat.pi/3),(40.0,5,CGFloat.pi/2)], steps: 1000)
        //let path = rosePath(p: [(80.0,-2,0.0),(40.0,5,0.0),(20.0,19,0.0)], steps: 210)
        //path.append(UIBezierPath(roundedRect: CGRect(x: -150, y: -150, width: 300, height: 300), cornerRadius: 150))
        //let rose = CAShapeLayer()
        //rose.path = path.cgPath
        
        //rose.lineWidth = 7
        //rose.contentsScale = UIScreen.main.scale
        //rose.fillColor = .none
        //rose.fillColor = BackgroundColor.cgColor
        //rose.strokeColor = BackgroundColor.cgColor
        //rose.position = CGPoint(x: pedal.frame.width/2, y: pedal.frame.height/2)
        //rose.lineDashPattern = [100,100]
        //circle.position = CGPoint(x: pedal.frame.width/2, y: pedal.frame.height/2)
        //circle.mask = rose
        //pedal.layer.addSublayer(rose)
        
        //pedal.layer.addSublayer(levelBar)
        let crank = Pad(frame: CGRect(x: 0, y: 8*keyHeight, width: keyWidth, height: height/3-10))
        
        let crank2 = Pad(frame: CGRect(x: 15*keyWidth, y: 8*keyHeight, width: keyWidth, height: height/3-10))
       
        let chord = Pad(frame: CGRect(x: 0, y: 0, width: 3*keyWidth, height: keyHeight))
        let arrowUp = CATextLayer()
        arrowUp.string = "▲"
        arrowUp.foregroundColor = TextWhiteColor.cgColor
        arrowUp.fontSize = 28
        arrowUp.font = "Verdana" as CFTypeRef?
        arrowUp.frame = CGRect(x: 0, y: 20, width: keyWidth, height: height/3-20)
        arrowUp.alignmentMode = .center
        let arrowDown = CATextLayer()
        arrowDown.string = "▼"
        arrowDown.foregroundColor = TextWhiteColor.cgColor
        arrowDown.fontSize = 28
        arrowDown.font = "Verdana" as CFTypeRef?
        arrowDown.frame = CGRect(x: 0, y: height/3-60, width: keyWidth, height: 60)
        arrowDown.alignmentMode = .center
        crank.layer.addSublayer(arrowUp)
        crank.layer.addSublayer(arrowDown)
        let swipeKeyboardUp = UISwipeGestureRecognizer(target: self, action: #selector(keyboardUp))
        swipeKeyboardUp.direction = .up
        crank.addGestureRecognizer(swipeKeyboardUp)

        let swipeKeyboardDown = UISwipeGestureRecognizer(target: self, action: #selector(keyboardDown))
        swipeKeyboardDown.direction = .down
        crank.addGestureRecognizer(swipeKeyboardDown)
        
        let tapKeyboardUp = UITapGestureRecognizer(target: self, action: #selector(keyboardOctave))
        tapKeyboardUp.numberOfTapsRequired = 2
        crank.addGestureRecognizer(tapKeyboardUp)
        
        self.view.addSubview(chord)
        self.view.addSubview(pedal)
        self.view.addSubview(crank)
        self.view.addSubview(crank2)
        
        chordLabel.frame = CGRect(x: 0,y: 26,width: 3*keyWidth,height: keyHeight)
        chordLabel.fontSize = 28
        chordLabel.font = "Verdana" as CFTypeRef?
        chordLabel.string = ""
        chordLabel.alignmentMode = .center
        chordLabel.backgroundColor = UIColor.clear.cgColor
        chordLabel.foregroundColor = TextWhiteColor.cgColor
        chordLabel.opacity = 1.0
        chordLabel.contentsScale = UIScreen.main.scale
        pedalLabel.frame = CGRect(x: 10,y: 26,width: 3*keyWidth-10,height: keyHeight)
        pedalLabel.fontSize = 28
        pedalLabel.font = "Verdana" as CFTypeRef?
        pedalLabel.string = ""
        pedalLabel.alignmentMode = .left
        pedalLabel.backgroundColor = UIColor.clear.cgColor
        pedalLabel.foregroundColor = TextWhiteColor.cgColor
        pedalLabel.opacity = 1.0
        pedalLabel.contentsScale = UIScreen.main.scale
        chord.layer.addSublayer(chordLabel)
        chord.layer.addSublayer(pedalLabel)
        // Do any additional setup after loading the view.
    }
    
    override var preferredScreenEdgesDeferringSystemGestures: UIRectEdge {
        return [.all]
    }
    
    func inPedal(_ pt : CGPoint) -> Bool {
       return (pt.x>keyWidth && pt.x<(width-keyWidth) && pt.y > 2*height/3)
    }
    
    func locationToGrid(_ pt : CGPoint) -> (Int,Int) {
        let j : Int = Int((pt.x)/keyWidth)
        let i : Int = 7-Int((pt.y)/keyHeight)
        return (i,j)
    }
    
    @objc func keyboardUp(gesture: UIGestureRecognizer) {
        print("midiNote(0,0)=",midiNote(0,0))
        if(midiNote(0,0)<22) {
            return
        }
        allNotesOff()
        for i in 0...7 {
            for j in 0...15 {
                let key : Key = self.view.viewWithTag(16*(i+1)+j) as! Key
                key.midiNote = key.midiNote - 1
            }
        }
        let crank = gesture.view!
        crank.transform = crank.transform.translatedBy( x: 0.0, y: -16.0  )
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            crank.transform = crank.transform.translatedBy( x: 0.0, y: 16.0  )
        }
    }
    
    @objc func keyboardOctave(gesture: UIGestureRecognizer) {
        if(gesture.state != .ended) {
            return
        }
        allNotesOff()
        print("midiNote(0,0)=",midiNote(0,0))
        let crank = gesture.view!
        let loc = gesture.location(in: crank)
        var dir : Int = 0
        if(loc.y<crank.frame.height/2 &&  midiNote(0,0)<=44) {
            dir = 12
        } else if(loc.y>crank.frame.height/2 &&  midiNote(0,0)>=33) {
            dir = -12
        }
        
        for i in 0...7 {
            for j in 0...15 {
                let key : Key = self.view.viewWithTag(16*(i+1)+j) as! Key
                key.midiNote = key.midiNote + dir
            }
        }
        let tr: CGFloat = ( dir<0 ? -1 : 1)*16.0
        crank.transform = crank.transform.translatedBy( x: 0.0, y: tr  )
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            crank.transform = crank.transform.translatedBy( x: 0.0, y: -tr  )
        }
    }

    @objc func keyboardDown(gesture: UIGestureRecognizer) {
        print("midiNote(0,0)=",midiNote(0,0))
        if(midiNote(0,0)>55) {
            return
        }
        allNotesOff()
        for i in 0...7 {
            for j in 0...15 {
                let key : Key = self.view.viewWithTag(16*(i+1)+j) as! Key
                key.midiNote = key.midiNote + 1
            }
        }
        let crank = gesture.view!
        crank.transform = crank.transform.translatedBy( x: 0.0, y: 16.0  )
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            crank.transform = crank.transform.translatedBy( x: 0.0, y: -16.0  )
        }
    }
    
    func allNotesOff() {
        for i in 0...127 {
            midiNoteOff(i)
        }
    }
    
    func midiNoteOn(_ m : Int) {
        if activeNotes[m] {
            midi?.sendBytes([0x80,UInt8(m),0])
        } else {
            activeNotes[m]=true
        }
        midi?.sendBytes([0x90,UInt8(m),UInt8(level)])
    }
    
    func midiNoteOff(_ m : Int) {
        //println("midi off: \(midiToName(m))")
        if activeNotes[m] {
            midi?.sendBytes([0x80,UInt8(m),0])
            activeNotes[m]=false
        }
    }
    
    func midiNote( _ i : Int, _ j : Int) -> Int {
        if let key : Key = self.view.viewWithTag((i+1)*16+j) as? Key {
            return key.midiNote
        }
        return 0
    }
    
    func pressKey(_ i : Int, _ j : Int) {
        if (i>=0 && j>=0) {
            if let key : Key = self.view.viewWithTag((i+1)*16+j) as? Key {
                key.transform = key.transform.translatedBy( x: 2.0, y: 8.0  )
                midiNoteOn(key.midiNote)
            }
        }
    }
    
    func releaseKey(_ i : Int, _ j : Int) {
        if (i>=0 && j>=0) {
            if let key : Key = self.view.viewWithTag((i+1)*16+j) as? Key {
                key.transform = key.transform.translatedBy( x: -2.0, y: -8.0  )
                midiNoteOff(key.midiNote)
            }
        }
    }
    
    func pressPedal() {
        let str = pedalLabel.string as! String
        if(str.last != "*") {
            midi?.sendBytes([0xB0,0x40,0x40])
            CATransaction.begin()
            pedalLabel.string = str+"*"
            CATransaction.commit()
        }
    }

    func releasePedal() {
        let str = pedalLabel.string as! String
        if(str.last == "*") {
            midi?.sendBytes([0xB0,0x40,0x00])
            CATransaction.begin()
            pedalLabel.string = str.dropLast()
            CATransaction.commit()
        }
    }

    func activateChord() {
        let chordName = currentChord!.format(currentRoot, bass: currentBass )
        CATransaction.begin()
        chordLabel.string = chordName
        CATransaction.commit()
    }
    
    func releaseChord() {
        currentChord = nil
        CATransaction.begin()
        chordLabel.string = ""
        CATransaction.commit()
    }
    
    func detectedChord() {
        if (activeKeys.count>=3) {
            if identifyChord() {
                activateChord()
            }
        }
    }
    
    func identifyChord() -> Bool {
        var keys : [(Int,Int)] = []
        var notes : [Int] = []
        for (_,k) in activeKeys {
            keys.append(k)
            notes.append(midiNote(k.0,k.1))
        }
        notes = listChord(notes)
        keys.sort { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 < $1.1 }
        var strKeys : String = ""
        let bass = keys[0]
        if (keys[1].0-keys[0].0)>2 {
            keys[0].0=(keys[0].0)+3
            keys[0].1=(keys[0].1)-1
            if (keys[1].0-keys[0].0)>2 {
                keys[0].0=(keys[0].0)+3
                keys[0].1=(keys[0].1)-1
            }
        }
        if (keys[1].1-keys[0].1)>4 {
            keys[0].1=(keys[0].1)+4
            if (keys[1].1-keys[0].1)>4 {
                keys[0].1=(keys[0].1)+4
            }
        }
        for k in keys {
            strKeys = strKeys+"(\(k.0-keys[0].0),\(k.1-keys[0].1))"
        }
        print(notesToString(notes))
        if let chord = chordTable[notesToString(notes)] {
            currentChord = chord.0
            currentBass = midiNote(bass.0,bass.1) % 12
            currentRoot = (currentBass + notes[chord.1]) % 12
            return true
        }
        else {
            currentChord = nil
            currentRoot = 0
            currentBass = 0
            return false
        }
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t: NSObject in touches {
            let touch = t as? UITouch
            let pt = touch!.location(in: self.view)
            let (i,j) = locationToGrid(pt)
            if(i>=0) {
                activeKeys[touch!]=(i,j)
                pressKey(i,j)
            } else {
                if(inPedal(pt)) {
                    pressPedal()
                }
            }
        }
        detectedChord()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t: NSObject in touches {
            let touch = t as? UITouch
            if let (i,j) = activeKeys[touch!] {
                activeKeys[touch!]=nil
                releaseKey(i,j)
            } else {
                releasePedal()
            }
        }
        let count = activeKeys.count
        if count == 0 {
            releaseChord()
        } else {
            detectedChord()
        }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        var flag = false
        for t: NSObject in touches {
            let touch = t as? UITouch
            let pt = touch!.location(in: self.view)
            let prev = touch!.previousLocation(in: self.view)
            if let (ai,aj) = activeKeys[touch!] {
                let (i,j) = locationToGrid(pt)
                if(i<0) {
                    activeKeys[touch!]=nil
                    releaseKey(ai,aj)
                    flag = true
                } else if i != ai || j != aj {
                    activeKeys[touch!]=nil
                    activeKeys[touch!]=(i,j)
                    pressKey(i,j)
                    releaseKey(ai,aj)
                    flag = true
                }
            } else {
                if(inPedal(pt)) {
                    level += 0.2*(prev.y - pt.y)
                    print("level: ", level)
                }
            }
        }
        if flag {
            detectedChord()
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        //println("CANCEL")
        for t: NSObject in touches {
            let touch = t as? UITouch
            //let pt = touch!.locationInView(self.view)
            if let (i,j) = activeKeys[touch!] {
                activeKeys[touch!]=nil
                releaseKey(i,j)
            } else {
                releasePedal()
            }
        }
        if activeKeys.isEmpty {
            releaseChord()
        } else {
            detectedChord()
        }
    }

    override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()
          // Dispose of any resources that can be recreated.
      }
      
}
*/
