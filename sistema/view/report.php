<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aliens Abducted Me - Report an Abduction</title>
</head>
<body>
    <h2>Aliens abduted Me - Report an Abduct</h2>
    <?php
    $name = $_POST['firstname'].' '.$_POST['lastname'];   
    $firstname = $_POST['firstname'];   
    $lastname = $_POST['lastname'];
    $whenithappened = $_POST['whenithappened'];   
    $howlong = $_POST['howlong'];   
    $howmany = $_POST['howmany'];   
    $aliendescription = $_POST['aliendescription'];   
    $whattheydid = $_POST['whattheydid'];   
    $fangspotted = $_POST['fangspotted'];   
    $email = $_POST['email'];   
    $other = $_POST['other'];   

 
    $host = "mysql";
    $user = "db_user";
    $pass = "db_user_pass";
    $database = "useacabeca";
            $dbc = mysqli_connect($host, $user, $pass, $database) or die("Couldn't connect to database'");
            // mysql_select_db($database, $dbc);
            $sql = "INSERT INTO `aliens_abduction` (`aa_firstname`, `aa_lastname`, `aa_whenithappened`, `aa_howlong`, `aa_howmany`, `aa_aliendescription`, `aa_whattheydid`, `aa_fangspotted`, `aa_email`, `aa_other`) 
            VALUES ('$firstname','$lastname','$whenithappened', '$howlong','$howmany','$aliendescription', '$whattheydid', '$fangspotted', '$email', 't');";
            
            if (mysqli_query($dbc, $sql)) {
                echo "New record created successfully";
          } else {
                echo "Error: " . $sql . "<br>" . mysqli_error($dbc);
          }
            mysqli_close($dbc);

    
    echo 'Thanks for submitting the form.<br/>';
    echo 'You were abducted '. $whenithappened;
    echo 'and were gone for '. $howlong.'<br/>';
    echo 'Number of aliens '. $howmany.'<br/>';
    echo 'Describe Them '. $aliendescription.'<br/>';
    echo 'The aliens did this '. $whattheydid.'<br/>';
    echo 'Was Fang there? '. $fangspotted.'<br/>';
    echo 'Other Comments '. $other.'<br/>';
    echo 'Your email address is '. $email.'<br/>';

    ?>
</body>
</html>