<!DOCTYPE html>  
<head>
  <title>UPDATE PostgreSQL data with PHP</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <style>li {list-style: none;}</style>
</head>
<body>
  <h2>Supply bookid and enter</h2>
  <ul>
    <form name="display" action="index.php" method="POST" >
      <li>Book ID:</li>
      <li><input type="text" name="bookid" /></li>
      <li><input type="submit" name="submit" /></li>
    </form>
  </ul>
  <?php
    // Connect to the database. Please change the password in the following line accordingly
    $db     = pg_connect("host=localhost port=5432 dbname=Project1 user=postgres password=26"); 
    $result = pg_query($db, "SELECT * FROM book where book_id = '$_POST[bookid]'");   // Query template
    $row    = pg_fetch_assoc($result);    // To store the result row
    if (isset($_POST['submit'])) {
        echo "<ul><form name='update' action='index.php' method='POST' >  
      <li>Book ID:</li>  
      <li><input type='text' name='bookid_updated' value='$row[book_id]' /></li>  
      <li>Book Name:</li>  
      <li><input type='text' name='book_name_updated' value='$row[name]' /></li>  
      <li>Price (USD):</li><li><input type='text' name='price_updated' value='$row[price]' /></li>  
      <li>Date of publication:</li>  
      <li><input type='text' name='dop_updated' value='$row[date_of_publication]' /></li>  
      <li><input type='submit' name='new' /></li>  
      </form>  
      </ul>";
    }
    if (isset($_POST['new'])) { // Submit the update SQL command
        $result = pg_query($db, "UPDATE book SET book_id = '$_POST[bookid_updated]',  
    name = '$_POST[book_name_updated]',price = '$_POST[price_updated]',  
    date_of_publication = '$_POST[dop_updated]'");
        if (!$result) {
            echo "Update failed!!";
        } else {
            echo "Update successful!";
        }
    }
    ?>
    <h2>Send a request: enter oid and cid</h2>  
    <ul>
      <form name="insert" action="index.php" method="POST" >
        <li>OID (owner id):</li>
        <li><input type="text" name="oid" /></li>
        <li>CID (CareTaker id):</li>
        <li><input type="text" name="cid" /></li>
        <li><input type="submit" name="submitRequest"/></li>
      </form>
    </ul>
    <?php
      $db = pg_connect("host=localhost port=5432 dbname=Project1 user=postgres password=26"); 
      if (isset($_POST['submitRequest'])) {
        $result = pg_query($db, "INSERT INTO requests (oid, cid) VALUES ('$_POST[oid]', '$_POST[cid]')"); 
        if (!$result) {
            echo "Request failed!!";
        } else {
            echo "Request successful!";
        }
      }   
    ?>
    <h2>Search a request: enter cid</h2>  
    <ul>
      <form name="insert" action="index.php" method="POST" >
        <li>CID (CareTaker id):</li>
        <li><input type="text" name="cidSearch" /></li>
        <li><input type="submit" name="searchRequest"/></li>
      </form>
    </ul>
    <?php
    $db     = pg_connect("host=localhost port=5432 dbname=Project1 user=postgres password=26"); 
    $result = pg_query($db, "SELECT * FROM requests where cid = '$_POST[cidSearch]'");   // Query template
    if (isset($_POST['searchRequest'])) {
      while($row = pg_fetch_assoc($result)) {
        if ($row[status] == 1) {
          $status = "accepted";
        } else {
          $status = "pending";
        }
        echo "<ul><form name='showRequest' action='index.php' method='POST' >  
      <li>Requester OID: $row[oid]</li>  
      <li>CID: $row[cid]</li>  
      <li>Request Status: $status</li>   
      </form>  
      </ul>";
      }
    }
    echo "<h2>Accept a request: enter oid and cid</h2>
    <ul><form name='acceptRequest' action='index.php' method='POST' >  
      <li>Requester OID: </li>
      <li><input type='text' name='oid_update'/></li>  
      <li>CID: </li>  
      <li><input type='text' name='cid_update'/></li>
      <li><input type='submit' name='acceptRequest' /></li>  
      </form>      
      </ul>";
    if (isset($_POST['acceptRequest'])) {
      $result = pg_query($db, "UPDATE requests SET status = CAST(1 AS BIT) WHERE cid = '$_POST[cid_update]' AND oid = '$_POST[oid_update]'");
        if (!$result) {
            echo "Accept request failed!!";
        } else {
            echo "Accept request successful!";
        }

    }

    ?>
</body>
</html>
