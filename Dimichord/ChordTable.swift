//
//  ChordTable.swift
//  MinorThirds
//
//  Created by Vinicius Mello on 02/07/15.
//  Copyright (c) 2015 Vinicius Mello. All rights reserved.
//

class ChordType {
    var name : String = ""
    var symbol : String = ""
    var tones : [Int] = []
    init(name: String, symbol: String, tones: [Int]) {
        self.name = name
        self.symbol = symbol
        self.tones = tones
    }
    func format(_ root: Int, bass: Int) -> String {
        if root==bass {
            return "\(noteName(root))\(self.symbol)"
        } else {
            return "\(noteName(root))\(self.symbol)/\(noteName(bass))"
        }
    }
}

let CM = ChordType(name: "CM",
    symbol: "", tones: [0,4,7])
let Cm = ChordType(name: "Cm",
    symbol: "m", tones: [0,3,7])
let C7 = ChordType(name: "C7",
    symbol: "7", tones: [0,4,7,10])
let C7M = ChordType(name: "C7M",
    symbol: "7M", tones: [0,4,7,11])
let C6 = ChordType(name: "C6",
    symbol: "6", tones: [0,4,7,9])
let Cm6 = ChordType(name: "Cm6",
    symbol: "m6", tones: [0,3,7,9])
let Cm7 = ChordType(name: "Cm7",
    symbol: "m7", tones: [0,3,7,10])
let Cdim = ChordType(name: "Cdim",
    symbol: "°", tones: [0,3,6,9])
let Cmb5 = ChordType(name: "Cmb5",
    symbol: "m(b5)", tones: [0,3,6])
let Cm7b5 = ChordType(name: "Cm7b5",
    symbol: "m7(b5)", tones: [0,3,6,10])
//
let Cm79 = ChordType(name: "Cm79",
    symbol: "m7(9)", tones: [0,3,7,10,14])
let Cm69 = ChordType(name: "Cm69",
    symbol: "m6(9)", tones: [0,3,7,9,14])
let C713 = ChordType(name: "C713",
    symbol: "7(13)", tones: [0,4,7,10,21])
let C7b13 = ChordType(name: "C7b13",
    symbol: "7(b13)", tones: [0,4,7,10,20])
let C79 = ChordType(name: "C79",
    symbol: "7(9)", tones: [0,4,7,10,14])
let C7b9 = ChordType(name: "C7b9",
    symbol: "7(b9)", tones: [0,4,7,10,13])
let Cm711 = ChordType(name: "Cm711",
    symbol: "m7(11)", tones: [0,3,10,17])
let C749 = ChordType(name: "C749",
    symbol: "7(4)(9)", tones: [0,5,10,14])
let C7a11 = ChordType(name: "C7a11",
    symbol: "7(#11)", tones: [0,4,10,18])
let C71113 = ChordType(name: "C71113",
    symbol: "7(11)(13)", tones: [0,10,17,21])
//
let C7Ma11 = ChordType(name: "C7Ma11",
    symbol: "7M(#11)", tones: [0,4,11,18])
let C69 = ChordType(name: "C69",
    symbol: "6(9)", tones: [0,4,7,9,14])
let C7Ma5 = ChordType(name: "C7Ma5",
    symbol: "7M(#5)", tones: [0,4,8,11])
let C7a9 = ChordType(name: "C7a9",
    symbol: "7(#9)", tones: [0,4,10,15])
let C7M9 = ChordType(name: "C7M9",
    symbol: "7M(9)", tones: [0,4,11,14])
let C47 = ChordType(name: "C47",
    symbol: "4(7)", tones: [0,5,7,10])
let C9 = ChordType(name: "C9",
    symbol: "add9", tones: [0,4,7,14])
let Cm7b9 = ChordType(name: "Cm7b9",
    symbol: "m7(b9)", tones: [0,3,7,10,13])
let C7M6 = ChordType(name: "C7M6",
    symbol: "7M(6)", tones: [0,4,7,9,11])
let C7M69 = ChordType(name: "C7M69",
    symbol: "7M(6)(9)", tones: [0,4,7,9,11,14])
//
let C7M9a11 = ChordType(name: "C7M9a11",
    symbol: "7M(9)(#11)", tones: [0,4,11,14,18])
let C69a11 = ChordType(name: "C69a11",
    symbol: "6(9)(#11)", tones: [0,4,9,14,18])
let Ca5 = ChordType(name: "Ca5",
    symbol: "(#5)", tones: [0,4,8])
let Cm7911 = ChordType(name: "Cm7911",
    symbol: "m7(9)(11)", tones: [0,3,10,14,17])
let Cm6911 = ChordType(name: "Cm6911",
    symbol: "m6(9)(11)", tones: [0,3,9,14,17])
let Cm7M = ChordType(name: "Cm7M",
    symbol: "m(7M)", tones: [0,3,7,11])
let Cm7M9 = ChordType(name: "Cm7M9",
    symbol: "m(7M)(9)", tones: [0,3,7,11,14])
let Cm7M6 = ChordType(name: "Cm7M6",
    symbol: "m(7M)(6)", tones: [0,3,7,9,11])
let Cm7M911 = ChordType(name: "Cm7M911",
    symbol: "m(7M)(9)(11)", tones: [0,3,11,14,17])
let Cm9 = ChordType(name: "Cm9",
    symbol: "m(add9)", tones: [0,3,7,14])
//
let C4 = ChordType(name: "C4",
    symbol: "4", tones: [0,5,7])
let C7913 = ChordType(name: "C7913",
    symbol: "7(9)(13)", tones: [0,4,10,14,21])
let C79a11 = ChordType(name: "C79a11",
    symbol: "7(9)(#11)", tones: [0,4,10,14,18])
let C7a1113 = ChordType(name: "C7a1113",
    symbol: "7(#11)(13)", tones: [0,4,10,18,21])
let C7a5 = ChordType(name: "C7a5",
    symbol: "7(#5)", tones: [0,4,8,10])
let C7b5 = ChordType(name: "C7b5",
    symbol: "7(b5)", tones: [0,4,6,10])
let C7a59 = ChordType(name: "C7a59",
    symbol: "7(#5)(9)", tones: [0,4,8,10,14])
let C7b59 = ChordType(name: "C7b59",
    symbol: "7(b5)(9)", tones: [0,4,6,10,14])
let C7b913 = ChordType(name: "C7b913",
    symbol: "7(b9)(13)", tones: [0,4,7,10,13,21])
let C7a5b9 = ChordType(name: "C7a5b9",
    symbol: "7(#5)(b9)", tones: [0,4,8,10,13])
//
let C7a5a9 = ChordType(name: "C7a5a9",
    symbol: "7(#5)(#9)", tones: [0,4,8,10,15])
let C7b5b9 = ChordType(name: "C7b5b9",
    symbol: "7(b5)(b9)", tones: [0,4,6,10,13])
let C7b5a9 = ChordType(name: "C7b5a9",
    symbol: "7(b5)(#9)", tones: [0,4,6,10,15])
