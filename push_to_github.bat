@echo off
echo ===================================================
echo   ATTACK ON TITAN: BEYOND THE WALLS - GITHUB PUSH
echo ===================================================
echo.
echo 1. Go to: https://github.com/new
echo 2. Create a repo named: anime
echo    (Do NOT check 'Add a README file')
echo.
set /p REPO_URL="Paste your GitHub repository URL here: "

if "%REPO_URL%"=="" (
    echo [ERROR] Repository URL cannot be empty.
    pause
    exit /b
)

echo.
echo [1/2] Linking remote repository...
git remote remove origin 2>nul
git remote add origin %REPO_URL%

echo [2/2] Pushing 'main' branch to GitHub...
git push -u origin main

echo.
if %ERRORLEVEL% equ 0 (
    echo ===================================================
    echo   SUCCESSFULLY PUSHED TO GITHUB!
    echo ===================================================
    echo.
    echo Next step to host it live for free:
    echo 1. Open your repository on GitHub.
    echo 2. Click 'Settings' tab -^> 'Pages' (left sidebar).
    echo 3. Under 'Branch', select 'main' and click 'Save'.
    echo 4. Your site will be live on the web in 1 minute!
    echo.
) else (
    echo [ERROR] Push failed. Check your GitHub URL and sign-in credentials.
)
pause
