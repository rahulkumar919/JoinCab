# Deployment Checklist

Use this checklist to ensure successful deployment of your CabBazar backend.

## Pre-Deployment

- [ ] All code is committed to GitHub
- [ ] `.env` file is NOT committed (check `.gitignore`)
- [ ] All dependencies are listed in `package.json`
- [ ] MongoDB Atlas is set up and accessible
- [ ] Firebase project is created with service account
- [ ] Razorpay account is active
- [ ] Google Maps API key is obtained
- [ ] All API keys and secrets are ready

## Deployment Platform Setup

### For Render.com (Recommended)

- [ ] Create account at render.com
- [ ] Connect GitHub repository
- [ ] Select "Web Service" type
- [ ] Choose Node environment
- [ ] Set build command: `npm install`
- [ ] Set start command: `npm start`
- [ ] Add all environment variables (see below)
- [ ] Deploy

### Environment Variables to Add

Copy these to your deployment platform's environment variables section:

```
NODE_ENV=production
PORT=10000
MONGO_URI=<your_mongodb_connection_string>
JWT_SECRET=<your_jwt_secret_min_32_chars>
JWT_EXPIRE=30d
LOG_LEVEL=info
ALLOWED_ORIGINS=<your_frontend_url>
FIREBASE_PROJECT_ID=<your_firebase_project_id>
FIREBASE_PRIVATE_KEY_ID=<your_firebase_private_key_id>
FIREBASE_PRIVATE_KEY=<your_firebase_private_key_with_newlines>
FIREBASE_CLIENT_EMAIL=<your_firebase_client_email>
FIREBASE_CLIENT_ID=<your_firebase_client_id>
FIREBASE_CLIENT_X509_CERT_URL=<your_firebase_cert_url>
GOOGLE_MAPS_API_KEY=<your_google_maps_api_key>
RAZORPAY_KEY_ID=<your_razorpay_key_id>
RAZORPAY_KEY_SECRET=<your_razorpay_key_secret>
RAZORPAY_WEBHOOK_SECRET=<your_deployment_url>/api/payments/webhook
```

## Post-Deployment Verification

- [ ] Deployment completed without errors
- [ ] Check deployment logs for any warnings
- [ ] Test health endpoint: `https://your-domain.com/health`
- [ ] Verify MongoDB connection (check logs)
- [ ] Test authentication endpoints
- [ ] Test booking creation
- [ ] Test payment flow
- [ ] Verify Firebase authentication works
- [ ] Check CORS settings allow your frontend
- [ ] Update Razorpay webhook URL in Razorpay dashboard
- [ ] Monitor logs for 24 hours

## Common Deployment Issues & Fixes

### Issue: Build fails with "Module not found"
**Fix**: Ensure all dependencies are in `package.json`, run `npm install` locally first

### Issue: Server crashes on start
**Fix**: Check all required environment variables are set correctly

### Issue: MongoDB connection timeout
**Fix**: 
- Add deployment IP to MongoDB Atlas whitelist (or use 0.0.0.0/0 for all IPs)
- Verify connection string is correct

### Issue: Firebase authentication fails
**Fix**: 
- Ensure FIREBASE_PRIVATE_KEY includes `\n` for newlines
- Verify all Firebase credentials are correct
- Check Firebase project settings

### Issue: CORS errors from frontend
**Fix**: Add your frontend URL to ALLOWED_ORIGINS environment variable

### Issue: Port already in use
**Fix**: Use PORT environment variable (Render uses 10000 by default)

## Monitoring

- [ ] Set up error monitoring (optional: Sentry, LogRocket)
- [ ] Configure uptime monitoring (optional: UptimeRobot)
- [ ] Set up log aggregation (optional: Papertrail, Loggly)
- [ ] Monitor MongoDB performance
- [ ] Track API response times

## Security Checklist

- [ ] All secrets are in environment variables, not code
- [ ] JWT_SECRET is strong (32+ characters)
- [ ] MongoDB uses authentication
- [ ] HTTPS is enabled (automatic on most platforms)
- [ ] Rate limiting is active
- [ ] CORS is properly configured
- [ ] Input validation is working
- [ ] Firebase credentials are secure

## Rollback Plan

If deployment fails:
1. Check deployment logs for errors
2. Verify all environment variables
3. Test locally with production environment variables
4. Rollback to previous working commit if needed
5. Redeploy after fixing issues

## Success Criteria

✅ Deployment completes without errors
✅ Health endpoint returns 200 OK
✅ Can create user account
✅ Can login and receive JWT token
✅ Can create booking
✅ Payment flow works
✅ No errors in logs
✅ Frontend can communicate with backend

## Next Steps After Successful Deployment

1. Update frontend API URL to point to deployed backend
2. Test complete user flow from frontend
3. Set up monitoring and alerts
4. Document API endpoints
5. Share API documentation with team
6. Plan for scaling if needed

---

**Deployment URL**: _________________
**Deployed Date**: _________________
**Deployed By**: _________________
