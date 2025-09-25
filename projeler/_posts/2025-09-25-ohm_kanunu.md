---
layout: post
title: Arduino ile RGB LED Modülü Projesi
description: >
  Bu yazıda arduino kullanırken doğru direnç kullanmayı öğretmek için ohm kanununu açıkladım.
sitemap: false
hide_last_modified: true
---

# Ohm Kanunu Nedir?
Ohm Kanunu, **gerilim {V}**, **akım {I}** ve **direnç {R}** arasındaki ilişkiyi tanımlar.
Formülü çok basittir:
    ***V = I x R***
- **V (Volt)** → Elektriği iten güç, yani elektronları harekete geçiren “basınç”tır.
- **I (Amper)** → Devrede hareket eden elektronların miktarıdır. Ne kadar çok elektron hareket ederse, akım o kadar yüksek olur.
- **R (Ohm)** → Elektriğin akmasına karşı gösterilen zorluktur. Tıpkı dar bir borunun sudaki akışı zorlaştırması gibi, direnç de akımı sınırlar.

<a href="/assets/img/blog/ohm-kanunu-formul.jpg" target="_blank">
  <img src="/assets/img/blog/ohm-kanunu-formul.jpg" alt="Fotoğraf 1" style="width:50%; border-radius:10px;">
</a>

### Kısaca Özet
Ohm Kanunu, elektrik devresinde:
- Ne kadar akım geçeceğini
- Hangi direnç değerinin gerekli olduğunu
- Bir pil veya güç kaynağının devreyi nasıl etkileyeceğini hesaplamamızı sağlar.

### Örnek Hesaplamalar
1. Elinde **9V pil** ve **100Ω direnç** varsa:
    ***I = V/R = 9/100 = 0.09A = 90mA***
Yani dirençten **90 mA** akım geçer.
2. Arduino'nun bir pininden LED yakmak istiyorsun. Pin **5V** veriyor, LED'in güvenlik akımı **20mA** olsun.
Gerekli direnç:
    ***R =V/I = 5/0.02 = 250Ω***
Yani LED için yaklaşık **220Ω - 330Ω** arası bir direnç kullanmalısın.

### Nerelerde İşe Yarar?
- LED yakarken doğru direnci seçmek.
- Sensör veya motor bağlarken ne kadar akım çekeceğini hesaplamak.
- Arduino pinlerinin yanmaması için güvenli devre tasarlamak.




