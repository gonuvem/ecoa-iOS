//
//  Ecoa+Extensions.swift
//  Ecoa
//
//  Created by Orlando Amorim on 05/03/2018.
//  Copyright © 2018 GoNuvem. All rights reserved.
//

import UIKit

// MARK: - Project Constants
enum Ecoa {
    
    // Image Names
    enum images: String, ImageRepresentable {
        case placeholder = "placeholder"
    }
    
    // Localizable Strings
    enum localizable {
        @available(iOS 10, *)
        enum oauth: String, LocalizeRepresentable {
            case mail                   = "oauth.mail"
            case password               = "oauth.password"
            case passwordConfirmation   = "oauth.passwordConfirmation"
            case userName               = "oauth.userName"
            case login                  = "oauth.login"
            case signIn                 = "oauth.signIn"
            case signUp                 = "oauth.signUp"
            case signOut                = "oauth.signOut"
            case welcome                = "oauth.welcome"
            case terms                  = "oauth.terms"
            case termsOfUse             = "oauth.termsOfUse"
            case privacyPolicy          = "oauth.privacyPolicy"
        }
        
        enum oauthAlerts: String, LocalizeRepresentable {
            case password               = "oauthAlert.password"
            case passwordConfirmation   = "oauthAlert.passwordConfirmation"
            case userName               = "oauthAlert.userName"
            case mail                   = "oauthAlert.mail"
            case emailPasswordError     = "oauthAlert.emailPasswordError"
            case signOutConfirmation    = "oauthAlert.signOutConfirmation"
        }
        
        enum alert: String, LocalizeRepresentable {
            case change     = "alert.change"
            case error      = "alert.error"
            case delete     = "alert.delete"
            case wait       = "alert.wait"
            case add        = "alert.add"
            case update     = "alert.update"
            case updating   = "alert.updating"
            case cancel     = "alert.cancel"
            case createdAt  = "alert.createdAt"
            case ok         = "alert.ok"
            case attention  = "alert.attention"
            case reset      = "alert.reset"
            case ops        = "alert.ops"
            case hello      = "alert.hello"
            case yes        = "alert.yes"
            case no         = "alert.no"
        }
        
        enum info: String, LocalizeRepresentable  {
            case version    = "info.version"
            case contactUs  = "info.contactUs"
            case licenses   = "info.licenses"
            case copyright  = "© 2018 GoNuvem. All rights reserved."
        }
    }
}



// MARK: - Representable Protocols
protocol ImageRepresentable: RawRepresentable {
    var image: UIImage? { get }
}

protocol LocalizeRepresentable: RawRepresentable {
    var localized: String { get }
}

protocol ColorRepresentable: RawRepresentable {
    var color: UIColor? { get }
}

protocol LocaleRepresentable: RawRepresentable {
    var locale: Locale? { get }
}

public protocol EnumCollection: Hashable {
    static func cases() -> AnySequence<Self>
    static var allValues: [Self] { get }
}

// MARK: - Representable Protocols Extensions
extension ImageRepresentable where RawValue == String {
    var image: UIImage? {
        return UIImage(named: rawValue)
    }
}

extension LocalizeRepresentable where RawValue == String {
    var localized: String {
        return NSLocalizedString(rawValue, comment: "")
    }
}

@available(iOS 11, *)
extension ColorRepresentable where RawValue == String {
    var color: UIColor? {
        return UIColor(named: rawValue)
    }
}

extension LocaleRepresentable where RawValue == String {
    var locale: Locale? {
        return Locale(identifier: rawValue)
    }
}

public extension EnumCollection {
    
    public static func cases() -> AnySequence<Self> {
        return AnySequence { () -> AnyIterator<Self> in
            var raw = 0
            return AnyIterator {
                let current: Self = withUnsafePointer(to: &raw) { $0.withMemoryRebound(to: self, capacity: 1) { $0.pointee } }
                guard current.hashValue == raw else {
                    return nil
                }
                raw += 1
                return current
            }
        }
    }
    
    public static var allValues: [Self] {
        return Array(self.cases())
    }
}