let C47913 = ChordType(name: "C47913",
    symbol: "4(7)(9)(13)", tones: [0,5,10,14,21])
let C47b9 = ChordType(name: "C47b9",
    symbol: "4(7)(b9)", tones: [0,5,10,13])
let C7b9a11 = ChordType(name: "C7b9a11",
    symbol: "7(b9)(#11)", tones: [0,4,10,13,18])
let C7b9a1113 = ChordType(name: "C7b9a1113",
    symbol: "7(b9)(#11)(13)", tones: [0,4,10,13,18,21])
let Cm7b59 = ChordType(name: "Cm7b59",
    symbol: "m7(b5)(9)", tones: [0,3,6,10,14])
let C7b9b13 = ChordType(name: "C7b9b13",
    symbol: "7(b9)(b13)", tones: [0,4,7,10,13,20])
let C7a9a11 = ChordType(name: "C7a9a11",
    symbol: "7(#9)(#11)", tones: [0,4,7,10,15,18])
//
let Cmb6 = ChordType(name: "Cmb6",
    symbol: "m(b6)", tones: [0,3,7,8])
let Cm5 = ChordType(name: "Cm5",
    symbol: "m(5)", tones: [0,3,7])
let C59 = ChordType(name: "C59",
    symbol: "5(9)", tones: [0,7,14])
let C5 = ChordType(name: "C5",
    symbol: "5", tones: [0,7,12])
let C8 = ChordType(name: "C8",
    symbol: "8", tones: [0,12,24])
let Cdimb13 = ChordType(name: "Cdimb13",
    symbol: "°(b13)", tones: [0,3,6,9,20])
let Cdim7M = ChordType(name: "Cdim7M",
    symbol: "°(7M)", tones: [0,3,6,9,11])
let Cdim9 = ChordType(name: "Cdim9",
    symbol: "°(9)", tones: [0,3,6,9,14])
let Cdim11 = ChordType(name: "Cdim11",
    symbol: "°(11)", tones: [0,3,6,9,17])

let chordTypes : [ChordType] = [
    CM,Cm,C7,C7M,C6,Cm6,Cm7,Cdim,Cmb5,Cm7b5,
    Cm79,Cm69,C713,C7b13,C79,C7b9,Cm711,C749,C7a11,C71113,
    C7Ma11,C69,C7Ma5,C7a9,C7M9,C47,C9,Cm7b9,C7M6,C7M69,
    C7M9a11,C69a11,Ca5,Cm7911,Cm6911,Cm7M,Cm7M9,Cm7M6,Cm7M911,Cm9,
    C4,C7913,C79a11,C7a1113,C7a5,C7b5,C7a59,C7b59,C7b913,C7a5b9,
    C7a5a9,C7b5b9,C7b5a9,C47913,C47b9,C7b9a11,C7b9a1113,Cm7b59,C7b9b13,C7a9a11,
    Cmb6,Cm5,C59,C5,C8,Cdimb13,Cdim7M,Cdim9,Cdim11]


