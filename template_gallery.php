<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><?php echo $title; ?></title>
    <link rel="stylesheet" type="text/css" href="Styles/style-gallery.css">
</head>

<body>
<div id="wrapper">
    <div id="banner">

    </div>

    <nav id="navigation">
        <ul id="nav">
            <li><a href="index.php"><p style="Font-size:25px;
                    color: midnightblue">Home
                    </p></a></li>
            <li><a href="reservation.php"><p style="Font-size:25px;
                            color: midnightblue">Reservation</p></a></li>
            <li><a href="contact.php"><p style="Font-size:25px;
                            color: midnightblue">Contact us</p></a></li>
            <li><a href="gallery.php"><p style="Font-size:25px;
                            color: midnightblue">Gallery</p></a></li>
            <li><a href=""><p style="Font-size:25px;
                            color: midnightblue">Account</p></a></li>

        </ul>

    </nav>

    <div id="content_area">
        <?php echo $content;?>
    </div>



    </div>
    <footer>
        <p style="Font-size:15px;
                            color: midnightblue"
        >Contact : 609 111 222</p>
    </footer>
</div>
</body>
</html>