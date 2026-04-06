# SSIS ile Slowly Changing Dimension (SCD) Projesi

Bu proje, Veri Ambarı (Data Warehousing) süreçlerinde sıkça kullanılan **Slowly Changing Dimension (SCD)** tiplerinin SQL Server Integration Services (SSIS) kullanılarak nasıl uygulanacağını uygulamalı olarak göstermektedir.

## 📌 Proje Hakkında
Proje, AdventureWorks2022 örnek veritabanını kaynak alarak farklı senaryolara göre verilerin tarihsel değişimini yönetmeyi amaçlar. Her bir paket, farklı bir SCD tipinin mantığını ve ETL akışını içerir.

### İşlenen SCD Tipleri:
* **SCD Type 1:** Mevcut verinin üzerine yazılır (Tarihçe tutulmaz).
* **SCD Type 2:** Yeni bir satır eklenir ve sürümleme yapılır (Tam tarihçe tutulur).
* **SCD Type 3:** Sadece mevcut ve bir önceki değer tutulur (Sınırlı tarihçe).
* **SCD Type 4:** Tarihçe verileri ayrı bir "History" tablosunda tutulur.
* **SCD Type 6 (Hybrid):** Tip 1, 2 ve 3'ün kombinasyonu kullanılarak esnek bir yapı sunulur.

## 🚀 Kurulum ve Çalıştırma

Projeyi yerel ortamınızda çalıştırmak için aşağıdaki adımları izleyin:

1.  **Depoyu Klonlayın:**
    ```bash
    git clone [https://github.com/enesyildirgan/](https://github.com/enesyildirgan/)[REPO_ADINIZ].git
    ```
2.  **Veritabanı Hazırlığı:**
    * `AdventureWorks2022` veritabanının SQL Server'ınızda kurulu olduğundan emin olun.
    * **Önemli:** Projenin çalışması için gerekli olan hedef tablo (DWH) yapılarını oluşturmanız gerekmektedir. (SQL scriptleri proje içerisindeki paketlerin mantığına göre manuel oluşturulmalı veya `/sql` klasörü altındaki scriptler çalıştırılmalıdır.)
3.  **SSIS Yapılandırması:**
    * `Slowly Changing Dimension.sln` dosyasını Visual Studio ile açın.
    * **Project.params** dosyasını açarak `SourceServer` ve `DestServer` parametrelerini kendi SQL Server adınıza göre güncelleyin.
    * Bağlantı yöneticilerinin (Connection Managers) bu parametreleri kullandığını doğrulayın.

## 🛠 Kullanılan Teknolojiler
* **ETL Aracı:** SQL Server Integration Services (SSIS) 2022
* **Veritabanı:** SQL Server Management Studio (SSMS)
* **Kaynak Veri:** AdventureWorks2022
* **Versiyon Kontrol:** Git & GitHub

## 📂 Dosya Yapısı
* `Scd_Type1.dtsx`: Üzerine yazma (Overwrite) senaryosu.
* `Scd_Type2.dtsx`: Satır ekleme ve sürümleme (Versioning) senaryosu.
* `Scd_Type3.dtsx`: Sütun ekleyerek sınırlı tarihçe tutma senaryosu.
* `Scd_Type4.dtsx`: Geçmiş verileri ayrı tabloda (History Table) tutma senaryosu.
* `Scd_Type6.dtsx`: Tip 1, 2 ve 3'ün hibrit kullanımı.
* `Project.params`: Dinamik bağlantı yönetimi için merkezi parametreler.
* `.gitignore`: Hassas verilerin ve geçici dosyaların engellenmesi için yapılandırma.

