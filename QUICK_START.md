# Quick Start - Deploy in 5 Minutes

## Step 1: Push to GitHub (if not already done)

```bash
git add .
git commit -m "Add deployment configuration"
git push origin main
```

## Step 2: Choose Your Deployment Platform

### Option A: Render.com (Easiest - Recommended)

1. Go to https://dashboard.render.com/
2. Click "New +" → "Web Service"
3. Connect your GitHub account
4. Select repository: `rahulkumar919/JoinCab`
5. Configure:
   - **Name**: `cabbazar-backend`
   - **Environment**: `Node`
   - **Build Command**: `npm install`
   - **Start Command**: `npm start`
   - **Plan**: Free (or Starter for better performance)

6. Click "Advanced" and add these environment variables:

```
NODE_ENV=production
PORT=10000
MONGO_URI=mongodb+srv://rahulkumar9508548671_db_user:Rahul9142517255@ecommersewebsite.wbadeko.mongodb.net/EcommerseWebsite?retryWrites=true&w=majority&appName=EcommerseWebsite
JWT_SECRET=Hl42LH1mwpoVE8aTZZzDV9PGeVefUvaOZ2AZznYd8kI
JWT_EXPIRE=30d
LOG_LEVEL=info
ALLOWED_ORIGINS=*
FIREBASE_PROJECT_ID=ajbike-3c68d
FIREBASE_PRIVATE_KEY_ID=122304e74c63b505d4f44a2e86841fd0d5a89cb2
FIREBASE_PRIVATE_KEY="-----BEGIN PRIVATE KEY-----\nMIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQDDO7EY/29xPxXK\nRnMGEs5GJg9nKUGKsL1AXdNHT4qb5t8AD5SApeiOCI0/AVN3/6mz/AjUQ2DMOpW+\nkiMc4fI2s+t/9Y/Mv9MjeMIR0+zL9xVw4HYDhBkKhcUq8E5zgdzfNYK/AF7KmcKH\n/xzAEWRAH5gT1cjyTzP9VTFj+46bsnk+/QTBDHw1gshjs2Xu2d9rVTqh5gMr5u3+\nS0L/u8lP61QJcrhkUGfJKYtvc62cCG3FTX0ULN5NQohRGKBD5TwJorDVMmZ7er5M\nTxg2Uh9jEw8Jzi1C1ibnVW5Nd3crHSps9wYln0RbSpsPJRt+b+8xZ6Z5ofnfIfbk\nhcJ0kkIHAgMBAAECggEAFAwJk9kKzvSc3q/cOMfukWpwE3Y7iiu6yyS3QK/MulR7\nGoz/ATTIC+mZ41nWAdDpUpdzKqSeiGoNnUtxOpKC5hYUfQewk+QwoIhSWTVLL+h3\ntab+xz6luZxh0hZp39d6YBslCUrW8PPX81IBWEGQ6zqzSXoez67NVlqMn0kh7B+6\nBGnOeIUkC6ON+y0RCGc/ao4/qvsMNGCVTuppch7lSX/iji5rkp5JP1QEuHTE+Cyf\n6qDNZpvyfuwlSs9twgsCqo0QNqsOW3httN+la3IZvZqOAmF27Adu+nFwoJcK2xMS\nKelXx9EPmtiy1cRtsfT3vfRM5GSlRiXnpPxdLs/vqQKBgQDho7yn6SSIgINI0ipq\n8S4QL/o16nzw3EOjRJ+M5z/8kAbimcZUthdSTXvVgQrJ84W8Z14GTZ6Wwe0cIgbo\ng5LhpWxFOuP2KihdmB6kJgtvKG8WqEqmkuluAkH0EU8t7Dpdlrd96nj4OK4fr2oP\nTfGUi7JwyjuwoLl1xhUVjm9FiQKBgQDdgJdPktGLBnqiSqScD0Evp8lUhMm/MX+B\nwJX+sk9tjghQaek6HmmhQxnNuikAYbY3bzeITAyN2Y+A9MgChdd9gFrCRXuS7zO1\nqHCn/JbCMiViCyRCQDiw1bEBJdvOSoxmICmYDNvyx4Jqp/E9NdAsd8pKX1IjBRxp\nCvZsOMb3DwKBgGd3kbbdbec6JvlphhHr7ld16KJ4mDpKhqmDejY+hFToJoAaS5vk\ns+UFqtdIiQ36IUU3kSIKzcILwxK3d7t/OgdGt9M3Iflrc38XllVnLK8YN3iIS1L+\n4xOS7XNhzJEeVdU8m3+d2ULZmt7krRm/gBvBw119HsnrqZ+b6WctHVEhAoGAM6no\noQDHqzupouzyFAxi0fC6vuHyBIxRBzyaP7vrVsxIGCl74rhxPtHd1ORU5+fijm98\nbmf+jZ9vH074z83UA0vK34FBX3Y3g2l0TVpW95imq4WZwXIlRumwzWm9KRKuSKu7\nx+FH9Aqg2qutUu+YTKbsIgi1qcFpbP7Hl1pu3fUCgYAazSs8VS+JXhBdwmZwANH6\n6jIaGfBGgeG8Uj7U6b/0rQFoy+f8o/uTumgdlQGt1KWTdalcstMz4OzWfrVMqOvj\nBWIDzWmXsUfhC8tgjcK8Wg7QU4eZY8UFzesBVLqgOFMN9nReu7RC4MEMpG2v+4dl\ngNjWm1UurXT7Y8pjUEjvrQ==\n-----END PRIVATE KEY-----\n"
FIREBASE_CLIENT_EMAIL=firebase-adminsdk-fbsvc@ajbike-3c68d.iam.gserviceaccount.com
FIREBASE_CLIENT_ID=114597766180209520845
FIREBASE_CLIENT_X509_CERT_URL=https://www.googleapis.com/robot/v1/metadata/x509/firebase-adminsdk-fbsvc%40ajbike-3c68d.iam.gserviceaccount.com
GOOGLE_MAPS_API_KEY=YOUR_GOOGLE_MAPS_API_KEY
RAZORPAY_KEY_ID=rzp_live_hlnBKRW7SSoSCHR
RAZORPAY_KEY_SECRET=ffxrUnmXT8yoxTC98LZRSn1U
RAZORPAY_WEBHOOK_SECRET=https://your-app-name.onrender.com/api/payments/webhook
```

