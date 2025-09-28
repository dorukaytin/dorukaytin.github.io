---
layout: post
title: VirtualBox ile Home Assistant kurulumu
description: >
  
sitemap: false
hide_last_modified: true
---

VirtualBox uygulamasını indirdirip kurduktan sonra bu ekran ile karşılaşacağız bu menüde işaretlenen alana tıklayıp yeni bir sanal makine oluşturmamız gerekiyor

<a href="/assets/img/home_assistant/virtualbaslangic.png" target="_blank">
  <img src="/assets/img/home_assistant/virtualbaslangic.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

Tıkladıktan sonra açılan menüde doldurulacak kısımlar sırasıyla şöyle olacak
- VM Name kısmına istediğiniz ismi yazınız
- OS kısmını linux olarak değiştiriniz
- OS version Oracle Linux 64-bit yapınız
- Specify virtual hardware adlı kısmı girip kendi bilgisayar özelliklerinize göre ayarlayabilirsiniz (Benim kullandığım Base Memory 4096 MB ve 4 CPU)
- Specify virtual hardware menüsünün en altında Use EFI kutucuğunu doldurunuz

<a href="/assets/img/home_assistant/EFI.png" target="_blank">
  <img src="/assets/img/home_assistant/EFI.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- Sonraki adıma geçmeden önce tarayıcınız üzerinden "[haos ova-16.2](https://www.home-assistant.io/installation/generic-x86-64/)" sitesine gidiyoruz.
- Sitenin sol kısmında hangi işletim sisteminiz varsa ona tıklayacaksınız ben windows üzerinden göstereceğim
- Windows yazısına tıklayıp VirtualBox yazısına tıklıyoruz

<a href="/assets/img/home_assistant/windows_homeassistant.png" target="_blank">
  <img src="/assets/img/home_assistant/windows_homeassistant.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

- İndirilen haos ova dosyasını extract all yapıyoruz
- Tekrardan virtualbox uygulamasına geri dönüp specify virtual hard disk menüsünden Use an existing virtual hard disk file butonuna tıklıyoruz
- Haos_ova-16.2.vdi dosyasını seçiyoruz

<a href="/assets/img/home_assistant/haos_ova.png" target="_blank">
  <img src="/assets/img/home_assistant/haos_ova.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

Start butonuna bastığınızda yaklaşık 15 dakikalık bir kurulum sonrası böyle bir ekranla karşılaşıyorsanız bilin ki ilk adımı tamamladınız

<a href="/assets/img/home_assistant/hass_menu.png" target="_blank">
  <img src="/assets/img/home_assistant/hass_menu.png" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>








