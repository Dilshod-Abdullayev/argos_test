@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ===============================================
echo   argos_test saytini GitHub ga yuklash
echo ===============================================
where git >nul 2>nul
if errorlevel 1 (
  echo XATO: Git o'rnatilmagan.
  pause
  exit /b 1
)
if not exist ".git" git init >nul
git config user.name "Dilshod-Abdullayev"
git config user.email "Dilshod-Abdullayev@users.noreply.github.com"
git config credential.useHttpPath true
git branch -M main
git remote remove origin >nul 2>nul
git remote add origin https://Dilshod-Abdullayev@github.com/Dilshod-Abdullayev/argos_test.git
git add -A
git commit -m "Sayt yangilandi %date% %time%" >nul 2>nul
git pull origin main --no-rebase --allow-unrelated-histories --no-edit -X ours >nul 2>nul
git push -u origin main
if errorlevel 1 (
  echo.
  echo XATO: push bo'lmadi. Kirish oynasi chiqsa Dilshod-Abdullayev akkauntini tanlang.
  pause
  exit /b 1
)
echo.
echo OK: GitHub ga yuklandi. 1-2 daqiqadan keyin sayt yangilanadi.
echo   https://dilshod-abdullayev.github.io/argos_test/
timeout /t 5 >nul
start "" "https://dilshod-abdullayev.github.io/argos_test/"
