# Deployment Guide for CabBazar Backend

## Prerequisites
- Node.js 18.x or higher
- MongoDB Atlas account (or MongoDB instance)
- Firebase project with service account
- Razorpay account
- Google Maps API key

## Environment Variables Required

Make sure to set these environment variables in your deployment platform:

```
NODE_ENV=production
PORT=10000
MONGO_URI=your_mongodb_connection_string
JWT_SECRET=your_jwt_secret
JWT_EXPIRE=30d
LOG_LEVEL=info
ALLOWED_ORIGINS=your_frontend_url
FIREBASE_PROJECT_ID=your_firebase_project_id
FIREBASE_PRIVATE_KEY_ID=your_firebase_private_key_id
FIREBASE_PRIVATE_KEY=your_firebase_private_key
FIREBASE_CLIENT_EMAIL=your_firebase_client_email
FIREBASE_CLIENT_ID=your_firebase_client_id
FIREBASE_CLIENT_X509_CERT_URL=your_firebase_cert_url
GOOGLE_MAPS_API_KEY=your_google_maps_api_key
RAZORPAY_KEY_ID=your_razorpay_key_id
RAZORPAY_KEY_SECRET=your_razorpay_key_secret
RAZORPAY_WEBHOOK_SECRET=your_razorpay_webhook_url
```

## Deployment Platforms

### 1. Render.com (Recommended)

1. Push your code to GitHub
2. Go to [Render Dashboard](https://dashboard.render.com/)
3. Click "New +" → "Web Service"
4. Connect your GitHub repository
5. Configure:
   - **Name**: cabbazar-backend
   - **Environment**: Node
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
   - **Plan**: Free or Starter
6. Add all environment variables from the list above
7. Click "Create Web Service"

The `render.yaml` file is included for automatic configuration.

### 2. Railway.app

1. Push your code to GitHub
2. Go to [Railway](https://railway.app/)
3. Click "New Project" → "Deploy from GitHub repo"
4. Select your repository
5. Railway will auto-detect Node.js
6. Add environment variables in the Variables tab
7. Deploy

### 3. Heroku

1. Install Heroku CLI
2. Login: `heroku login`
3. Create app: `heroku create cabbazar-backend`
4. Set environment variables:
   ```bash
   heroku config:set NODE_ENV=production
   heroku config:set MONGO_URI=your_mongodb_uri
   # ... set all other variables
   ```
5. Deploy:
   ```bash
   git push heroku main
   ```

The `Procfile` is included for Heroku deployment.

### 4. Vercel

1. Install Vercel CLI: `npm i -g vercel`
2. Login: `vercel login`
3. Deploy: `vercel`
4. Add environment variables in Vercel dashboard
5. Redeploy: `vercel --prod`

The `vercel.json` file is included for configuration.

### 5. AWS EC2 / DigitalOcean / VPS

1. SSH into your server
2. Install Node.js 18.x
3. Clone repository: `git clone your_repo_url`
4. Install dependencies: `npm install`
5. Create `.env` file with all variables
6. Install PM2: `npm install -g pm2`
7. Start app: `pm2 start server.js --name cabbazar-backend`
8. Setup nginx as reverse proxy
9. Enable PM2 startup: `pm2 startup` and `pm2 save`

## Post-Deployment Checklist

- [ ] Verify all environment variables are set correctly
- [ ] Test health endpoint: `https://your-domain.com/health`
- [ ] Check logs for any errors
- [ ] Test API endpoints with Postman
- [ ] Update CORS origins to include your frontend URL
- [ ] Configure Razorpay webhook URL with your deployment URL
- [ ] Monitor MongoDB connection
- [ ] Set up monitoring/alerting (optional)

## Common Issues

### Build Fails
- Ensure Node.js version is 18.x or higher
- Check that all dependencies are in `package.json`
- Verify `npm install` runs successfully locally

### Server Crashes on Start
- Check all required environment variables are set
- Verify MongoDB connection string is correct
- Check Firebase credentials are properly formatted
- Review logs for specific error messages

### Connection Timeout
- Ensure MongoDB Atlas allows connections from your deployment IP
- Check if firewall rules are blocking connections
- Verify network settings in your deployment platform

## Support

For issues, check the logs:
- Render: View logs in dashboard
- Heroku: `heroku logs --tail`
- Railway: View logs in dashboard
- Vercel: View logs in dashboard

## Security Notes

- Never commit `.env` file to Git
- Use strong JWT_SECRET (minimum 32 characters)
- Keep Firebase private key secure
- Rotate API keys regularly
- Enable rate limiting in production
- Use HTTPS only
