# Deploy
### Adımlar
1. Sitede tüm düzenlemeleri yaptıktan sonra main brunch te iken Commitleyip, push edilecek.
2. Sonrasında `bundle exec jekyll build` ile build alınacak.
3. build sonrası ***gh-pages*** brachine geçiş yapılacak. `git checkout gh-pages`


4. cp -r _site/* .
5. git add .
6. git commit -m "Deploy site"
7. git push origin gh-pages --force

[^1]: Requires Bundler. Install with `gem install bundler`.