let positionTable : [String : (ChordType,Int)] = [
    "(0,0)(0,4)(1,5)(1,6)" : (CM,0),
    "(0,0)(1,1)(1,2)(0,4)" : (CM,0),
    "(0,0)(1,2)(0,4)(1,5)" : (CM,0),
    "(0,0)(-1,3)(0,4)(0,5)" : (CM,1),
    "(0,0)(-1,3)(0,5)(-1,7)" : (CM,1),
    "(0,0)(-1,2)(0,3)(0,4)" : (CM,1),
    "(0,0)(0,3)(0,4)(-1,6)" : (CM,3),
    "(0,0)(1,2)(2,3)(2,4)" : (CM,1),
    "(0,0)(-2,3)(-1,4)(-1,5)" : (CM,1),
    "(0,0)(0,1)(-1,3)(0,4)" : (CM,2),
    "(0,0)(0,4)(-1,6)(0,7)" : (CM,2),
    "(0,0)(1,0)(2,1)(2,2)" : (CM,1),
    "(0,0)(1,4)(2,5)(2,6)" : (CM,1),
    "(0,0)(2,2)(1,4)(2,5)" : (CM,2),
    "(0,0)(2,1)(2,2)(1,4)" : (CM,3),
    "(0,0)(0,4)(1,5)(0,8)" : (CM,0),
    
    
    "(0,0)(0,1)(1,2)(0,4)" : (Cm,0),
    "(0,0)(0,1)(1,2)(0,5)" : (Cm,0),
    "(0,0)(1,2)(0,4)(0,5)" : (Cm,0),
    "(0,0)(0,4)(0,5)(1,6)" : (Cm,0),
    "(0,0)(1,2)(0,5)(1,6)" : (Cm,0),
    "(0,0)(0,3)(1,5)(0,7)" : (Cm,1),
    "(0,0)(-1,2)(-1,3)(0,4)" : (Cm,1),
    "(0,0)(-1,3)(0,4)(-1,6)" : (Cm,3),
    "(0,0)(0,4)(-1,6)(-1,7)" : (Cm,2),
    
    "(0,0)(1,1)(1,2)(1,3)" : (C7,0),
    "(0,0)(1,3)(1,5)(1,6)" : (C7,0),
    "(0,0)(1,1)(1,3)(0,4)" : (C7,0),
    "(0,0)(0,3)(-1,5)(0,6)" : (C7,2),
    "(0,0)(-1,3)(0,5)(0,6)" : (C7,1),
    "(0,0)(-1,2)(0,3)(0,5)" : (C7,1),
    "(0,0)(0,3)(0,5)(-1,6)" : (C7,3),
    "(0,0)(-1,1)(0,2)(0,3)" : (C7,1),
    "(0,0)(0,1)(-1,2)(0,3)" : (C7,2),
    "(0,0)(0,2)(0,3)(-1,5)" : (C7,3),
    "(0,0)(0,2)(-1,3)(0,4)" : (C7,2),
    "(0,0)(0,2)(-1,3)(0,5)" : (C7,2),
    "(0,0)(1,2)(1,3)(1,5)" : (C7,0),
    "(0,0)(0,1)(0,2)(-1,3)" : (C7,3),
    
    "(0,0)(1,1)(1,2)(2,3)" : (C7M,0),
    "(0,0)(2,3)(1,5)(1,6)" : (C7M,0),
    "(0,0)(1,2)(2,3)(1,5)" : (C7M,0),
    "(0,0)(-1,3)(0,5)(1,6)" : (C7M,1),
    "(0,0)(-1,2)(0,3)(1,5)" : (C7M,1),
    "(0,0)(0,3)(1,5)(-1,6)" : (C7M,3),
    "(0,0)(-1,2)(1,5)(0,7)" : (C7M,1),
    "(0,0)(-1,4)(1,5)(1,6)" : (C7M,0),
    
    "(0,0)(0,1)(1,2)(1,3)" : (Cm7,0),
    "(0,0)(1,3)(0,5)(1,6)" : (Cm7,0),
    "(0,0)(0,3)(-1,5)(-1,6)" : (Cm7,2),
    "(0,0)(1,2)(1,3)(0,5)" : (Cm7,0),
    "(0,0)(-1,2)(-1,3)(0,5)" : (Cm7,1),
    "(0,0)(0,1)(1,3)(0,4)" : (Cm7,0),
    "(0,0)(-1,2)(0,5)(-1,7)" : (Cm7,1),
    "(0,0)(-1,2)(0,5)(2,6)" : (Cm7,1),
    
    "(0,0)(0,1)(0,2)(0,3)" : (Cdim,0),
    "(0,0)(0,3)(0,5)(0,6)" : (Cdim,0),
    "(0,0)(0,2)(0,3)(0,5)" : (Cdim,0),
    //    "(0,0)(0,5)(0,6)(0,7)" : (Cdim,0),
    
    "(0,0)(0,1)(0,2)(1,3)" : (Cm7b5,0),
    //    "(0,0)(0,5)(0,6)(1,7)" : (Cm7b5,0),
    "(0,0)(1,3)(0,5)(0,6)" : (Cm7b5,0),

    "(0,0)(0,1)(1,3)(2,4)" : (Cm79,0),
    
    "(0,0)(1,3)(1,5)(0,7)" : (C713,0),
    
    "(0,0)(1,3)(1,5)(2,6)" : (C7b13,0),
    
    "(0,0)(1,3)(2,4)(1,5)" : (C79,0),
    "(0,0)(1,1)(1,3)(2,4)" : (C79,0),
    
    "(0,0)(1,3)(1,4)(1,5)" : (C7b9,0),
    "(0,0)(1,1)(1,3)(1,4)" : (C7b9,0),
    
    "(0,0)(0,1)(1,3)(2,5)" : (Cm711,0),
    "(0,0)(1,3)(0,5)(-1,6)" : (Cm711,0),
    
    "(0,0)(1,3)(2,4)(2,5)" : (C749,0),
    "(0,0)(2,1)(1,3)(2,4)" : (C749,0),
    
    "(0,0)(1,3)(1,5)(0,6)" : (C7a11,0),
    
    "(0,0)(1,3)(2,5)(3,6)" : (C71113,0),
    
    "(0,0)(2,3)(1,5)(0,6)" : (C7Ma11,0),
    "(0,0)(-1,4)(1,5)(0,6)" : (C7Ma11,0),
    
    "(0,0)(1,1)(0,3)(-1,5)" : (C69,0),
    "(0,0)(-2,2)(0,3)(-1,5)" : (C69,0),
    "(0,0)(0,3)(-1,5)(-2,6)" : (C69,0),
    "(0,0)(0,3)(2,4)(1,5)" : (C69,0),
    "(0,0)(2,1)(2,2)(1,3)" : (C69,2),
    "(0,0)(2,4)(1,5)(0,7)" : (C69,0),
    "(0,0)(2,4)(1,5)(1,6)(0,7)" : (C69,0),
    
    "(0,0)(-1,2)(-1,3)(-2,4)" : (C69,2),
    //    "(0,0)(2,5)(2,6)(1,7)" : (C69,2),
    "(0,0)(0,3)(-1,5)(-1,6)(-2,7)" : (C69,3),
    "(0,0)(-1,2)(0,3)(-1,5)(-2,7)" : (C69,1),
    "(0,0)(2,4)(2,5)(1,6)(0,7)" : (C69,2),
    
    "(0,0)(1,1)(2,2)(2,3)" : (C7Ma5,0),
    "(0,0)(2,2)(2,3)(1,5)" : (C7Ma5,0),
    "(0,0)(2,3)(1,5)(2,6)" : (C7Ma5,0),
    "(0,0)(-1,3)(1,5)(1,6)" : (C7Ma5,1),
    
    "(0,0)(1,1)(1,3)(0,5)" : (C7a9,0),
    //    "(0,0)(1,5)(1,7)(0,9)" : (C7a9,0),
    
    "(0,0)(1,1)(2,3)(2,4)" : (C7M9,0),
    "(0,0)(1,2)(2,3)(2,4)(1,5)" : (C7M9,0),
    "(0,0)(2,3)(2,4)(1,5)" : (C7M9,0),
    "(0,0)(1,1)(1,2)(2,3)(2,4)" : (C7M9,0),
    "(0,0)(-1,3)(0,5)(1,6)(1,7)" : (C7M9,1),
    "(0,0)(-1,3)(1,6)(1,7)" : (C7M9,1),
    "(0,0)(-1,2)(0,3)(1,5)(1,6)" : (C7M9,1),
    
    "(0,0)(1,1)(1,2)(0,3)" : (C6,0),
    "(0,0)(0,3)(1,5)(1,6)" : (C6,0),
    "(0,0)(1,1)(0,3)(0,4)" : (C6,0),
    "(0,0)(-1,3)(0,5)(-1,6)" : (C6,1),
    "(0,0)(-1,2)(0,3)(-1,5)" : (C6,1),
    "(0,0)(0,3)(0,4)(1,5)" : (C6,0),
    "(0,0)(1,2)(0,3)(1,5)" : (C6,0),
    //   "(0,0)(-1,6)(0,7)(-1,9)" : (C6,1),
    
    "(0,0)(0,1)(1,2)(0,3)" : (Cm6,0),
    "(0,0)(0,3)(0,5)(1,6)" : (Cm6,0),
    "(0,0)(0,4)(0,5)(0,7)" : (Cm6,0),
    //    "(0,0)(0,5)(1,6)(0,7)" : (Cm6,0),
    "(0,0)(0,1)(0,3)(0,4)" : (Cm6,0),
    "(0,0)(0,3)(1,5)(0,6)" : (Cm6,1),
    "(0,0)(-1,2)(-1,3)(-1,5)" : (Cm6,1),
    "(0,0)(-1,1)(-1,2)(-1,3)" : (Cm6,2),
    "(0,0)(0,3)(0,4)(0,5)" : (Cm6,0),
    //    "(0,0)(-1,5)(-1,6)(-1,7)" : (Cm6,2),
    
    
    "(0,0)(0,1)(0,3)(-1,5)" : (Cm69,0),
    "(0,0)(0,1)(0,3)(0,4)(-1,5)" : (Cm69,0),
    "(0,0)(0,2)(0,3)(-1,4)" : (Cm69,2),
    //    "(0,0)(0,6)(0,7)(-1,8)" : (Cm69,2),
    "(0,0)(0,3)(-1,4)(0,6)" : (Cm69,1),
    "(0,0)(-1,4)(0,6)(0,7)" : (Cm69,3),
    "(0,0)(-1,2)(-1,3)(-1,5)(-2,7)" : (Cm69,1),
    
    "(0,0)(1,3)(2,5)(1,6)" : (C47,0),
    "(0,0)(2,1)(1,3)(0,4)" : (C47,0),
    
    "(0,0)(1,2)(2,4)(1,5)" : (C9,0),
    "(0,0)(2,4)(1,5)(1,6)" : (C9,0),
    "(0,0)(1,1)(1,2)(2,4)" : (C9,0),
    "(0,0)(-1,2)(0,3)(1,6)" : (C9,1),
    "(0,0)(-1,3)(0,5)(1,7)" : (C9,1),
    
    "(0,0)(0,1)(1,3)(1,4)" : (Cm7b9,0),
    "(0,0)(1,3)(1,4)(0,5)" : (Cm7b9,0),
    
    "(0,0)(1,1)(0,3)(2,3)" : (C7M6,0),
    "(0,0)(0,3)(2,3)(1,5)" : (C7M6,0),
    "(0,0)(0,3)(1,5)(2,7)" : (C7M6,0),
    "(0,0)(1,1)(0,3)(-1,4)" : (C7M6,0),
    
    "(0,0)(1,1)(3,2)(2,3)(2,4)" : (C7M69,0),
    "(0,0)(1,1)(0,3)(-1,4)(-1,5)" : (C7M69,0),
    "(0,0)(0,3)(-1,4)(-1,5)(-2,6)" : (C7M69,0),
    "(0,0)(3,2)(2,3)(2,4)(1,5)" : (C7M69,0),
    "(0,0)(-2,2)(0,3)(-1,4)(-1,5)" : (C7M69,0),
    
    "(0,0)(2,3)(2,4)(1,5)(0,6)" : (C7M9a11,0),
    
    "(0,0)(0,3)(-1,5)(-2,6)(-3,7)" : (C69a11,0),
    "(0,0)(0,3)(2,4)(1,5)(0,6)" :(C69a11,0),
    
    "(0,0)(1,1)(2,2)(3,3)" : (Ca5,0),
    "(0,0)(1,1)(2,2)(0,4)" : (Ca5,0),
    "(0,0)(-2,2)(-1,3)(0,4)" : (Ca5,0),
    "(0,0)(-1,3)(0,4)(1,5)" : (Ca5,0),
    "(0,0)(0,4)(1,5)(2,6)" : (Ca5,0),
    
    //    "(0,0)(1,5)(2,6)(3,7)" : (Ca5,0),
    
    "(0,0)(0,1)(1,3)(2,4)(2,5)" : (Cm7911,0),
    
    "(0,0)(0,1)(0,3)(-1,5)(-1,6)" : (Cm6911,0),
    
    "(0,0)(0,1)(1,2)(2,3)" : (Cm7M,0),
    //    "(0,0)(0,5)(1,6)(2,7)" : (Cm7M,0),
    "(0,0)(-1,4)(0,5)(1,6)" : (Cm7M,0),
    "(0,0)(-2,3)(-1,4)(0,5)" : (Cm7M,0),
    "(0,0)(1,2)(2,3)(3,4)" : (Cm7M,0),
    "(0,0)(2,3)(3,4)(4,5)" : (Cm7M,0),
    
    "(0,0)(0,1)(1,2)(2,3)(2,4)" : (Cm7M9,0),
    //    "(0,0)(0,5)(1,6)(2,7)(2,8)" : (Cm7M9,0),
    "(0,0)(0,1)(2,3)(2,4)" : (Cm7M9,0),
    "(0,0)(0,1)(-1,4)(-1,5)" : (Cm7M9,0),
    
    
    "(0,0)(0,1)(0,3)(-1,4)" : (Cm7M6,0),
    //    "(0,0)(0,5)(0,7)(-1,8)" : (Cm7M6,0),
    "(0,0)(0,3)(-1,4)(0,5)" : (Cm7M6,0),
    "(0,0)(-1,4)(0,5)(0,7)" : (Cm7M6,0),
    
    "(0,0)(0,1)(2,3)(2,4)(2,5)" : (Cm7M911,0),
    "(0,0)(0,1)(-1,4)(-1,5)(-1,6)" : (Cm7M911,0),
    
    "(0,0)(0,1)(1,2)(2,4)" : (Cm9,0),
    "(0,0)(0,1)(2,4)(1,6)" : (Cm9,0),
    "(0,0)(1,2)(2,4)(0,5)" : (Cm9,0),
    "(0,0)(2,1)(2,4)(1,5)" : (Cm9,2),
    "(0,0)(-1,2)(-1,5)(-2,6)" : (Cm9,2),
    
    "(0,0)(2,1)(1,2)(0,4)" : (C4,0),
    "(0,0)(1,2)(0,4)(2,5)" : (C4,0),
    "(0,0)(1,2)(0,4)(-1,6)" : (C4,0),
    "(0,0)(1,2)(2,5)(1,6)" : (C4,0),
    "(0,0)(-1,2)(0,4)(1,6)" : (C4,0),
    "(0,0)(0,4)(2,5)(1,6)" : (C4,0),
    
    //"(0,0)(-1,2)(0,4)(1,5)" : (C4,0),
    //"(0,0)(-1,2)(0,4)(1,5)(1,6)" : (C4,0),
    //"(0,0)(2,1)(1,2)(1,5)" : (C4,0),
    
    "(0,0)(1,3)(2,4)(1,5)(0,7)" : (C7913,0),
    
    "(0,0)(1,3)(2,4)(1,5)(0,6)" : (C79a11,0),
    
    "(0,0)(1,3)(1,5)(0,6)(0,7)" : (C7a1113,0),
    
    "(0,0)(0,2)(1,3)(1,5)" : (C7b5,0),
    "(0,0)(1,1)(0,2)(1,3)" : (C7b5,0),
    //    "(0,0)(1,5)(0,6)(1,7)" : (C7b5,0),
    
    "(0,0)(1,1)(2,2)(1,3)" : (C7a5,0),
    //    "(0,0)(1,5)(2,6)(1,7)" : (C7a5,0),
    "(0,0)(2,2)(1,3)(1,5)" : (C7a5,0),
    
    "(0,0)(2,2)(2,4)(1,5)(1,7)" : (C7a59,0),
    "(0,0)(1,1)(2,2)(1,3)(2,4)" : (C7a59,0),
    "(0,0)(2,2)(1,3)(2,4)(1,5)" : (C7a59,0),
    
    "(0,0)(0,2)(1,3)(2,4)(1,5)" : (C7b59,0),
    
    "(0,0)(1,3)(1,4)(1,5)(0,7)" : (C7b913,0),
    
    "(0,0)(2,2)(1,3)(1,4)(1,5)" : (C7a5b9,0),
    "(0,0)(1,1)(2,2)(1,3)(1,4)" : (C7a5b9,0),
    
    "(0,0)(1,1)(2,2)(1,3)(0,5)" : (C7a5a9,0),
    
    "(0,0)(0,2)(1,3)(1,4)(1,5)" : (C7b5b9,0),
    
    "(0,0)(1,1)(0,2)(1,3)(0,5)" : (C7b5a9,0),
    
    "(0,0)(1,3)(2,4)(2,5)(3,6)" : (C47913,0),
    
    "(0,0)(2,1)(1,3)(1,4)" : (C47b9,0),
    "(0,0)(1,3)(1,4)(2,5)" : (C47b9,0),
    
    "(0,0)(0,1)(0,2)(1,3)(-1,5)" : (Cm7b59,0),
    "(0,0)(0,1)(0,2)(1,3)(2,4)" : (Cm7b59,0),
    
    "(0,0)(1,3)(1,4)(1,5)(2,6)" : (C7b9b13,0),
    
    "(0,0)(1,3)(1,4)(1,5)(0,6)" : (C7b9a11,0),
    
    "(0,0)(1,1)(1,3)(0,5)(0,6)" : (C7a9a11,0),
    
    "(0,0)(0,1)(1,2)(-1,3)" : (Cmb6,0),
    "(0,0)(0,4)(0,5)(-1,7)" : (Cmb6,0),
    
    "(0,0)(0,1)(1,2)(-2,3)" : (Cm5,0),
    
    "(0,0)(0,3)(0,5)(0,6)(-1,7)" : (Cdimb13,0),
    
    "(0,0)(0,1)(0,2)(0,3)(-1,4)" : (Cdim7M,0),
    "(0,0)(0,3)(0,5)(0,6)(-1,8)" : (Cdim7M,0),
    
    "(0,0)(0,1)(0,2)(0,3)(-1,5)" : (Cdim9,0),
    "(0,0)(0,1)(0,3)(-1,5)(0,6)" : (Cdim9,0),
    
    "(0,0)(0,2)(0,3)(0,5)(-1,6)" : (Cdim11,0),
    "(0,0)(1,2)(0,4)(-1,5)" : (C59,0),
    
    "(0,0)(0,2)(0,4)(0,5)" : (Cmb5,0),
]

