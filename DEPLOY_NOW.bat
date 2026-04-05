@echo off
REM CabBazar Backend - Quick Deploy Script for Windows
REM This script helps you commit and push your deployment-ready code

echo.
echo ========================================
echo 🚀 CabBazar Backend Deployment Script
echo ========================================
echo.

REM Check if git is initialized
if not exist .git (
    echo ❌ Git repository not initialized
    echo Run: git init
    pause
    exit /b 1
)

REM Check for uncommitted changes
git status --short > temp_status.txt
set /p STATUS=<temp_status.txt
del temp_status.txt

if not "%STATUS%"=="" (
    echo 📝 Found uncommitted changes
    echo.
    git status --short
    echo.
    
    set /p CONFIRM="Do you want to commit these changes? (y/n): "
    
    if /i "%CONFIRM%"=="y" (
        echo 📦 Adding files...
        git add .
        
        echo 💾 Committing changes...
        git commit -m "Add deployment configuration and documentation"
        
        echo ✅ Changes committed successfully!
    ) else (
        echo ❌ Deployment cancelled
        pause
        exit /b 1
    )
) else (
    echo ✅ No uncommitted changes
)

echo.
echo 🔄 Pushing to GitHub...

REM Push to GitHub
git push origin main

if %ERRORLEVEL% EQU 0 (
    echo ✅ Code pushed to GitHub successfully!
) else (
    echo ❌ Failed to push to GitHub
    echo Make sure you have added a remote: git remote add origin your-repo-url
    pause
    exit /b 1
)

echo.
echo ========================================
echo ✅ Deployment preparation complete!
echo ========================================
echo.
echo Next steps:
echo 1. Go to https://dashboard.render.com/
echo 2. Click 'New +' → 'Web Service'
echo 3. Connect your GitHub repository
echo 4. Add environment variables (see QUICK_START.md)
echo 5. Click 'Create Web Service'
echo.
echo 📚 For detailed instructions, see:
echo    - QUICK_START.md (fastest path)
echo    - DEPLOYMENT.md (detailed guide)
echo    - DEPLOYMENT_CHECKLIST.md (step-by-step)
echo.
echo 🎉 Good luck with your deployment!
echo.
pause
