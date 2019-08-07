<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <?php require_once 'classes/Database.php' ?>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">

    <title>Big Library</title>
  </head>
  <body>
    <div class="container">
      <h1 class="text-center text-danger">Big Library</h1>
      <?php

        $status = array('avail', 'reserved');

        if (isset($_POST['edit']) && !empty($_POST['edit'])) {
         echo
         '
          <form action="" method="post">
            <input type="text" name="edit_isbn" value="'.$row['isbn'].'">
            <input type="text" name="edit_title" value="'.$row['title'].'">
            <select name="edit_type">
              <option value=""></option>
              <option value=""></option>
            </select>
            <select name="edit_status">
              <option value="'.$row['status'].'">'.$status[$row['status']].'</option>
              <option value=""></option>
            </select>
          </form>
        ';
        }
        
      ?>
      <table class="table table-dark">
        <thead>
          <tr>
            <th scope="col">ISBN</th>
            <th scope="col">Title</th>
            <!--<th scope="col">Author</th>-->
            <th scope="col">Type</th>
            <th scope="col">Status</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          <?php
            $bigLibrary = new mysqli('localhost', 'root', '', 'cr10_andreas_harasztosi_biglibrary');
            /*$sql = 'SELECT isbn, title, type, status, name, surname FROM media LEFT JOIN author ON media.fk_author = author.authorID;';*/
            $sql = 'SELECT mediaID, isbn, title, type, status FROM media;';
            $result = $bigLibrary->query($sql);

            if ($result->num_rows > 0) {
              while ($row = $result->fetch_assoc()) {
                echo '<tr>
                  <th scope=\"row\">'.$row['isbn'].'</th>
                  <td>'.$row['title'].'</td>
                  <td>'.$row['type'].'</td>
                  <td>'.$status[$row['status']].'</td>
                  <td>
                    <button type="submit" name="edit" value='.$row['mediaID'].'" class="btn btn-warning">Edit</a>
                    <button type="submit" name="delete" value="'.$row['mediaID'].'" class="btn btn-danger">Delete</button>
                  </td>
                </tr>';
              }
            } else {
              return 'no results';
            }
          ?>
        </tbody>
      </table>
    </div>
  </body>
</html>