let triadTable : [String : (ChordType,Int)] = [
    
    "(0,0)(0,4)(0,5)(0,6)" : (Cmb5,0),
    "(0,0)(0,3)(0,4)(0,5)" : (Cmb5,1),
    
    "(0,0)(1,1)(1,2)" : (CM,0),
    "(0,0)(-1,2)(0,3)" : (CM,1),
    "(0,0)(0,1)(-1,3)" : (CM,2),
    "(0,0)(2,1)(3,2)" : (CM,1),
    "(0,0)(0,3)(-1,6)" : (CM,2),
    "(0,0)(2,2)(1,5)" : (CM,2),
    "(0,0)(3,2)(2,5)" : (CM,2),
    "(0,0)(0,3)(2,5)" : (CM,2),
    "(0,0)(1,2)(1,5)" : (CM,0),
    "(0,0)(-1,3)(0,5)" : (CM,1),
    "(0,0)(2,2)(3,4)" : (CM,1),
    "(0,0)(0,1)(2,2)" : (CM,2),
    "(0,0)(1,1)(1,5)" : (CM,0),
    "(0,0)(-1,3)(-1,7)" : (CM,1),
    "(0,0)(2,2)(2,6)" : (CM,1),
    "(0,0)(1,1)(3,3)" : (CM,0),
    
    "(0,0)(0,1)(1,2)" : (Cm,0),
    "(0,0)(1,2)(3,4)" : (Cm,0),
    "(0,0)(1,2)(0,5)" : (Cm,0),
    "(0,0)(-1,2)(-1,3)" : (Cm,1),
    "(0,0)(1,1)(0,3)" : (Cm,2),
    "(0,0)(2,1)(2,2)" : (Cm,1),
    "(0,0)(1,1)(3,2)" : (Cm,2),
    "(0,0)(2,2)(2,5)" : (Cm,2),
    "(0,0)(-1,3)(-1,6)" : (Cm,2),
    "(0,0)(0,3)(1,5)" : (Cm,1),
    "(0,0)(0,3)(0,4)(1,5)" : (Cm,1),
    "(0,0)(0,1)(0,5)" : (Cm,0),
    "(0,0)(0,4)(0,7)" : (Cm,2),
    "(0,0)(0,3)(0,7)" : (Cm,1),
    
    "(0,0)(0,1)(0,2)" : (Cmb5,0),
    "(0,0)(0,1)(0,3)" : (Cmb5,2),
    "(0,0)(0,2)(0,5)" : (Cmb5,0),
    
    "(0,0)(1,2)(0,3)" : (Cm7,2),
    "(0,0)(1,3)(0,5)" : (Cm7,0),
    "(0,0)(0,1)(1,3)" : (Cm7,0),
    "(0,0)(1,3)(3,4)" : (Cm7,0),
    "(0,0)(-1,1)(-1,2)" : (Cm7,1),
    "(0,0)(2,4)(2,5)" : (Cm7,1),
    "(0,0)(0,3)(1,6)" : (Cm7,1),
    
    "(0,0)(-1,1)(0,2)" : (C7,1),
    "(0,0)(1,1)(1,3)" : (C7,0),
    "(0,0)(1,3)(1,5)" : (C7,0),
    "(0,0)(0,2)(-1,3)" : (C7,2),
    "(0,0)(2,2)(3,5)" : (C7,1),
    
    "(0,0)(1,1)(2,3)" : (C7M,0),
    "(0,0)(2,3)(1,5)" : (C7M,0),
    
    "(0,0)(1,1)(2,2)" : (Ca5,0),
    
    "(0,0)(2,1)(1,2)" : (C4,0),
    "(0,0)(1,2)(2,5)" : (C4,0),
    "(0,0)(1,2)(2,4)" : (C4,1),
    "(0,0)(0,4)(-1,6)" : (C4,0),
    
    "(0,0)(2,1)(1,3)" : (C47,0),
    "(0,0)(1,3)(2,5)" : (C47,0),
    
    "(0,0)(1,2)(0,4)(1,6)" : (C5,0),
    "(0,0)(1,2)(0,4)" : (C5,0),
    "(0,0)(0,4)(1,6)(0,8)" : (C5,0),
    "(0,0)(0,4)(1,6)" : (C5,0),
    
    "(0,0)(2,4)(1,5)" : (C9,0),
    "(0,0)(1,1)(2,4)" : (C9,0),
    
    //One Note
    "(0,0)(0,4)(0,8)" : (C8,0),
    //Two Notes
    "(0,0)(0,4)(1,5)" : (CM,0),
    "(0,0)(-1,3)(0,4)" : (CM,1),
    "(0,0)(0,4)(0,5)" : (Cm,0),
    "(0,0)(0,1)(0,4)" : (Cm,0),
    "(0,0)(1,1)(0,4)" : (CM,0),
    "(0,0)(0,3)(0,4)" : (Cm,1),
    "(0,0)(0,4)(2,5)" : (C4,0),
    //"(0,0)(1,2)(1,3)" : (Cm,1),
]

