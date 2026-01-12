//
//  OptionalsDemo.swift
//  SwiftCoreLab
//
//  Created by Beyza Zengin on 12.01.2026.
//

import Foundation

struct OptionalsDemo {
    static func run() {
        print("--- W01 D01: Optionals Başladı ---")
        
        // 1. parseInt Örneği
        let result = parseInt(" 42 ")
        print("Parsed Result: \(result ?? 0)") // ?? örneği

        // 2. if let örneği
        if let unwrappedValue = result {
            print("if let ile değer alındı: \(unwrappedValue)")
        }

        // 3. guard let örneği
        checkValue(result)

        // 4. Optional Chaining örneği
        let user: User? = User(profile: Profile(name: "Ahmet"))
        print("Kullanıcı Adı: \(user?.profile?.name ?? "İsimsiz")")
        
        print("--- Demo Bitti ---")
    }

    // parseInt fonksiyonu: Boşlukları temizler ve Int'e çevirir, olmazsa nil döner
    static func parseInt(_ text: String?) -> Int? {
        guard let input = text else { return nil }
        let trimmed = input.trimmingCharacters(in: .whitespacesAndNewlines)
        return Int(trimmed)
    }

    // guard let için yardımcı fonksiyon
    static func checkValue(_ value: Int?) {
        guard let safeValue = value else {
            print("Hata: Değer nil geldi!")
            return
        }
        print("guard let ile güvenli alan: \(safeValue)")
    }
}

// Chaining için basit modeller
struct User { var profile: Profile? }
struct Profile { var name: String }
