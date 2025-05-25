<?php
session_start();

include_once 'Database.php';
$id = $_GET['pass'];
$result = mysqli_query($conn, "SELECT * FROM add_movie WHERE id = '" . $id . "'");
$row = mysqli_fetch_array($result);
?>

<!DOCTYPE html>
<html>
<head>

    <!-- Css Styles -->
    <meta charset="UTF-8">
    <meta name="description" content="Male_Fashion Template">
    <meta name="keywords" content="Male_Fashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $row['movie_name']; ?> Movie Deatis</title>


    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="  text/css">
    <link rel="stylesheet" href="css/fonts-googleapis.css" type="  text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">

</head>
<body>
<?php
include("header.php");
?>

<section id="aboutUs">
    <div class="container">
        <?php
        include_once 'Database.php';
        $id = $_GET['pass'];
        $result = mysqli_query($conn, "SELECT * FROM add_movie WHERE id = '" . $id . "'");


        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $id = $row['id'];
                ?>
                <div class="row feature design">
                    <div class="col-lg-5"><img src="admin/image/<?php echo $row['image']; ?>" class="resize-detail"
                                               alt="" width="100%"></div>
                    <div class="col-lg-7">

                        <table class="content-table">
                            <thead>
                            <tr>
                                <th colspan="2">Movie Details</th>
                            </tr>
                            </thead>

                            <tbody>
                            <tr>
                                <td>Movie Name</td>
                                <td><?php echo $row['movie_name']; ?></td>
                            </tr>
                            <tr>
                                <td>Release Date</td>
                                <td><?php echo $row['release_date']; ?></td>
                            </tr>
                            <tr>
                                <td>Directer Name</td>
                                <td><?php echo $row['directer']; ?></td>
                            </tr>
                            <tr>
                                <td>Category</td>
                                <td><?php echo $row['categroy']; ?></td>
                            </tr>
                            <tr>
                                <td>Duration</td>
                                <td><?php echo $row['duration']; ?></td>
                            </tr>
                            <tr>
                                <td>Language</td>
                                <td><?php echo $row['language']; ?></td>
                            </tr>

                            <tr>
                                <td>Tailer</td>
                                <td><a data-toggle="modal" data-target="#tailer_modal<?php echo $row['id']; ?>">Veiw
                                        Tailer</a></td>
                                <div class="modal fade" id="tailer_modal<?php echo $row['id']; ?>" tabindex="-1"
                                     role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog" role="document">
                                        <div class="modal-content">
                                            <embed style="width: 820px; height: 450px;"
                                                   src="<?php echo $row['you_tube_link']; ?>"></embed>
                                        </div>
                                    </div>
                                </div>
                            </tr>

                            </tbody>


                        </table>
                        <?php if ($row['action'] == "running") {


                            ?>
                            <div class="tiem-link">
                                <h4>Show Book Ticket:</h4><br>

                                <div>
                                    Date:
                                    <select name="dates" id="showDate">
                                        <?php
                                        $book_to = $row['book_to']; // Show only 3 valid dates
                                        $show_to_date = $row['show_to_date']; // Example end date
                                        $start_date = strtotime(date("Y-m-d")); // Start from today
                                        $end_date = strtotime($show_to_date); // Convert end date to timestamp
                                        $count = 0; // Counter for how many dates have been added

                                        // Loop until we have added the required number of dates or reach the end date
                                        while ($count < $book_to) {
                                            $date = date("Y-m-d", $start_date);
                                            echo "<option value='$date'>$date</option>";
                                            $count++;


                                            // Increment date by one day
                                            $start_date = strtotime("+1 day", $start_date);
                                        }
                                        ?>
                                    </select>
                                </div>


                                <br>

                                <?php
                                $time = $row['show'];
                                $movie = $row['movie_name'];
                                $set_time = explode(",", $time);
                                $res = $conn->query("SELECT * FROM theater_show");

                                if ($res->num_rows > 0) {
                                    echo "Time: ";
                                    while ($show_row = $res->fetch_assoc()) {
                                        if (in_array($show_row['show'], $set_time)) {
                                            echo "<a href=\"javascript:goToSeatBooking('" . htmlspecialchars($movie) . "', '" . htmlspecialchars($show_row['show']) . "',)\">" . htmlspecialchars($show_row['show']) . "</a>";
                                        }
                                    }
                                }
                                ?>


                            </div>
                            <?php
                        }
                        ?>
                    </div>

                </div>
                <div class="description">
                    <h4>Description</h4>
                    <p><?php echo htmlspecialchars($row['decription']); ?></p>
                </div>
                <?php
            }
        }
        ?>
    </div>

</section>

<?php
include("footer.php");
?>
<script>
    function goToSeatBooking(movie, time) {
        const date = document.getElementById('showDate').value


        console.log(movie, time, date)
       // console.log(window.location)
        //console.log(window.location.pathname);
        //seatbooking.php?movie=
        window.location.href = "seatbooking.php?movie=" + movie + "&time=" + time + "&date=" + date;

    }
</script>


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