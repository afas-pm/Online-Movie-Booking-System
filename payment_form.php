<?php
error_reporting(E_ALL & ~E_NOTICE);
session_start();
include "Database.php";
include_once "functions.php";
global $conn;
if ($_POST['card_name'] != '' && $_POST['card_number'] != '' && $_POST['ex_date'] != '' && $_POST['cvv'] != '') {
    $movie = mysqli_real_escape_string($conn, $_POST['movie']);
    $movieDate = mysqli_real_escape_string($conn, $_POST['movieDate']);
    $time = mysqli_real_escape_string($conn, $_POST['time']);
    $seat = mysqli_real_escape_string($conn, $_POST['seat']);
    $totalseat = mysqli_real_escape_string($conn, $_POST['totalseat']);
    $price = mysqli_real_escape_string($conn, $_POST['price']);
    $card_name = mysqli_real_escape_string($conn, $_POST['card_name']);
    $card_number = mysqli_real_escape_string($conn, $_POST['card_number']);
    $ex_date = mysqli_real_escape_string($conn, $_POST['ex_date']);
    $cvv = mysqli_real_escape_string($conn, $_POST['cvv']);

    $toEmail = "";
    $result = mysqli_query($conn, "SELECT * FROM user WHERE username = '" . $_SESSION['uname'] . "'");
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_array($result)) {
            $uid = $row['id'];
            $toEmail = $row['email'];
        }
    }
    $custemer_id = mt_rand();
    $payment = date("Y-m-d H:i:s");
//      $booking = date("D-m-y ",strtotime('tomorrow'));
    $booking = $movieDate;

    $_SESSION['custemer_id'] = $custemer_id;
    $insert_record = mysqli_query($conn, "INSERT INTO customers (`uid`,`movie`,`show_time`,`seat`,`totalseat`,`price`,`payment_date`,`booking_date`,`card_name`,`card_number`,`ex_date`,`cvv`,`custemer_id`)VALUES('" . $uid . "','" . $movie . "','" . $time . "','" . $seat . "','" . $totalseat . "','" . $price . "','" . $payment . "','" . $booking . "','" . $card_name . "','" . $card_number . "','" . $ex_date . "','" . $cvv . "','" . $custemer_id . "')");

    if (!$insert_record) {
        echo 2;
    } else {

        $subject = 'Ticket Booking Confirmation';
        $htmlMessage = str_replace(
            ['[Customer Name]', '[Booking Reference]', '[Event Name]', '[Venue Name]', '[Event Date]', '[Event Time]', '[Number of Tickets]', '[Seat Numbers]'],
            [$_SESSION['uname'], $custemer_id, $movie, 'Theater 1', $movieDate, $time, $totalseat, $seat],
            file_get_contents('ticket_booking_email_template.html')
        );

        sendEmail($toEmail, $subject, $htmlMessage);

        echo 1;
    }
}
?>