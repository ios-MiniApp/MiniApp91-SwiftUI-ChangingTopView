//
//  SignUpView.swift
//  MiniApp91-SwiftUI-ChangingTopView
//
//  Created by 前田航汰 on 2022/09/07.
//

import SwiftUI

struct SignUpView: View {
    @State var isMainActive: Bool = false

    var body: some View {
            VStack {
                
                Button(action: {
                    isMainActive = true
                }) {
                    Text("ログイン！")
                }.fullScreenCover(isPresented: $isMainActive) {
                    MainView().environmentObject(EnvironmentData())
                }.padding()

            }
    }
}