let incompletePositionTable : [String : (ChordType,Int,[(Int,Int)])] = [
    "(0,0)(0,3)(-1,4)(-1,5)" : (C7M69,0,[(-2,2)]),
    "(0,0)(0,3)(0,4)(-1,5)" : (C69,0,[(-2,2)]),
    "(0,0)(2,2)(2,4)(1,5)" : (C7a59,0,[(1,3)]),
    "(0,0)(1,3)(0,4)(1,5)" : (C7,0,[(1,2)]),
    "(0,0)(-1,4)(-1,5)(0,6)" : (C7M9a11,0,[(1,5)]),
    "(0,0)(2,3)(2,4)(3,5)" : (C7M9a11,0,[(1,5)]),
    "(0,0)(0,1)(0,3)(-1,6)" : (Cm6911,0,[(-1,5)]),
    "(0,0)(-1,4)(-1,5)(-1,6)" : (Cm7M911,0,[(0,1)]),
    "(0,0)(1,3)(2,4)(3,6)" : (C7913,0,[(1,1)]),
    "(0,0)(0,2)(2,4)(1,5)" : (C7b59,0,[(1,3)]),
    "(0,0)(0,2)(1,3)(2,4)" : (C7b59,0,[(1,5)]),
    "(0,0)(1,4)(1,5)(0,7)" : (C7b913,0,[(1,3)]),
    "(0,0)(1,1)(2,2)(1,4)" : (C7a5b9,0,[(1,3)]),
    "(0,0)(2,2)(1,3)(1,4)" : (C7a5b9,0,[(1,1)]),
    "(0,0)(2,2)(1,4)(1,5)" : (C7a5b9,0,[(1,3)]),
    "(0,0)(1,2)(1,4)(0,6)" : (C7a5b9,0,[(1,1),(1,3)]),
    "(0,0)(1,1)(2,2)(0,5)" : (C7a5a9,0,[(1,3)]),
    "(0,0)(1,1)(2,2)(3,4)" : (C7a5a9,0,[(1,3)]),
    "(0,0)(0,2)(1,4)(1,5)" : (C7b5b9,0,[(1,3)]),
    "(0,0)(0,2)(1,3)(1,4)" : (C7b5b9,0,[(1,5)]),
    "(0,0)(0,2)(1,3)(0,5)" : (C7b5a9,0,[(1,1)]),
    "(0,0)(-1,1)(-1,2)(0,3)" : (C47913,0,[(1,-1)]),
    "(0,0)(2,4)(2,5)(3,6)" : (C47913,0,[(1,3)]),
    "(0,0)(1,2)(1,4)(1,5)" : (C7b9,0,[(1,3)]),
    "(0,0)(1,4)(1,5)(1,6)" : (C7b9,0,[(1,3)]),
    "(0,0)(1,2)(1,4)(0,5)" : (C7a9,0,[(1,1),(1,3)]),
    "(0,0)(0,4)(0,5)(-1,6)" : (Cm711,0,[(1,3)]),
    "(0,0)(1,4)(0,6)(0,7)" : (C7b9a1113,0,[(1,1),(1,3)]),
    "(0,0)(0,1)(0,2)(-1,5)" : (Cm7b59,0,[(1,3)]),
    "(0,0)(0,1)(0,2)(2,4)" : (Cm7b59,0,[(1,3)]),
    "(0,0)(1,4)(1,5)(2,6)" : (C7b9b13,0,[(1,3)]),
    "(0,0)(1,1)(0,5)(0,6)" : (C7a9a11,0,[(1,3)]),
    "(0,0)(2,4)(1,5)(0,6)" : (C79a11,0,[(1,3)]),
    //    "(0,0)(1,1)(2,3)(2,4)" : (C7M9,0,[(1,2)])
]

