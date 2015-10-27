<?php

	$dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = 'root';
    $dbname = 'test_destinia';

    $link = mysql_connect($dbhost, $dbuser, $dbpass);
    if (!$link) {
        die('Could not connect: ' . mysql_error());
    }
    mysql_select_db($dbname); 


        $result=mysql_query("SELECT * FROM test_apartment_info");

        $num=mysql_numrows($result);

        mysql_close();

        echo "<b><center>Database Output</center></b><br><br>";

        $i=0;
        while ($i < $num) {

        $first=mysql_result($result,$i,"entity_id");
        $last=mysql_result($result,$i,"name");
        $phone=mysql_result($result,$i,"num_guests");
        $mobile=mysql_result($result,$i,"type_room");
        

        echo "<b>$first $last</b><br>Phone: $phone<br>Mobile: $mobile<br>\n";

        $i++;
        }
    

