<?php

class DBConnection {

    private $dbhost;
    private $dbuser;
    private $dbpass;
    private $dbname;
    private $link;


	function __construct($dbhost = 'localhost', $dbuser = 'root', $dbpass = 'root', $dbname = 'test_destinia'){

        $this->dbhost = $dbhost;
        $this->dbuser = $dbuser;
        $this->dbpass = $dbpass;
        $this->dbname = $dbname;
        $this->link = null;
	}

    function openConnection(){
        $this->link = mysql_connect($dbhost, $dbuser, $dbpass);
        if (!$this->link) {
            die('Could not connect: ' . mysql_error());
        }
        mysql_select_db($this->dbname) 
    }

    function closeConnection(){
        mysql_close($link);
    }


    function launchSQL($query){
        $query="SELECT * FROM contacts";
        $result=mysql_query($query);

        $num=mysql_numrows($result);

        mysql_close();

        echo "<b><center>Database Output</center></b><br><br>";

        $i=0;
        while ($i < $num) {

        $first=mysql_result($result,$i,"first");
        $last=mysql_result($result,$i,"last");
        $phone=mysql_result($result,$i,"phone");
        $mobile=mysql_result($result,$i,"mobile");
        $fax=mysql_result($result,$i,"fax");
        $email=mysql_result($result,$i,"email");
        $web=mysql_result($result,$i,"web");

        echo "<b>$first $last</b><br>Phone: $phone<br>Mobile: $mobile<br>Fax: $fax<br>E-mail: $email<br>Web: $web<br><hr><br>";

        $i++;
        }
    }

    function insert(){
        $query = "INSERT INTO contacts VALUES ('','$first','$last','$phone','$mobile','$fax','$email','$web')";
        mysql_query($query);
    }

}












