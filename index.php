<?php
ob_start();
  session_start();
  require_once 'classes/Database.php';
  require_once 'dbconnect.php';
?>
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
     
      <table class="table table-dark">
        <thead>
          <tr>
            <th scope="col">ISBN</th>
            <th scope="col">Title</th>
            <th scope="col">Type</th>
            <th scope="col">Status</th>
          </tr>
        </thead>
        <tbody>
          <?php
              $status = array('avail', 'reserved');

              $result = $biglib->selectRow('media', '*');

              while ($_SESSION['row'] = $result->fetch_assoc()) {
                  echo '<tr>
                    <th scope=\"row\">'.$_SESSION['row']['isbn'].'</th>
                    <td>'.html_entity_decode($_SESSION['row']['title']).'</td>
                    <td>'.$_SESSION['row']['type'].'</td>
                    <td>'.$status[$_SESSION['row']['status']].'</td>
                    <td>
                      <a href="edit.php?id='.$_SESSION['row']['mediaID'].'" class="btn btn-warning">Edit</a><br>
                      <a href="delete.php?id='.$_SESSION['row']['mediaID'].'" class="btn btn-danger" style="margin-top: 0.5rem;">Delete</a>
                    </td>
                  </tr>';                
              }
          ?>
        </tbody>
      </table>

      <form action="create.php" method="post">
        <label for="isbn">ISBN:
          <input class="form-control" type="text" name="isbn" placeholder="ISBN">
        </label>
         
        <label for="fk_authorID">Status:
         <select name="fk_authorID" class="form-control">
          <option value="1">Author 1</option>
          <option value="2">Author 2</option>
          <option value="3">Author 3</option>
         </select>
        </label>

        <label for="title">Title:
          <input class="form-control" type="text" name="title" placeholder="Title">
        </label>
        
        <label for="discription">Description:
          <textarea name="discription" class="form-control"></textarea>
        </label>

        <label for="fk_publisherID">Publisher:
         <select name="fk_publisherID" class="form-control">
          <option value="1">Publisher 1</option>
          <option value="2">Publisher 2</option>
          <option value="3">Publisher 3</option>
         </select>
        </label>

        <label for="type">Type:
         <select name="type" class="form-control">
          <option value="Book">Book</option>
          <option value="DVD">DVD</option>
          <option value="CD">CD</option>
         </select>
        </label>
        
        <label for="imglink">Image Link:
          <input class="form-control" type="text" name="imglink">
        </label>

        <input type="submit" name="save" value="Save" class="btn btn-success">
      </form>
  </body>
</html>
