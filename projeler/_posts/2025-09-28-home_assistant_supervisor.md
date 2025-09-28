---
layout: post
title: Home Assistant üzerine Supervisor nasıl kurulur
description: >
  
sitemap: false
hide_last_modified: true
---

Supervisor ESPHome gibi araçları kullanmak ve home assistantın ne kadar cpu vb. harcadığını görebildiğimiz bir yerdir.

## Supervisor nasıl kurulur
- Ayarlara gir ve eklentiler kısmına tıkla

<a href="/assets/img/blog/2025-09-28-supervisor/add-ons.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-supervisor/add-ons.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Ekranın sağ altındaki Add-on store butonuna tıklayın
- Arama kısmına Studio Code Server yazıp çıkan eklentiyi indirin
- İndirdikten sonra Başlata basıp Web Kullanıcı Arayüzünü Aç butonuna tıklayın

<a href="/assets/img/blog/2025-09-28-supervisor/web_arayuzu.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-supervisor/web_arayuzu.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

Arayüz açıldıktan sonra tüm kodu silip bu kodu yapıştırın

~~~js

# Loads default set of integrations. Do not remove.
default_config:

# Load frontend themes from the themes folder
frontend:
  themes: !include_dir_merge_named themes

automation: !include automations.yaml
script: !include scripts.yaml
scene: !include scenes.yaml
panel_custom: 
  - name: Supervisor
    url_path: hassio/system
    sidebar_title: Supervisor
    sidebar_icon: mdi:home-assistant 
    module_url: /local/panel-redirect.js 

~~~

- Kodu yazdıktan sonra home assistantınızı tekrardan başlatın
Eğer işlemleri doğru yaptıysanız home assistantın sol kısmına supervisor gelmeli



<a href="/assets/img/blog/2025-09-28-supervisor/supervisor2.png" target="_blank">
  <img src="/assets/img/blog/2025-09-28-supervisor/supervisor2.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>




