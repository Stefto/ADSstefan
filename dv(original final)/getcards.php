<?php
    require 'connect.php';
//getting the data
    $query = "SELECT * FROM cards";
    $result = mysqli_query($conn, $query) or die("query failed" . mysqli_error($conn));

	while($row = $result->fetch_array(MYSQL_ASSOC)) {
            $myArray[] = $row;
    }
    echo json_encode($myArray);
?>