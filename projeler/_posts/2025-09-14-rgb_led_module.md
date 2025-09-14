---
layout: post
title: Arduino ile RGB LED Modülü Projesi
description: >
  Arduino, elektronik projelere başlamak isteyenler için en popüler ve en kolay öğrenilebilen platformlardan biridir. Ben de ilk adım olarak RGB LED modülü kullanarak basit bir proje gerçekleştirdim.
sitemap: false
hide_last_modified: true
---

Arduino öğrenmeye başlayan herkesin yaptığı ilk projelerden biri LED yakıp söndürmektir. Ben de bu sefer biraz daha ileri giderek RGB LED modülü ile basit bir renk değiştirme projesi yaptım. Bu sayede tek bir LED üzerinden farklı renkler elde edebildim.

### Projenin Amacı
RGB LED modülü kullanarak kırmızı, yeşil ve mavi renklerin birleşiminden farklı renkler oluşturmak. Böylece LED’in sadece yanıp sönmesinden öteye gidip, ışıkla görsel bir şov yapabilmek.

### Kullanılan Malzemeler
- 1 adet Arduino Uno
- 1 adet RGB LED modülü
- Jumper kablolar
- Breadboard
- USB kablosu (Arduino’yu bilgisayara bağlamak için)

### Devre Kurulumu
- RGB LED modülünün **R (kırmızı)** pini → Arduino **D9**
- **G (yeşil)** pini → Arduino **D10**
- **B (mavi)** pini → Arduino **D11**
- **GND pini** → Arduino **GND**

### Arduino Kodu

Aşağıdaki kod sayesinde her bir saniyede bir farklı bir renge geçiş yapacak:
~~~js
#define RED_PIN 9
#define GREEN_PIN 10
#define BLUE_PIN 11

void setup() {
  pinMode(RED_PIN, OUTPUT);
  pinMode(GREEN_PIN, OUTPUT);
  pinMode(BLUE_PIN, OUTPUT);
}

void loop() {
  setColor(255, 0, 0);   // Red
  delay(1000);
  setColor(0, 255, 0);   // Green
  delay(1000);
  setColor(0, 0, 255);   // Blue
  delay(1000);
  setColor(255, 255, 0); // Yellow
  delay(1000);
  setColor(0, 255, 255); // Cyan
  delay(1000);
  setColor(255, 0, 255); // Magenta
  delay(1000);
  setColor(255, 255, 255); // White
  delay(1000);
  setColor(0, 0, 0);     // Off
  delay(1000);
}

// RGB renkleri ayarlamak için
void setColor(int red, int green, int blue) {
  analogWrite(RED_PIN, red);
  analogWrite(GREEN_PIN, green);
  analogWrite(BLUE_PIN, blue);
}

~~~

### Çalışma Mantığı
- `setColor()` fonksiyonu, LED’in kırmızı, yeşil ve mavi pinlerine istediğimiz değerleri gönderiyor.
- `analogWrite()` komutu sayesinde her pin için 0–255 arası değer verilebiliyor. Bu da farklı renklerin oluşmasını sağlıyor.
- Döngüde LED sırayla kırmızı, yeşil, mavi, sarı, camgöbeği, mor, beyaz ve kapalı hale geliyor. Her renk 1 saniye boyunca yanıyor.

<a href="/assets/img/blog/2025-09-14-rgb_led_module/image1.jpeg" target="_blank">
  <img src="/assets/img/blog/2025-09-14-rgb_led_module/image1.jpeg" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

<a href="/assets/img/blog/2025-09-14-rgb_led_module/image2.jpeg" target="_blank">
  <img src="/assets/img/blog/2025-09-14-rgb_led_module/image2.jpeg" alt="Fotoğraf 2" style="width:50%; border-radius:10px;">
</a>

<video width="600" controls style="border-radius: 15px; overflow: hidden; width:50%; ">
  <source src="/assets/img/blog/2025-09-14-rgb_led_module/video1.mp4" type="video/mp4">
  Tarayıcınız bu videoyu desteklemiyor.
</video>



# Sonuç
Bu proje ile RGB LED’in nasıl çalıştığını ve renklerin nasıl birleştirildiğini öğrendim. Tek bir LED ile çok sayıda renk elde edilebildiğini görmek çok eğlenceli! İlerleyen zamanlarda, bu projeyi buton, potansiyometre veya sensörlerle geliştirerek farklı efektler yapmayı planlıyorum.
