# W01 D03 - Closure Derinleşme Notları

### 1. Yazım Çeşitleri (Syntax)
- **Standard:** `(param) -> ReturnType in ...`
- **Trailing:** Fonksiyonun son parametresiyse parantez dışına taşınır.
- **Shorthand:** `$0, $1` ile parametre isimleri atlanır.

### 2. @escaping (Kaçan Closure)
**Niye var?** Bir işlem (örn. API isteği) hemen sonuçlanmıyorsa, Swift bu kod bloğunu bellekten silmemek için "kaçmasına" izin vermelidir.
**Tehlikesi:** Sınıflarda kullanıldığında "Strong Reference Cycle" (Bellek sızıntısı) yaratabilir. `[weak self]` ile çözülür.

### 3. @autoclosure
Kodu daha temiz göstermek için kullanılır. Parametreyi otomatik olarak `{ }` içine alır. Performans sağlar çünkü closure çağrılana kadar içindeki işlem yapılmaz.

### Pitfalls (Tuzaklar):
1. **Memory Leak:** Escaping closure içinde `self` (class) kullanılırsa, `self` bellekte sonsuza kadar kalabilir.
2. **Kafa Karışıklığı:** `$0` kullanımı hız kazandırsa da çok karmaşık işlemlerde okunabilirliği düşürür.

### Why: 
SwiftUI'daki her View (HStack, VStack, Button) aslında bir closure'dır. Bu yapıyı anlamadan iOS Developer olmak imkansızdır.

---

![Closures](../../images/closures.png)
