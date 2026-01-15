# Goal: Fonksiyonlar ve Hata Yönetimi

### Ne?
Parametre alan ve değer döndüren yapılar (Functions) ile beklenmedik hataları yönetme (Error Handling).

### Niye?
Kodun tekrar kullanılabilirliğini sağlamak ve hatalar oluştuğunda uygulamanın çökmesini (crash) önleyip kullanıcıya bilgi vermek için.

### Pitfalls:
- `try?` kullanırsan hata durumunda fonksiyon `nil` döner ama hatanın ne olduğunu anlayamazsın.
- Fonksiyon isimlerinde `Argument Label` kullanmamak kodun okunabilirliğini düşürür.

### Mini demo özeti:
Pozitif sayı kontrolü yapan bir parser yapıldı ve kargo ücreti hesaplayan fonksiyon yazıldı.

### Why:
"Hatalar kaçınılmazdır; profesyonel geliştirici hatayı yok sayan değil, onu yönetendir."

---

![Functions & Errors](../../images/functions.png)