7. Click "Create Web Service"
8. Wait 2-3 minutes for deployment
9. Your API will be live at: `https://your-app-name.onrender.com`

### Option B: Railway.app

1. Go to https://railway.app/
2. Click "Start a New Project"
3. Select "Deploy from GitHub repo"
4. Choose `rahulkumar919/JoinCab`
5. Add environment variables in the "Variables" tab (same as above)
6. Deploy automatically

### Option C: Heroku

```bash
# Install Heroku CLI first
heroku login
heroku create cabbazar-backend
heroku config:set NODE_ENV=production
heroku config:set MONGO_URI="mongodb+srv://rahulkumar9508548671_db_user:Rahul9142517255@ecommersewebsite.wbadeko.mongodb.net/EcommerseWebsite?retryWrites=true&w=majority&appName=EcommerseWebsite"
# ... set all other variables
git push heroku main
```

## Step 3: Verify Deployment

1. Check deployment logs for errors
2. Visit: `https://your-app-url.com/health`
3. You should see: `{"status":"OK","timestamp":"...","environment":"production"}`

## Step 4: Update MongoDB Whitelist

1. Go to MongoDB Atlas dashboard
2. Network Access → Add IP Address
3. Add `0.0.0.0/0` (allow all) or your deployment platform's IPs
4. Save

## Step 5: Test Your API

Use Postman or curl:

```bash
# Health check
curl https://your-app-url.com/health

# Test registration (example)
curl -X POST https://your-app-url.com/api/auth/register \
  -H "Content-Type: application/json" \
  -d '{"phone":"+1234567890","name":"Test User"}'
```

## Common Issues

### Issue: "Missing required environment variables"
**Solution**: Double-check all environment variables are added in your deployment platform

### Issue: "MongoDB connection timeout"
**Solution**: Add `0.0.0.0/0` to MongoDB Atlas Network Access whitelist

### Issue: "Firebase authentication failed"
**Solution**: Ensure FIREBASE_PRIVATE_KEY includes the quotes and `\n` characters

### Issue: Build succeeds but app crashes
**Solution**: Check deployment logs for specific error messages

## Important Notes

1. **Don't forget Google Maps API Key**: Replace `YOUR_GOOGLE_MAPS_API_KEY` with your actual key
2. **Update Razorpay Webhook**: After deployment, update `RAZORPAY_WEBHOOK_SECRET` with your actual deployment URL
3. **CORS**: Currently set to `*` (allow all). Update `ALLOWED_ORIGINS` to your frontend URL for production
4. **Free Tier Limitations**: 
   - Render free tier: App sleeps after 15 min of inactivity (first request takes ~30s)
   - Consider paid tier for production use

## Next Steps

- [ ] Deploy successfully
- [ ] Test all API endpoints
- [ ] Update frontend to use deployed API URL
- [ ] Set up monitoring
- [ ] Configure custom domain (optional)
- [ ] Set up CI/CD (optional)

## Support

If you encounter issues:
1. Check deployment logs
2. Verify all environment variables
3. Test MongoDB connection
4. Review DEPLOYMENT.md for detailed troubleshooting

---

**Your deployment URL will be**: `https://your-app-name.onrender.com` (or similar based on platform)
