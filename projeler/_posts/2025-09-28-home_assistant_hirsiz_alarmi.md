---
layout: post
title: Home Assistant Üzerinden ESPHome ile Hırsız Alarmı
description: >
  
sitemap: false
hide_last_modified: true
---

Bu hırsız alarmı PIR sensör ile yapılıp sensör bir cismi gördüğünde masa lambamı yakıp (siz istediğinizi yaptırtabilirsiniz) telefonuma mesaj gönderteceğim.

Gerekli malzemeler

- 3 dişi-dişi kablo
- 1 PIR sensör
- Wemos D1 mini
- USB-Micro USB kablo

<a href="/assets/img/blog/2025-09-28-hirsiz_alarmi/pir_sensor.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-hirsiz_alarmi/pir_sensor.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Wemos D1 mininizi USB-Micro USB kablo ile bilgisayara takın
- ESPHome uygulamasına girip yeni cihaz ekle deyin
- Daha sonrasında açılan menüde kendi bilgilerinizi doldurun

<a href="/assets/img/blog/2025-09-28-hirsiz_alarmi/name.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-hirsiz_alarmi/name.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Karşınıza çıkan menüde ESP8366 modelini seçin

<a href="/assets/img/blog/2025-09-28-hirsiz_alarmi/esp8266.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-hirsiz_alarmi/esp8266.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Çıkan menüde install butonuna basın
- Ardından görselde işaretlenen yere tıklayın

<a href="/assets/img/blog/2025-09-28-hirsiz_alarmi/usbtakmali.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-hirsiz_alarmi/usbtakmali.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Daha sonra aşağıda olan kodu oluşturduğunuz Device üzerindeki Edit yazan kısımdanaçılan ekrandaki kodun en altına yapıştırın.

<a href="/assets/img/blog/2025-09-28-hirsiz_alarmi/edit.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-hirsiz_alarmi/edit.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

~~~js

binary_sensor:
  - platform: gpio
    pin: 13
    name: "PIR Sensor"
    device_class: motion

~~~

ekledikten sonra kodun son hali aşağıdaki gibi olacaktır.

<a href="/assets/img/blog/2025-09-28-hirsiz_alarmi/kodunsonhali.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-hirsiz_alarmi/kodunsonhali.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Sonrasında ayarlardan cihazlar ve hizmetlere girin

<a href="/assets/img/blog/2025-09-28-home_assistant_hacs/home.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-home_assistant_hacs/home.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Girdikten sonra ESPHome eklentisinde yeni bir cihaz göreceksiniz bu cihazı ana menüye ekleyin
- Ekledikten sonra ayarlardan otomasyonlara girin 

<a href="/assets/img/blog/2025-09-28-hirsiz_alarmi/otomasyonlar.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-hirsiz_alarmi/otomasyonlar.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Girdikten sonra yeni bir otomasyon oluşturun
- Sonrasında Tetikleyici ekle kısmından pir sensör hareket algılamaya başladı seçeneğini seçin 
- Şunu yap kısmına bir cihaz ekleyin bu cihaz sizin telefonunuz olsun
- Telefonu ekledikten sonra istediğiniz mesajı telefona göndertebilirsiniz.



<a href="/assets/img/blog/2025-09-28-hirsiz_alarmi/otomasyon.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-hirsiz_alarmi/otomasyon.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>


Artık PIR sensörde hareket algılandığında telefonunuza Mesaj gelecek.










