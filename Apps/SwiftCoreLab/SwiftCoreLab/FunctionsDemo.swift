//
//  FunctionsDemo.swift
//  SwiftCoreLab
//
//  Created by Beyza Zengin on 16.01.2026.
//

import Foundation

// 1. Hata Tiplerini Tanımlama
enum AppError: Error {
    case invalidInput
    case negativeNumber
}

struct FunctionsDemo {
    static func run() {
        print("--- W01 D03: Functions & Errors Başladı ---")
        
        // 2. Fonksiyon Çağrımı
        let amount = 45.0
        let cost = shippingCost(for: amount)
        print("Kargo ücreti: \(cost)")
        
        // 3. do-catch Mekanizması
        do {
            let result = try parsePositive("-5")
            print("Sonuç: \(result)")
        } catch AppError.invalidInput {
            print("Hata: Geçersiz bir metin girdiniz.")
        } catch AppError.negativeNumber {
            print("Hata: Lütfen pozitif bir sayı girin.")
        } catch {
            print("Beklenmedik bir hata oluştu: \(error)")
        }
        
        print("--- Demo Bitti ---")
    }
    
    // Basit bir kargo hesaplama fonksiyonu
    // Argument Label (for) ve Parameter Name (amount) farkına dikkat!
    static func shippingCost(for amount: Double) -> Double {
        return amount > 100 ? 0 : 15.0
    }
    
    // Hata fırlatan (throws) fonksiyon
    static func parsePositive(_ s: String) throws -> Int {
        guard let value = Int(s) else {
            throw AppError.invalidInput
        }
        
        if value < 0 {
            throw AppError.negativeNumber
        }
        
        return value
    }
}
