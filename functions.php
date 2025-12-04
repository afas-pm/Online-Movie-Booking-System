<?php
session_start();
include_once 'Database.php';

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require_once 'vendor/autoload.php';

function getBookingsByDateTime($movieName, $date, $time)
{
    global $conn;
    $bookedSeats = array();

    try {
        // Prepare the statement
        $stmt = $conn->prepare("SELECT * FROM customers WHERE movie = ? AND booking_date = ? AND show_time = ?");
        if ($stmt === false) {
            throw new Exception('Prepare failed: ' . $conn->error);
        }

        // Bind the parameters
        $stmt->bind_param("sss", $movieName, $date, $time);

        // Execute the query
        if ($stmt->execute() === false) {
            throw new Exception("Execute failed: " . $stmt->error);
        }

        // Get the result set
        $result = $stmt->get_result();

        // Check if the result is valid
        if ($result === false) {
            throw new Exception("Error: " . $stmt->error);
        }

        // Process the rows
        while ($row = $result->fetch_assoc()) {
            $bookedSeats[] = $row;
        }

        // Close the statement
        $stmt->close();

    } catch (Exception $e) {
        // Log the error or handle it as appropriate for your application
        error_log($e->getMessage());
        // Optionally, you could rethrow the exception if you want to handle it at a higher level
        // throw $e;
    }


    return $bookedSeats;
}


function sendEmail($to, $subject, $message, $from = 'test@example.com')
{
    $mail = new PHPMailer(true);

    try {
        // SMTP configuration for MailHog
        $mail->isSMTP();
        $mail->Host = 'smtp.gmail.com'; // Gmail SMTP server
        $mail->SMTPAuth = true; // Enable SMTP authentication
        $mail->Username = 'youremail@gmail.com';
        $mail->Password = 'yourpassword';
        $mail->SMTPSecure = 'tls'; // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 587; // TCP port to connect to (587 for TLS, 465 for SSL)


        // Email content
        $mail->setFrom($from);
        $mail->addAddress($to);
        $mail->Subject = $subject;
        $mail->isHTML(true);
        $mail->Body = $message;

        // Send the email
        $mail->send();
        return true; // Email sent successfully
    } catch (Exception $e) {
        error_log("Message could not be sent. PHPMailer Error: {$mail->ErrorInfo}");
        return false; // Failed to send email
    }
}
