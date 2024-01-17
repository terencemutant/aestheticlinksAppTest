//
//  AestheticlinksApp.swift
//  Aestheticlinks

import SwiftUI

@main
struct AestheticlinksApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            SplashscreenView()
        }
    }
}
