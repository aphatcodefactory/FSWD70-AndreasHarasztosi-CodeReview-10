<?php

  /**
   *
   */
  class Database {
    public $mysqli;

    function __construct($hostname, $dbuser, $dbpw, $dbname)  {
      $this->mysqli = mysqli_connect($hostname, $dbuser, $dbpw, $dbname);
      if ($this->mysqli->connect_errno) {
         die('Failed to connect to MySQL: ' . $mysqli->connect_error);
      }
    } // end: __construct

    public function dataSelect($colName = array(), $tblName = array(), $where = '') {
      if (count($colName) < 2) {
        $colNameStr = implode($colName, ' FROM' . $tblName);
      } else {
        $colNameStr = implode($colName, ', ');
      };

      /*if (count($tblName) < 2) {
        $tblNameStr = implode($tblName, ' FROM');
      } else {
        $tblNameStr = implode($tblName, ', ');
      };*/

      if ($where = '') {
        $whereStr = "WHERE $where";
      }

      echo $sql = "SELECT $colNameStr $tblNameStr;";
      $result = $this->mysqli->query($sql);
      if ($result->num_rows > 0) {
        while ($row = $result->fetch_assoc()) {
          return $row;
        }
      } else {
        return 'no results';
      }
    } // end: dataSelect
  }
