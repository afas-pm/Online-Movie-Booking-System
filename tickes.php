<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Your Ticket</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #ffffff;
      margin: 0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }
    .container {
      background-color: #f8f9fa;
      border-radius: 8px;
      box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
      padding: 20px;
      text-align: center;
      max-width: 400px;
      width: 100%;
    }
    h1 {
      color: #333;
      font-size: 20px;
      margin-bottom: 20px;
    }
    .button {
      display: block;
      margin: 10px 0;
      padding: 10px 0;
      font-size: 16px;
      color: #fff;
      background-color: #007bff;
      border: none;
      border-radius: 4px;
      text-decoration: none;
      transition: background-color 0.3s;
    }
    .button:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Congratulations! Your Payment is Complete and Your Seat is Booked</h1>
    <a href="ticket_show.php" target="_blank" class="button">Take Your Ticket</a>
    <a href="logout.php" class="button">Log Out</a>
    <a href="index.php" class="button">Back To Home</a>
  </div>
</body>
</html>