class Position {
    var chord : ChordType
    var keys : [(Int,Int)]
    var extraKeys : [(Int,Int)]
    var root : Int
    init(chord: ChordType, keys: [(Int,Int)], extraKeys : [(Int,Int)], root : Int) {
        self.chord = chord
        self.keys = keys
        self.extraKeys = extraKeys
        self.root = root
    }
}

var allPositions : [Position]! = nil

func parseKeys(_ keys : String) -> [(Int,Int)] {
    let woutlast = String(keys.dropLast())
    let woutfirst = String(woutlast.dropFirst())
    let akeys = woutfirst.components(separatedBy: ")(")
    var result : [(Int,Int)] = []
    for i in akeys {
        let p=i.components(separatedBy: ",")
        let pa : (Int,Int) = (Int(p[0])!,Int(p[1])!)
        result.append(pa)
    }
    //print(result)
    return result
}

func fillAllPositions() -> [Position] {
    var lallPositions : [Position] = []
    for (k,t) in positionTable {
        lallPositions.append(Position(chord: t.0, keys: parseKeys(k), extraKeys: [], root: t.1))
    }
    for (k,t) in triadTable {
        lallPositions.append(Position(chord: t.0, keys: parseKeys(k), extraKeys: [], root: t.1))
    }
    for (k,t) in incompletePositionTable {
        lallPositions.append(Position(chord: t.0, keys: parseKeys(k), extraKeys: t.2, root: t.1))
    }
    lallPositions.sort { $0.chord.symbol < $1.chord.symbol }
    return lallPositions
}


