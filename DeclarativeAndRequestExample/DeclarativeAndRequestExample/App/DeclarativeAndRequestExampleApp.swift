//
//  DeclarativeAndRequestExampleApp.swift
//  DeclarativeAndRequestExample
//
//  Created by 酒井文也 on 2023/01/24.
//

import SwiftUI

@main
struct DeclarativeAndRequestExampleApp: App {

    // MEMO: AppDelegate
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    // MARK: - Body

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
