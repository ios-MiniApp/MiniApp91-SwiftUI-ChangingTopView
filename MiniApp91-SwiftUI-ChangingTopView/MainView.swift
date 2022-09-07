//
//  Main.swift
//  MiniApp91-SwiftUI-ChangingTopView
//
//  Created by 前田航汰 on 2022/09/07.
//

import SwiftUI
class EnvironmentData: ObservableObject {
    @Published var isMainActiveAEnvironment: Binding<Bool> = Binding<Bool>.constant(false)
    @Published var isMainActiveBEnvironment: Binding<Bool> = Binding<Bool>.constant(false)
}

struct MainView: View {
    @State var isActiveSubViewA1: Bool = false
    @State var isActiveSubViewB1: Bool = false
    @EnvironmentObject var environmentData: EnvironmentData
    @State var isSignUpActive: Bool = true

    var body: some View {
        NavigationView {
            VStack {

                NavigationLink(destination: SubViewA1(), isActive: $isActiveSubViewA1){
                    Button(action: {
                        isActiveSubViewA1 = true
                        environmentData.isMainActiveAEnvironment = $isActiveSubViewA1
                    }) {
                        Text("SubViewA1へ")
                    }
                }.padding()

                NavigationLink(destination: SubViewB1(), isActive: $isActiveSubViewB1){
                    Button(action: {
                        isActiveSubViewB1 = true
                        environmentData.isMainActiveBEnvironment = $isActiveSubViewB1
                    }) {
                        Text("SubViewB1へ")
                    }
                }.padding()
            }
        }
    }
}

