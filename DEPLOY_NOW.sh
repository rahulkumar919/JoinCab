#!/bin/bash

# CabBazar Backend - Quick Deploy Script
# This script helps you commit and push your deployment-ready code

echo "🚀 CabBazar Backend Deployment Script"
echo "======================================"
echo ""

# Check if git is initialized
if [ ! -d .git ]; then
    echo "❌ Git repository not initialized"
    echo "Run: git init"
    exit 1
fi

# Check for uncommitted changes
if [[ -n $(git status -s) ]]; then
    echo "📝 Found uncommitted changes"
    echo ""
    
    # Show status
    git status --short
    echo ""
    
    # Ask for confirmation
    read -p "Do you want to commit these changes? (y/n) " -n 1 -r
    echo ""
    
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        # Add all files
        echo "📦 Adding files..."
        git add .
        
        # Commit
        echo "💾 Committing changes..."
        git commit -m "Add deployment configuration and documentation"
        
        echo "✅ Changes committed successfully!"
    else
        echo "❌ Deployment cancelled"
        exit 1
    fi
else
    echo "✅ No uncommitted changes"
fi

echo ""
echo "🔄 Pushing to GitHub..."

# Check if remote exists
if git remote | grep -q 'origin'; then
    git push origin main
    echo "✅ Code pushed to GitHub successfully!"
else
    echo "❌ No remote 'origin' found"
    echo "Add remote with: git remote add origin <your-repo-url>"
    exit 1
fi

echo ""
echo "======================================"
echo "✅ Deployment preparation complete!"
echo ""
echo "Next steps:"
echo "1. Go to https://dashboard.render.com/"
echo "2. Click 'New +' → 'Web Service'"
echo "3. Connect your GitHub repository"
echo "4. Add environment variables (see QUICK_START.md)"
echo "5. Click 'Create Web Service'"
echo ""
echo "📚 For detailed instructions, see:"
echo "   - QUICK_START.md (fastest path)"
echo "   - DEPLOYMENT.md (detailed guide)"
echo "   - DEPLOYMENT_CHECKLIST.md (step-by-step)"
echo ""
echo "🎉 Good luck with your deployment!"
