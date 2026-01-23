//
//  ClosuresDemo.swift
//  SwiftCoreLab
//
//  Created by Beyza Zengin on 23.01.2026.
//

import Foundation

struct ClosuresDemo {
    
    // Escaping closure'ı saklamak için bir değişken (Örn: Bir butona basılınca çalışacak kod)
    static var storedAction: (() -> Void)?

    static func run() {
        print("--- W01 D04: İleri Seviye Closures ---")

        // 1. Trailing Closure & Shorthand Syntax
        // Uzun hali: applyMath(a: 10, b: 5, operation: { (x, y) in return x + y })
        let sum = applyMath(a: 10, b: 5) { $0 + $1 }
        print("Shorthand Sum: \(sum)")

        // 2. Escaping Closure (Simüle edilmiş Network isteği)
        downloadImage(from: "google.com") { result in
            print("Escaping Result: \(result)")
        }

        // 3. Autoclosure Örneği
        logStatus(check: 5 > 3) // Süslü parantez yok ama arka planda closure!
        
        print("--- Demo Bitti (Ama asenkron işler sürebilir) ---")
        
        // Asenkron işlemin bitmesini bekle
        RunLoop.current.run(until: Date(timeIntervalSinceNow: 1.5))
    }

    // --- Fonksiyon Tanımları ---

    // Non-escaping: İşlem hemen burada biter.
    static func applyMath(a: Int, b: Int, operation: (Int, Int) -> Int) -> Int {
        return operation(a, b)
    }

    // Escaping: Fonksiyon biter, 1 sn sonra completion çalışır.
    static func downloadImage(from url: String, completion: @escaping (String) -> Void) {
        print("\(url) üzerinden veri indiriliyor...")
        
        DispatchQueue.global().asyncAfter(deadline: .now() + 1.0) {
            let mockData = "Resim Verisi"
            completion(mockData) // Fonksiyon bittikten sonra çağrılıyor!
        }
    }

    // Autoclosure: Koşulu sadece ihtiyaç duyulduğunda hesaplar.
    static func logStatus(check: @autoclosure () -> Bool) {
        if check() {
            print("Durum Başarılı.")
        }
    }
}
