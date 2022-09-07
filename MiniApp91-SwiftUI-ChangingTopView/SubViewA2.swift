//
//  SubViewA2.swift
//  MiniApp91-SwiftUI-ChangingTopView
//
//  Created by 前田航汰 on 2022/09/07.
//

import SwiftUI


struct SubViewA2: View {
    @State var isActiveSubViewA3 = false

    var body: some View {
        NavigationLink(destination: SubViewA3(), isActive: $isActiveSubViewA3){
            Button(action: {
                isActiveSubViewA3 = true
            }) {
                Text("SubViewA2へ")
            }
        }.padding()
    }
}
