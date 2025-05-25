<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Customer Page</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<?php
session_start();
if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
    exit();
}

include_once("./templates/top.php");
include_once("./templates/navbar.php");
include "./templates/sidebar.php";
include_once 'Database.php'; // DB connection

function getPaymentReport($movie, $period) {
    global $conn;
    $whereClause = match($period) {
        'daily' => "DATE(payment_date) = CURDATE()",
        'weekly' => "YEARWEEK(payment_date, 1) = YEARWEEK(CURDATE(), 1)",
        'monthly' => "MONTH(payment_date) = MONTH(CURDATE()) AND YEAR(payment_date) = YEAR(CURDATE())",
        default => ''
    };
    
    $sql = "SELECT SUM(price) AS total_payment FROM customers WHERE movie = '$movie' AND $whereClause";
    $result = mysqli_query($conn, $sql);
    return $result ? mysqli_fetch_assoc($result)['total_payment'] : 0;
}

$movieName = $_POST['movie'] ?? '';
$reportType = $_POST['report_type'] ?? '';
$reportData = (!empty($movieName) && !empty($reportType)) ? getPaymentReport($movieName, $reportType) : '';
?>


    <h2>Payment Report</h2>
    <form method="POST" action="payment_report.php">
        <div class="form-group">
            <label for="movie">Select Movie</label>
            <select class="form-control" id="movie" name="movie" required>
                <option value="">Select Movie</option>
                <?php
                $result = mysqli_query($conn, "SELECT * FROM add_movie WHERE action='running'");
                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<option value='{$row['movie_name']}'>{$row['movie_name']}</option>";
                }
                ?>
            </select>
        </div>
        <div class="form-group">
            <label for="report_type">Select Report Type</label>
            <select class="form-control" id="report_type" name="report_type" required>
                <option value="">Select Report Type</option>
                <option value="daily">Daily</option>
                <option value="weekly">Weekly</option>
                <option value="monthly">Monthly</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Get Report</button>
    </form>

    <?php if (!empty($reportData)) { ?>
        <div class="mt-4">
            <h4>Gross Payment Report</h4>
            <p><strong>Movie:</strong> <?php echo htmlspecialchars($movieName); ?></p>
            <p><strong>Report Type:</strong> <?php echo ucfirst(htmlspecialchars($reportType)); ?></p>
            <p><strong>Total Payment:</strong> ₹<?php echo htmlspecialchars($reportData); ?></p>
        </div>
    <?php } ?>
</div>

<?php include_once("./templates/footer.php"); ?>

</body>
</html>
