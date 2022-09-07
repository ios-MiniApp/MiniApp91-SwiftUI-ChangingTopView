//
//  SubViewA3.swift
//  MiniApp91-SwiftUI-ChangingTopView
//
//  Created by 前田航汰 on 2022/09/07.
//

import SwiftUI

struct SubViewA3: View {
    @EnvironmentObject var environmentData: EnvironmentData

    var body: some View {
        Button("ようやくきましたね。A3ですよ"){
            print(environmentData.isMainActiveAEnvironment.wrappedValue)
            environmentData.isMainActiveAEnvironment.wrappedValue = false
            print(environmentData.isMainActiveAEnvironment.wrappedValue)
        }
    }
}
