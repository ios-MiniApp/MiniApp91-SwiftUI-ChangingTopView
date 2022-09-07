//
//  SubViewA1.swift
//  MiniApp91-SwiftUI-ChangingTopView
//
//  Created by 前田航汰 on 2022/09/07.
//

import SwiftUI

struct SubViewA1: View {
    @State var isActiveSubViewA2 = false
    
    var body: some View {
        
        NavigationLink(destination: SubViewA2(), isActive: $isActiveSubViewA2){
            Button(action: {
                isActiveSubViewA2 = true
            }) {
                Text("SubViewA1へ")
            }
        }.padding()
    }
}
