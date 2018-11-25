<!DOCTYPE html >
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title><?php echo $title; ?></title>
    <link rel="stylesheet" type="text/css" href="Styles/style-table.css">
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
            <li><a href=""><p style="Font-size:25px;
                            color: midnightblue">Galerry</p></a></li>
            <li><a href=""><p style="Font-size:25px;
                            color: midnightblue">Account</p></a></li>

        </ul>

    </nav>

    <div id="content_area">
        <?php echo $content;?>
        <?php include('server.php') ?>
        <!DOCTYPE html>
        <html>
        <head>
            <title>Message</title>
            <link rel="stylesheet" type="text/css" href="Styles/style-table.css">
        </head>
        <body>

        <form method="post" action="contact.php">
            <?php include('errors.php'); ?>
            <div class="input-group">
                <label style="color: midnightblue; ">First name</label>
                <input type="text" name="first_name" value="<?php echo $first_name; ?>">
            </div>

            <div class="input-group">
                <label style="color: midnightblue">Last name</label>
                <input type="text" name="last_name" value="<?php echo $last_name; ?>">
            </div>

            <div class="input-group">
                <label style="color: midnightblue">Email</label>
                <input type="email" name="email" value="<?php echo $email; ?>">
            </div>

            <div class="input-group">
                <label style="color: midnightblue">Message</label>
                <input type="text" name="message" value="<?php echo $message; ?>">
            </div>



            <div class="input-group">
                <button type="submit" class="btn" name="mess_btn">Submit</button>
            </div>

        </form>
        </body>
        </html>
    </div>


    <footer>
        <p style="Font-size:15px;
                            color: midnightblue"
        >Contact : 609 111 222</p>
    </footer>
</div>
</body>
</html>