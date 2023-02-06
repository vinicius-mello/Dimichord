//
//  ContentView.swift
//  Dimichord
//
//  Created by Vinicius Moreira on 17/05/20.
//  Copyright © 2020 Vinicius Mello. All rights reserved.
//

import SwiftUI

/*struct Row: View {
    let num : Int;
    init(num: Int) {
        self.num = num;
    }
    var body: some View {
        HStack() {
        ForEach((0...15), id: \.self) { j in
            Rectangle().cornerRadius(5).foregroundColor(.init(red: 0.59, green: 0.46, blue: 0.32))
                .tag((16*self.num+j))
        }
        }
    }
}*/

struct ContentView: View {
    var body: some View {
        Rectangle().foregroundColor(Color.init(BackgroundColor)).statusBar(hidden: true)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
