<?php
  require_once 'classes/Database.php';
  require_once 'dbconnect.php';
  ob_start();
  session_start();
?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <style>
      .w250 {
        width: 200px !important;
      }
    </style>

    <title>Big Library - CR 10</title>
  </head>
  <body>
    <div class="container">
      <form action="db_update.php?id=<?php echo $_GET['id']; ?>" method="post">
       
          <?php 
          	$status = array('avail', 'reserved');

                  $result = $biglib->selectRow('media', '*', 'WHERE mediaID = '.$_GET['id'].';');
                  $_SESSION['row'] = $result->fetch_assoc();

                  echo '<label>ID:&nbsp;<input type="text" class="form-control" value="'.$_GET['id'].'" readonly="readonly">
                  		</label>

                        <label for="isbn">ISBN:
                          <input class="form-control" type="text" name="isbn" value="'.html_entity_decode($_SESSION['row']['isbn']).'">
                        </label>

                        <label for="title">Title:
                          <input class="form-control" type="text" name="title" value="'.html_entity_decode($_SESSION['row']['title']).'">
                        </label>

                        <label for="type">Type:
                          <input class="form-control" type="text" name="type" value="'.html_entity_decode($_SESSION['row']['type']).'">
                        </label>

                        <label for="status">Status:
                         <select name="status" class="form-control">
                         	<option value="0">avail</option>
                         	<option value="1">reserved</option>
                         </select>
                        </label>
                         <input type="submit" value="Save Changes" class="btn btn-warning">
                        ';

          ?>
      </form>
    </div>
  </body>
</html>