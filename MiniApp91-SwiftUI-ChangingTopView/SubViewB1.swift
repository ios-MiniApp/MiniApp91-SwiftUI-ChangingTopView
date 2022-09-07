//
//  SubViewB1.swift
//  MiniApp91-SwiftUI-ChangingTopView
//
//  Created by 前田航汰 on 2022/09/07.
//

import SwiftUI

struct SubViewB1: View {
    @State var isActiveSubViewB2 = false

    var body: some View {
        NavigationLink(destination: SubViewB2(), isActive: $isActiveSubViewB2){
            Button(action: {
                isActiveSubViewB2 = true
            }) {
                Text("SubViewB2へ")
            }
        }.padding()
    }
}
