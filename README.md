# Deploy
### Adımlar
1. bundle exec jekyll build
2. cp -r _site/* .
3. git add .
4. git commit -m "Deploy site"
5. git push origin gh-pages --force

[^1]: Requires Bundler. Install with `gem install bundler`.