@echo off
REM ===============================
REM Hydejack Deploy Script (Windows)
REM ===============================

REM 1. Siteyi build et
echo Building site with Jekyll...
bundle exec jekyll build
if %errorlevel% neq 0 (
    echo Build failed. Exiting.
    exit /b %errorlevel%
)

REM 2. gh-pages branchine checkout yap
echo Switching to gh-pages branch...
git checkout gh-pages
if %errorlevel% neq 0 (
    echo Could not checkout gh-pages branch. Exiting.
    exit /b %errorlevel%
)

REM 3. Dosyaları temizle (node_modules, .git klasörüne dokunma)
echo Cleaning old files...
del /Q * >nul 2>&1
for /D %%d in (*) do (
    if /I not "%%d"==".git" (
        rmdir /S /Q "%%d"
    )
)

REM 4. Yeni build dosyalarını kopyala
echo Copying new site files...
xcopy /E /Y _site\* .

REM 5. Commit + Push
echo Committing and pushing to gh-pages...
git add .
git commit -m "Deploy site"
git push origin gh-pages

REM 6. Geri master/main branch’e dön
echo Switching back to main branch...
git checkout main

echo ===============================
echo Deployment completed successfully!
echo ===============================
pause
