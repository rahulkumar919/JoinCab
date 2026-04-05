# CabBazar Backend API

Production-ready backend API for a cab booking platform built with Node.js, Express, MongoDB, Firebase, and Razorpay.

## Features

- User authentication with Firebase and JWT
- Real-time cab booking system
- Payment integration with Razorpay
- Google Maps integration for location services
- Driver and vehicle management
- Booking history and tracking
- Secure API with rate limiting and validation

## Tech Stack

- **Runtime**: Node.js 18.x or higher (20.x recommended)
- **Framework**: Express.js
- **Database**: MongoDB with Mongoose
- **Authentication**: Firebase Admin SDK + JWT
- **Payment**: Razorpay
- **Maps**: Google Maps API
- **Logging**: Winston
- **Security**: Helmet, CORS, Rate Limiting

## Quick Start

### Prerequisites

- Node.js 18.x or higher (20.x recommended)
- MongoDB (local or Atlas)
- Firebase project
- Razorpay account
- Google Maps API key

### Installation

1. Clone the repository:
```bash
git clone https://github.com/rahulkumar919/JoinCab.git
cd cabbazar-backend-main
```

2. Install dependencies:
```bash
npm install
```

3. Create `.env` file (see `.env.example` or DEPLOYMENT.md)

4. Start development server:
```bash
npm run dev
```

5. Start production server:
```bash
npm start
```

## API Endpoints

- `GET /health` - Health check endpoint
- `POST /api/auth/register` - User registration
- `POST /api/auth/login` - User login
- `GET /api/bookings` - Get user bookings
- `POST /api/bookings` - Create new booking
- `POST /api/payments` - Process payment
- And more...

## Deployment

See [DEPLOYMENT.md](./DEPLOYMENT.md) for detailed deployment instructions for:
- Render.com (Recommended)
- Railway.app
- Heroku
- Vercel
- AWS/DigitalOcean/VPS

### Quick Deploy to Render

1. Push code to GitHub
2. Connect repository to Render
3. Add environment variables
4. Deploy automatically with `render.yaml`

## Environment Variables

Required environment variables (see DEPLOYMENT.md for complete list):

```
NODE_ENV=production
PORT=10000
MONGO_URI=your_mongodb_uri
JWT_SECRET=your_jwt_secret
FIREBASE_PROJECT_ID=your_project_id
FIREBASE_PRIVATE_KEY=your_private_key
FIREBASE_CLIENT_EMAIL=your_client_email
GOOGLE_MAPS_API_KEY=your_maps_key
RAZORPAY_KEY_ID=your_razorpay_id
RAZORPAY_KEY_SECRET=your_razorpay_secret
```

## Project Structure

```
cabbazar-backend-main/
├── src/
│   ├── config/          # Configuration files
│   ├── controllers/     # Route controllers
│   ├── middleware/      # Custom middleware
│   ├── models/          # Mongoose models
│   ├── routes/          # API routes
│   ├── services/        # Business logic
│   └── utils/           # Helper functions
├── logs/                # Application logs
├── server.js            # Entry point
├── package.json         # Dependencies
├── render.yaml          # Render deployment config
├── vercel.json          # Vercel deployment config
├── Procfile             # Heroku deployment config
└── DEPLOYMENT.md        # Deployment guide
```

## Scripts

- `npm start` - Start production server
- `npm run dev` - Start development server with nodemon
- `npm run seed` - Seed database with sample data
- `npm test` - Run tests

## Security

- Environment variables for sensitive data
- JWT token authentication
- Firebase authentication
- Rate limiting on API endpoints
- Input validation and sanitization
- MongoDB injection protection
- Helmet for security headers
- CORS configuration

## License

MIT

## Author

Rahul Kumar

## Support

For issues and questions, please open an issue on GitHub or refer to DEPLOYMENT.md for troubleshooting.
