# Deploy
### Adımlar
1. Sitede tüm düzenlemeleri yaptıktan sonra main brunch te iken Commitleyip, push edilecek.
2. Sonrasında `bundle exec jekyll build` ile build alınacak. Build hatası verirse `bundle install` komutu çalıştırılacak.
3. build sonrası ***gh-pages*** brachine geçiş yapılacak. `git checkout gh-pages`
4. _site klasörü dışındaki tüm klasörler silinecek ve _site klasörü içindeki tüm dosyalar ana dizine taşınacak. _site dizini silinecek.
5. gh-pages branch'nde olduğumuza eminsek, proje commit ve sonrasında push edilecek.
6. Github ta "https://github.com/dorukaytin/dorukaytin.github.io/tree/gh-pages" linkinden gönderilen commitin geldiğini ve başarıyla deploy olduğu gözlemlenecek.
7. Tekrardan kod değişiklikleri için main branc ine dönüş yapılacak. `git checkout main`
8. Çalıştırmak için ise `bundle exec jekyll serve` komudu kullanılmalıdır.

[^1]: Requires Bundler. Install with `gem install bundler`.