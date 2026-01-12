# Goal: Optionals Mantığını Kavramak

### Ne?
Bir değişkenin bir değere sahip olup olmadığını veya "hiçlik" (nil) durumunu temsil eder.

### Niye?
Swift güvenli bir dildir. Null pointer exception hatalarını derleme aşamasında yakalamak için optionals kullanılır.

### Ne zaman?
- Veritabanından veri çekerken (veri olmayabilir).
- Network isteği atarken.
- Kullanıcıdan girdi alırken.

### Pitfalls:
1. Force Unwrapping (!) kullanımı runtime crash sebebidir.
2. Optional Chaining kullanırken varsayılan değer (default value) atanmazsa zincirin sonu her zaman optional döner.

### Mini demo özeti:
`parseInt` ile string temizleme yapıldı, `if let` ve `guard let` ile güvenli açma (unwrapping) yöntemleri denendi.
"abc" gibi geçersiz bir girdi verildiğinde uygulamanın çökmesi `??` ve `guard` ile engellendi.

### Why:
"Optionals, programın çalışma anında beklenmedik şekilde çökmesini engelleyen bir emniyet kemeridir."

![Swift Optionals Diagram](images/optionals.png)
