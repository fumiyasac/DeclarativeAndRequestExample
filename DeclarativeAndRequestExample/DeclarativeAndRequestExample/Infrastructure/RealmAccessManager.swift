//
//  APIClientManager.swift
//  DeclarativeAndRequestExample
//
//  Created by 酒井文也 on 2023/05/09.
//

import Foundation
import RealmSwift

// MARK: - Protocol

protocol RealmAccessProtocol {}

final class RealmAccessManager {

    // MARK: - Singleton Instance

    static let shared = RealmAccessManager()

    // MARK: - Properies

    private let schemaConfig = Realm.Configuration(schemaVersion: 0)
}

// MARK: - RealmAccessProtocol

extension RealmAccessManager: RealmAccessProtocol {}
