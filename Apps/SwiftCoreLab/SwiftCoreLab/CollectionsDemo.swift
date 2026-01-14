//
//  CollectionsDemo.swift
//  SwiftCoreLab
//
//  Created by Beyza Zengin on 14.01.2026.
//

import Foundation

struct CollectionsDemo {
    static func run() {
        print("--- W01 D02: Collections Başladı ---")
        
        // 1. Array Tanımlama
        let prices = [10.0, 20.0, 30.0, 5.0, 50.0]
        print("Orijinal Fiyatlar: \(prices)")

        // 2. MAP: Her elemana %10 indirim uygula (Fiyatı 0.9 ile çarp)
        // 'map' her bir elemanı alır ve yeni bir diziye dönüştürür.
        let discountedPrices = prices.map { $0 * 0.9 }
        print("İndirimli Fiyatlar: \(discountedPrices)")

        // 3. FILTER: Fiyatı 15'ten büyük olanları seç
        // 'filter' sadece koşula uyan elemanları tutar.
        let expensivePrices = prices.filter { $0 > 15 }
        print("15'ten Büyük Fiyatlar: \(expensivePrices)")

        // 4. REDUCE: Tüm fiyatları topla
        // 'reduce' dizideki tüm elemanları tek bir değere indirger.
        // 0.0 başlangıç değeridir, + ise yapılacak işlemdir.
        let totalPrice = prices.reduce(0.0, +)
        print("Toplam Fiyat: \(totalPrice)")

        // 5. DICTIONARY: Kripto paraları dolaş
        let wallet = ["BTC": 100, "ETH": 50, "SOL": 200]
        print("\n--- Cüzdan Detayları ---")
        for (coin, amount) in wallet {
            print("\(coin) miktarınız: \(amount)")
        }
        
        print("--- Demo Bitti ---")
    }
}
// $0 dizideki sıradaki elemanı temsil eder. Shorthand Argument Name denir.
