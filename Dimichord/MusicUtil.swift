//
//  MusicUtil.swift
//  MinorThirds
//
//  Created by Vinicius Mello on 03/07/15.
//  Copyright (c) 2015 Vinicius Mello. All rights reserved.
//

func noteName(_ note: Int) -> String {
    let notesFlat = ["C","Db","D","Eb","E","F","Gb","G","Ab","A","Bb","B"]
    return notesFlat[note % 12]
}

func midiToName(_ note : Int) -> String {
    let oct : Int = note/12 - 1
    if note <= 0 {
        return "n/a"
    } else {
        return noteName(note % 12)+"\(oct)"
    }
}

func blackNote(_ i : Int) -> Bool {
    let r = i % 12
    switch r {
    case 1, 3, 6, 8, 10:
        return true
    default:
        return false
    }
}

