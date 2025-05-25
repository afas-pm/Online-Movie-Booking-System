<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Username and Password Validation</title>
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/jquery-3.5.1.min.js"></script>
  <script type="text/javascript" src="ajaxValidation.js"></script>
  <style type="text/css">
    body {
      background-color: #f8f9fa;
      font-family: 'Nunito Sans', sans-serif;
    }
    .container {
      margin-top: 100px;
      padding: 30px;
      background-color: #ffffff;
      box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
      border-radius: 10px;
    }
    .form-label {
      font-weight: bold;
    }
    #message {
      margin-top: 15px;
      color: red;
    }
    .btn-custom {
      background-color: #007bff;
      color: #fff;
    }
  </style>
</head>
<body>
  <div class="container col-md-5">
    <h2 class="text-center mb-4">Login</h2>
    <div class="mb-3">
      <label for="userEmail" class="form-label">Email</label>
      <input type="email" class="form-control" id="userEmail" placeholder="Enter your email">
    </div>
    <div class="mb-3">
      <label for="userPassword" class="form-label">Password</label>
      <input type="password" class="form-control" id="userPassword" placeholder="Enter your password">
    </div>
    <p id="message"></p>
    <div class="mb-3">
      <button class="form-control btn btn-custom" id="checkValidation">Login</button>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
