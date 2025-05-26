Online Movie Booking System (PHP & MySQL)
-----------------------------------------

This is a web-based movie ticket booking platform developed in PHP and MySQL. It enables users to book tickets directly from the theater's website, offering a seamless experience similar to BookMyShow.

Features:
---------
- User and Admin login
- Movie listing with showtimes
- Seat selection (Silver, Gold, Platinum)
- Email ticket confirmation using PHPMailer
- Feedback system
- Clean, mobile-responsive UI

Technologies:
-------------
- PHP
- MySQL
- HTML, CSS, Bootstrap, JavaScript
- PHPMailer

Setup Instructions:
-------------------
1. Import `moviebook.sql` into MySQL.
2. Edit database config in `db/config.php`.
3. Place the project in `htdocs/` (XAMPP).
4. Run `http://localhost/moviebook/` in your browser.

Folder Structure:
-----------------
- admin/
- user/
- includes/
- assets/
- db/
- confirmation.php
- index.php

Email Function:
---------------
Uses PHPMailer to send booking confirmation emails with ticket details.

Future Enhancements:
--------------------
- Payment gateway
- Ticket cancellation
- PWA support
- Language localization

Developer:
----------
Afas Mohamed P M
MCA - SCMS School of Technology and Management
