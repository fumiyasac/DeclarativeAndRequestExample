//
//  AppDelegate.swift
//  DeclarativeAndRequestExample
//
//  Created by 酒井文也 on 2023/05/16.
//

import UIKit

final class AppDelegate: NSObject, UIApplicationDelegate {

    // MARK: - Function

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // MEMO: UIKit側におけるデザイン調整用の追加処理
        setupNavigationAppearnces()
        setupTabBarAppearances()

        return true
    }

    // MARK: - Private Function

    private func setupNavigationAppearnces() {

        // MEMO: NavigationBarのタイトル色を黒色に合わせる対応
        var titleTextAttributes: [NSAttributedString.Key : Any] = [:]
        titleTextAttributes[NSAttributedString.Key.font] = UIFont(name: "HelveticaNeue-Bold", size: 15.0)!
        titleTextAttributes[NSAttributedString.Key.foregroundColor] = UIColor.black
        let newNavigationAppearance = UINavigationBarAppearance()
        newNavigationAppearance.configureWithTransparentBackground()
        newNavigationAppearance.backgroundColor = UIColor(code: "eeeeee")
        newNavigationAppearance.titleTextAttributes = titleTextAttributes
        UINavigationBar.appearance().standardAppearance = newNavigationAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = newNavigationAppearance
    }

    private func setupTabBarAppearances() {

        // MEMO: UITabBarItemの選択時と非選択時の文字色の装飾設定
        let tabBarAppearance = UITabBarAppearance()
        let tabBarItemAppearance = UITabBarItemAppearance()
        tabBarItemAppearance.normal.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.lightGray
        ]
        tabBarItemAppearance.selected.titleTextAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.systemBlue
        ]
        tabBarAppearance.stackedLayoutAppearance = tabBarItemAppearance
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
}