let chordTable : [ String : (ChordType,Int)] = [
    "0,5" : (C4,0),
    "0,5,7" : (C4,0),
    //"0,7,14" : (C4,1),
    "0,7,17" : (C4,0),
    "0,10,17" : (C47,0),
    "0,7,10,17" : (C47,0),
    "0,10,17,19" : (C47,0),
    "0,5,10" : (C47,0),
    "0,5,7,10" : (C47,0),
    "0,5,10,19" : (C47,0),
    "0,10,14,17,21" : (C47913,0),
    "0,5,10,14,21" : (C47913,0),
    "0,1,5,10" : (C47b9,0),
    "0,10,13,17" : (C47b9,0),
    "0,7,10,13,17" : (C47b9,0),
    "0,5,10,13" : (C47b9,0),
    "0,5,7,10,13" : (C47b9,0),
    "0,5,7,13,22" : (C47b9,0),
    "0,5,13,22" : (C47b9,0),
    "0,7,17,25,34" : (C47b9,0),
    "0,7,13,17,22" : (C47b9,0),
    "0,7,17,22,25" : (C47b9,0),
    
    "0,7" : (C5,0),
    "0,7,14" : (C59,0),
    "0,4,7,9" : (C6,0),
    "0,7,16,21" : (C6,0),
    "0,5,9,14" : (C6,1),
    "0,7,9,16" : (C6,0),
    "0,8,15,17" : (C6,1),
    "0,9,16,19" : (C6,0),
    "0,2,4,7,9" : (C69,0),
    "0,2,4,9" : (C69,0),
    "0,2,5,7,9" : (C69,2),
    "0,4,9,14" : (C69,0),
    "0,5,8,10" : (C69,2),
    "0,5,9,14,19" : (C69,1),
    "0,9,14,16" : (C69,0),
    "0,4,7,9,14" : (C69,0),
    "0,9,14,17,19" : (C69,3),
    "0,9,14,16,18" : (C69a11,0),
    "0,4,9,14,18" : (C69a11,0),
    "0,4,7,9,14,18" : (C69a11,0),
    "0,10,16" : (C7,0),
    "0,10,16,19" : (C7,0),
    "0,4,10" : (C7,0),
    "0,4,10,19" : (C7,0),
    "0,4,7,10" : (C7,0),
    "0,7,10,16" : (C7,0),
    "0,7,16,22" : (C7,0),
    "0,2,6" : (C7,1),
    "0,2,6,9" : (C7,1),
    "0,3,5,9" : (C7,2),
    "0,3,6,8" : (C7,3),
    "0,3,8,18" : (C7,2),
    "0,5,9,15" : (C7,1),
    "0,6,8" : (C7,2),
    "0,6,8,15" : (C7,2),
    "0,6,9,14" : (C7,3),
    "0,9,18,26" : (C7,3),
    "0,8,15,18" : (C7,1),
    "0,8,18" : (C7,1),
    "0,9,14,18" : (C7,2),
    "0,9,15,17" : (C7,3),
    "0,6,14" : (C7,2),
    "0,11,17,19" : (C7,3),
    "0,2,9,18" : (C7,1),
    "0,7,14,17,23" : (C7,1),
    "0,7,17,23,26" : (C7,1),
    "0,6,14,21" : (C7,2),
    
    "0,10,17,21" : (C71113,0),
    
    "0,10,16,21" : (C713,0),
    "0,10,16,19,21" : (C713,0),
    "0,4,10,21" : (C713,0),
    "0,4,7,10,21" : (C713,0),
    "0,7,10,16,21" : (C713,0),
    "0,10,14,17" : (C749,0),
    "0,5,10,14" : (C749,0),
    "0,2,5,10" : (C749,0),
    "0,7,14,17,22": (C749,0),
    "0,10,14,16" : (C79,0),
    "0,4,10,14" : (C79,0),
    "0,4,7,10,14" : (C79,0),
    "0,2,4,10" : (C79,0),
    "0,2,4,7,10" : (C79,0),
    "0,10,14,16,21" : (C7913,0),
    "0,4,10,14,21" : (C7913,0),
    "0,10,14,16,18" : (C79a11,0),
    "0,4,10,14,18" : (C79a11,0),
    "0,11,16" : (C7M,0),
    "0,11,16,19" : (C7M,0),
    "0,4,11" : (C7M,0),
    "0,4,7,11" : (C7M,0),
    "0,5,16,21" : (C7M,1),
    "0,5,9,16" : (C7M,1),
    "0,7,11,16" : (C7M,0),
    "0,8,15,19" : (C7M,1),
    "0,8,19" : (C7M,1),
    "0,7,8,15" : (C7M,2),
    "0,9,16,17" : (C7M,3),
    "0,4,9,11" : (C7M6,0),
    "0,9,11,16" : (C7M6,0),
    "0,9,16,23" : (C7M6,0),
    "0,4,9,11,14" : (C7M69,0),
    "0,9,11,14,16" : (C7M69,0),
    "0,4,9,14,23" : (C7M69,0),
    "0,4,7,9,11,14" : (C7M69,0),
    "0,4,9,14,19,23" : (C7M69,0),
    "0,4,9,19,23,26" : (C7M69,0),
    "0,11,14,16" : (C7M9,0),
    "0,4,11,14" : (C7M9,0),
    "0,4,7,11,14" : (C7M9,0),
    "0,5,9,16,19" : (C7M9,1),
    "0,7,11,14,16" : (C7M9,0),
    "0,8,15,19,22" : (C7M9,1),
    "0,8,19,22" : (C7M9,1),
    "0,11,14,16,18" : (C7M9a11,0),
    "0,4,11,14,18" : (C7M9a11,0),
    "0,11,16,18" : (C7Ma11,0),
    "0,11,16,20" : (C7Ma5,0),
    "0,4,8,11" : (C7Ma5,0),
    "0,8,11,16" : (C7Ma5,0),
    "0,8,16,19" : (C7Ma5,1),
    "0,10,16,18" : (C7a11,0),
    "0,4,10,18" : (C7a11,0),
    "0,4,7,10,18" : (C7a11,0),
    "0,10,16,18,21" : (C7a1113,0),
    "0,4,8,10" : (C7a5,0),
    "0,8,10,16" : (C7a5,0),
    "0,6,10,14" : (C7a5,3),
    "0,6,14,22" : (C7a5,2),
    "0,2,6,10" : (C7a5,1),
    "0,4,8,10,14" : (C7a59,0),
    "0,8,10,14,16" : (C7a59,0),
    "0,8,14,16,22" : (C7a59,0),
    "0,4,8,10,15" : (C7a5a9,0),
    "0,6,10,14,17" : (C7a5a9,3),
    "0,4,8,10,13" : (C7a5b9,0),
    "0,8,10,13,16" : (C7a5b9,0),
    "0,4,10,15" : (C7a9,0),
    "0,4,7,10,15" : (C7a9,0),
    "0,3,4,10" : (C7a9,0),
    "0,4,10,15,18" : (C7a9a11,0),

    "0,10,16,20" : (C7b13,0),
    "0,4,10,20" : (C7b13,0),
    "0,4,7,10,20" : (C7b13,0),
    "0,7,10,16,20" : (C7b13,0),
    "0,7,16,20,22" : (C7b13,0),
    
    "0,4,6,10" : (C7b5,0),
    "0,6,10,16" : (C7b5,0),
    "0,4,6,10,14" : (C7b59,0),
    "0,6,10,14,16" : (C7b59,0),
    "0,4,6,10,15" : (C7b5a9,0),
    "0,4,6,10,13" : (C7b5b9,0),
    "0,6,10,13,16" : (C7b5b9,0),
    "0,10,13,16" : (C7b9,0),
    "0,4,10,13" : (C7b9,0),
    "0,1,4,10" : (C7b9,0),
    "0,4,7,10,13" : (C7b9,0),
    "0,1,4,7,10" : (C7b9,0),
    "0,10,13,16,21" : (C7b913,0),
    "0,10,13,16,18" : (C7b9a11,0),
    "0,10,13,16,20" : (C7b9b13,0),
    "0,4,10,13,20" : (C7b9b13,0),
    "0" : (C8,0),
    "0,2,4" : (C9,0),
    "0,2,4,7" : (C9,0),
    "0,4,14" : (C9,0),
    "0,4,7,14" : (C9,0),
    "0,5,9,19" : (C9,1),
    "0,7,14,16" : (C9,0),
    "0,8,15,22" : (C9,1),
    "0,1,5,8" : (CM,1),
    "0,3,8" : (CM,2),
    "0,4" : (CM,0),
    "0,4,7" : (CM,0),
    "0,5,8,13" : (CM,3),
    "0,5,9" : (CM,1),
    "0,7,11,14" : (CM,1),
    "0,2,7,11" : (CM,2),
    "0,11,14,19" : (CM,3),
    "0,7,11,14,17" : (C7,1),
    "0,7,11,17" : (C7,1),
    "0,5,15,21" : (C7,1),
    "0,7,16" : (CM,0),
    "0,8" : (CM,1),
    "0,8,13,17" : (CM,2),
    "0,8,15" : (CM,1),
    "0,9,17" : (CM,2),
    "0,11,19,26" : (CM,2),
    "0,7,14,23" : (CM,1),
    "0,4,8" : (Ca5,0),
    "0,8,16" : (Ca5,0),
    "0,3,6,9" : (Cdim,0),
    "0,3,9,18" : (Cdim,0),
    "0,6,15,21" : (Cdim,0),
    "0,6,9,15" : (Cdim,0),
    "0,8,14,17,23" : (Cdim,2),
    "0,9,15,18" : (Cdim,0),
    "0,6,9,15,17" : (Cdim11,0),
    "0,3,6,9,11" : (Cdim7M,0),
    "0,9,15,18,23" : (Cdim7M,0),
    "0,3,6,9,14" : (Cdim9,0),
    "0,3,9,14,18" : (Cdim9,0),
    "0,9,15,18,20" : (Cdimb13,0),
    "0,11,17,20,26" : (Cdim,1),
    "0,3" : (Cm,0),
    "0,3,7" : (Cm,0),
    "0,4,9" : (Cm,2),
    "0,5,8" : (Cm,1),
    "0,7,15" : (Cm,0),
    "0,8,17" : (Cm,2),
    "0,9" : (Cm,1),
    "0,9,16" : (Cm,1),
    "0,7,14,22": (Cm,1),
    "0,2,5,8" : (Cm6,2),
    "0,6,16,21" : (Cm6,3),
    "0,4,6,9" : (Cm6,3),
    "0,6,9,16" : (Cm6,2),
    "0,4,9,18" : (Cm6,2),
    "0,3,7,9" : (Cm6,0),
    "0,5,8,14" : (Cm6,1),
    "0,9,15,19" : (Cm6,0),
    "0,9,16,18" : (Cm6,1),
    "0,3,9,19" : (Cm6,0),
    "0,11,18,21" : (Cm69,3),
    "0,3,9,14" : (Cm69,0),
    "0,5,8,14,19" : (Cm69,1),
    "0,6,9,11" : (Cm69,2),
    "0,9,11,18" : (Cm69,1),
    "0,3,9,14,17" : (Cm6911,0),
    "0,10,15" : (Cm7,0),
    "0,10,15,19" : (Cm7,0),
    "0,2,5" : (Cm7,1),
    "0,2,9,17" : (Cm7,1),
    "0,3,10" : (Cm7,0),
    "0,3,7,10" : (Cm7,0),
    "0,5,15,20" : (Cm7,1),
    "0,5,8,15" : (Cm7,1),
    "0,7,10,15" : (Cm7,0),
    "0,7,9" : (Cm7,2),
    "0,9,14,17" : (Cm7,2),
    "0,9,19" : (Cm7,1),
    "0,5,14" : (Cm7,2),
    "0,10,19,27" : (Cm7,0),
    "0,7,15,22" : (Cm7,0),
    
    "0,10,15,17" : (Cm711,0),
    "0,3,10,17" : (Cm711,0),
    "0,5,10,15,19" : (Cm711,0),
    "0,5,10,15" : (Cm711,0),
    "0,3,7,10,17" : (Cm711,0),
    "0,3,10,17,19" : (Cm711,0),
    "0,5,14,19" : (Cm711,2),
    "0,3,10,14" : (Cm79,0),
    "0,3,7,10,14" : (Cm79,0),
    "0,2,10,15" : (Cm79,0),
    "0,3,10,14,17" : (Cm7911,0),
    "0,3,7,10,14,17" : (Cm7911,0),
    "0,11,15,19" : (Cm7M,0),
    "0,3,7,11" : (Cm7M,0),
    "0,7,11,15" : (Cm7M,0),
    "0,8,9,16" : (Cm7M,2),
    "0,11,15,21" : (Cm7M6,0),
    "0,3,9,11" : (Cm7M6,0),
    "0,9,11,15" : (Cm7M6,0),
    "0,3,11,14" : (Cm7M9,0),
    "0,3,7,11,14" : (Cm7M9,0),
    "0,3,11,14,17" : (Cm7M911,0),
    "0,3,11,14,17,19" : (Cm7M911,0),
    "0,3,7,11,14,17" : (Cm7M911,0),
    "0,10,15,18" : (Cm7b5,0),
    "0,3,6,10" : (Cm7b5,0),
    "0,6,10,15" : (Cm7b5,0),
    "0,8,14,17" : (Cm7b5,2),
    "0,10,18,27" : (Cm7b5,0),
    "0,3,6,10,14" : (Cm7b59,0),
    "0,10,13,15" : (Cm7b9,0),
    "0,3,10,13" : (Cm7b9,0),
    "0,3,7,10,13" : (Cm7b9,0),
    "0,10,15,25" : (Cm7b9,0),
    "0,3,14,19" : (Cm9,0),
    "0,3,7,14" : (Cm9,0),
    "0,5,14,16" : (Cm9,2),
    "0,7,14,15" : (Cm9,0),
    "0,7,15,26" : (Cm9,0),
    "0,3,6" : (Cmb5,0),
    "0,3,9" : (Cmb5,2),
    "0,6,15" : (Cmb5,0),
    "0,9,15" : (Cmb5,1),
    "0,6,9" : (Cmb5,1),
    "0,3,7,8" : (Cmb6,0),
]
func listChord(_ notes: [Int]) -> [Int] {
    var notes = notes
    notes.sort()
    let firstNote = notes.first
    var pitchClass = [Bool](repeating: false, count: 12)
    var chordNotes : [Int] = []
    var pn : Int = 0
    for i in notes {
        var n = i - firstNote!
        let pc = n % 12
        while (n - pn)>=12 {
            n = n - 12
        }
        if !pitchClass[pc] {
            pitchClass[pc] = true
            chordNotes.append(n)
            /*            if n>0 {
                chordNotes = chordNotes + ",\(n)"
            } else {
                chordNotes = "0"
            }
*/
            pn = n
        }
    }
    return chordNotes
}

func notesToString(_ notes : [Int]) -> String {
    var s : String = ""
    for i in notes {
        if i>0 {
            s = s + ",\(i)"
        } else {
            s = "0"
        }
    }
    return s
}

func genChordTable() {
    var l : [String] = []
    for (s,_) in chordTable {
        l.append(s)
    }
    l.sort { (a,b) -> Bool in
        (chordTable[a]!.0.name < chordTable[b]!.0.name) || ((chordTable[a]!.0.name == chordTable[b]!.0.name) && a < b)
    }
    for s in l {
        let a = chordTable[s]
        print("\"\(s)\" : (\(a!.0.name),\(a!.1)),")
    }
}
