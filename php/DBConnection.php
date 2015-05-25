<?php

/**
 * Class for managing the connection with the database
 */ 
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
        mysql_select_db($this->dbname); 
    }

    function closeConnection(){
        mysql_close($link);
    }


    function launchSelectQuery($query, $fields){

        $this->openConnection();
        $query_result=mysql_query($query);
        $data_result=array();

        $num_results=mysql_numrows($result);
        $num_fields= count($fields);

        $this->closeConnection();

        $i=0;
        while ($i < $num_results) {
            $j=0;
            while($j < $num_fields){
                $data_result[$i][$j]=mysql_result($query_result,$i,$fields[$j]);
                $j++;
            }
        $i++;
        }
        return $data_result;
    }

    function launchInsertQuery($table, $fields){
        $query = "INSERT INTO ".$table;
        $query.="VALUES (";
        for($i=0;$i<count($fields);$i++){
            $query.=$fields.", ";
        }
        rtrim($query,",");
        $query.=")";

        mysql_query($query);
    }

}












