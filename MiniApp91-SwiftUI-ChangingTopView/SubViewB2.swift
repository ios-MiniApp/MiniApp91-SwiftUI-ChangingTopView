//
//  SubViewB2.swift
//  MiniApp91-SwiftUI-ChangingTopView
//
//  Created by 前田航汰 on 2022/09/07.
//

import SwiftUI

struct SubViewB2: View {
    @EnvironmentObject var environmentData: EnvironmentData

    var body: some View {
        Button("ようやくきましたね。B2ですよ"){
            environmentData.isMainActiveBEnvironment.wrappedValue = false
        }
    }

}
