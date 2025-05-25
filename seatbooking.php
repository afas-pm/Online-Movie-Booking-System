<?php
// Disable notices in PHP script
error_reporting(E_ALL & ~E_NOTICE);
session_start();
include_once 'Database.php';
include_once 'functions.php';

$time = $_GET['time'];
$movie = $_GET['movie'];
$date = date("Y-m-d");
$movieDate = $_GET['date'];

$bookings = getBookingsByDateTime($movie, $movieDate, $time);


//$htmlMessage = '<html>
//    <head>
//        <title>Test Email</title>
//    </head>
//    <body>
//        <h1>Welcome to Our Website!</h1>
//        <p>Thank you for signing up. Were glad to have you on board.</p>
//        <p>Feel free to explore our <a href="https://www.example.com">website</a> and discover exciting features.</p>
//        <p>Best regards,<br>The Example Team</p>
//    </body>
//    </html>';
//
//
//sendEmail("kmarshad@gmail.com", "test", $htmlMessage);

function generateSeatGrid($rows, $cols, $prefix, $bookedSeats, $seatType, $start = 1)
{
    $grid = "";
    $_start = $start;
    foreach ($rows as $row) {
        $grid .= "<tr> ";
        if ($start == 1)
            $grid .= " <td class='line' style='width: 10%;'>$row</td>";
        for ($col = 1; $col <= $cols; $col++) {
            $seat = $prefix . $row . $start;
            $disabled = in_array($seat, $bookedSeats) ? "disabled" : "";
            $grid .= "<td><input type='checkbox' class='larger' name='seat[]' value='$seat' $disabled></td>";
            $start++;
        }
        $start = $_start;
        $grid .= "</tr>";
    }
    return "<div class='seattable' id='$seatType'><table>$grid</table></div>";
}

$bookedSeats = [];

foreach ($bookings as $booking) {
    $bookedSeats = array_merge($bookedSeats, explode(",", $booking['seat']));
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie - <?php echo $movie; ?>, Time - <?php echo $time; ?></title>

    <!-- Preserve original CSS links -->
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@300;400;600;700;800;900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.larger').click(function () {
                var selectedSeats = $('.larger:checked').map(function () {
                    return this.value;
                }).get().join(',');
                $('#selectedtext').val(selectedSeats);
                $('#count').val($(".larger:checked").length);

                var count = $("[type='checkbox']:checked").length;
                if (count == 8) {
                    $('#notvalid').text("Maximum seat select 8");
                    return false;
                }
            });
        });
    </script>
</head>
<body>
<div class="container">
    <div class="seat_heading">
        <h3>
           <h3><center>BOOK YOUR SEAT NOW</center></h3>
</div>
<form action="payment.php" method="post">
    <input type="hidden" name="movieDate" value="<?= $movieDate ?>">
    <div class="row">
        <div class="col-lg-6">
            <div class="seatCharts-container">
                <div class="front">SCREEN</div>
                <center><p id="notvalid" style="color: red; font-size: 20px;"></p></center>

                <div class="seat_type">Silver : $100</div>
                <div class="row">
                    <div class="col-lg-12">
                        <?php echo generateSeatGrid(['I', 'H', 'G'], 12, '', $bookedSeats, 'silver'); ?>
                    </div>
                </div>

                <div class="seat_type">Gold : $150</div>
                <div class="row">
                    <div class="col-lg-12">
                        <?php echo generateSeatGrid(['F', 'E', 'D', 'C', 'B'], 12, '', $bookedSeats, 'gold'); ?>
                    </div>
                </div>

                <div class="seat_type">Platinum : $300</div>
                <div class="row">
                    <div class="col-lg-12">
                        <?php echo generateSeatGrid(['A'], 12, '', $bookedSeats, 'platinum'); ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-6">
                <table>
                    <tr>
                        <td width="50%"><font color="blue" size="5px" style="font-family: Shruti;">Movie:</font></td>
                        <td bgcolor="79F9E2">
                            <center><font size=5 style="font-family: Shruti;"><?php echo $movie; ?></font></center>
                        </td>
                    </tr>
                    <tr>
                        <td width="50%"><font color="blue" size="5px" style="font-family: Shruti;">Time:</font></td>
                        <td bgcolor="ECF68C">
                            <center><font size=5 style="font-family: Shruti;"><?php echo $time; ?></font></center>
                        </td>
                    </tr>
                    <tr>
                        <td width="50%"><font color="blue" size="5px" style="font-family: Shruti;">Seat:</font></td>
                        <td><input type="text" id="selectedtext" name="seats" placeholder="selected checkboxes"></td>
                    </tr>
                    <tr>
                        <td width="50%"><font color="blue" size="5px" style="font-family: Shruti;">Total Seat:</font>
                        </td>
                        <td><input type="text" id="count" name="totalseat" placeholder="Total Seats"></td>
                    </tr>
                </table>
                <input type="hidden" name="movie" value="<?php echo $movie; ?>">
                <input type="hidden" name="show" value="<?php echo $time; ?>">

                <?php if (isset($_SESSION['uname'])): ?>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <input type="submit" value="Payment Now" name="submit"
                                   class="form-control btn btn-primary py-2">
                        </div>
                    </div>
                <?php else: ?>
                    <div class="col-lg-12">
                        <div class="form-group">
                            <a href="login_form.php" class="form-control btn btn-primary py-2">Login to Book</a>
                        </div>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </form>
</div>

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>