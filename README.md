🎬 Online Movie Booking System

An Online Movie Booking System built using **PHP** and **MySQL**, designed for theaters to manage movie schedules and seat reservations without relying on third-party platforms like BookMyShow.

## 🚀 Features

- 🔐 User Registration & Login
- 📅 Movie Listings with Show Timings
- 🪑 Seat Selection by Category (Silver, Gold, Platinum)
- 💳 Booking Summary & Simulated Payment
- 🎟️ Ticket Generation with Email Confirmation
- 🛠️ Admin Panel to Manage Movies, Shows, and Users

## 🛠️ Technologies Used

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** PHP
- **Database:** MySQL
- **Mailing:** PHP Mailer (or similar)
- **Hosting (optional):** XAMPP / LAMP stack

## Database Setup
1. Open phpMyAdmin.
2. Create a new database (e.g., `moviebook`).
3. Import the provided `moviebook.sql` file.

## Screenshots

### 🔐 Login Page
![Login](https://github.com/afas-pm/Online-Movie-Booking-System/blob/main/images/Login.png?raw=true)

### 🏠 Home Page After Login
![Home](https://github.com/afas-pm/Online-Movie-Booking-System/blob/main/images/Home%20Page%20After%20Login.png?raw=true)

### 🎟️ Seat Booking
![Seat Booking](https://github.com/afas-pm/Online-Movie-Booking-System/blob/main/images/seat%20booking.png?raw=true)

### 💳 Payment Form
![Payment](https://github.com/afas-pm/Online-Movie-Booking-System/blob/main/images/Payment%20Form.png?raw=true)

...


## 📂 Project Structure

```plaintext
/online-movie-booking-system
├── admin/                  # Admin panel files
├── user/                   # User-side pages
├── includes/               # Database connection and shared functions
├── assets/                 # CSS, JS, and image files
├── screenshots/            # Project screenshots (for documentation)
├── db/                     # SQL file for database schema
├── ticket_template/        # Email ticket template and image
├── index.php               # Home page
├── login.php               # User login
├── register.php            # User registration
├── .gitignore
└── README.md
>>>>>>> 36e270fab974c0ad8e23a1abd703333d411bdfdb
