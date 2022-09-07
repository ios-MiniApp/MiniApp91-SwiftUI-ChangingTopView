//
//  MiniApp91_SwiftUI_ChangingTopViewApp.swift
//  MiniApp91-SwiftUI-ChangingTopView
//
//  Created by 前田航汰 on 2022/09/07.
//

import SwiftUI

@main
struct MiniApp91_SwiftUI_ChangingTopViewApp: App {
    @AppStorage("isSignout") var isSignout: Bool = false

    var body: some Scene {
        WindowGroup {
            SignUpView()
        }
    }
}
