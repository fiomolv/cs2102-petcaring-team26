<!DOCTYPE html>  
<head>
  <title>Pet care taker</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <style>li {list-style: none;}</style>
</head>
<body>
  <h2>Pet Care Website</h2>
  <ul>
    <form name="display1" action="index.php" method="POST" >
      <li>Owner ID:</li>
      <li><input type="text" name="oid" /></li>
      <li><input type="submit" name="submit1" /></li>
    </form>
  </ul>
  <?php
    $db     = pg_connect("host=localhost port=5432 dbname=Project1 user=postgres password=26"); 
    $ownerIDResult = pg_query($db, "SELECT * FROM owners where oid = '$_POST[oid]'");   
    $ownerIDRow    = pg_fetch_assoc($ownerIDResult);

    if (isset($_POST['submit1'])) {
        echo "<ul><form name='update1' action='index.php' method='POST' >  
      <li>Owner ID:</li>  
      <li><input type='text' name='oid_updated' value='$ownerIDRow[oid]' /></li>  
      <li>Owner Name:</li>  
      <li><input type='text' name='oname_updated' value='$ownerIDRow[oname]' /></li>  
      <li>Pet kind:</li>  
      <li><input type='text' name='pkind_updated' value='$ownerIDRow[pkind]' /></li>  
      <li>Pet Name:</li><li><input type='text' name='pname_updated' value='$ownerIDRow[pname]' /></li> 
       <li>Contact number:</li><li><input type='text' name='contact_updated' value='$ownerIDRow[contactnumber]' /></li> 
      <li><input type='submit' name='new1' /></li>  
      </form>  
      </ul>";
    } 
    if (isset($_POST['new1'])) {
        echo "Yes, in ID ";
        $ownerIDResult = pg_query($db, "UPDATE Owners SET oname = '$_POST[oname_updated]', pkind = '$_POST[pkind_updated]', pname = '$_POST[pname_updated]', contactnumber = '$_POST[contact_updated]' where oid = CAST ('$_POST[oid]' AS INTEGER)");
        if (!$ownerIDResult) {
            echo "Update failed!!";
        } else {
            echo "Update successful!";
        }
    } 
    ?>  
  <ul>
    <form name="display2" action="index.php" method="POST" >
      <li>Owner Name:</li>
      <li><input type="text" name="oname" /></li>
      <li><input type="submit" name="submit2" /></li>
    </form>
  </ul>
  <?php
    $db     = pg_connect("host=localhost port=5432 dbname=Project1 user=postgres password=26"); 
    $ownerNameResult = pg_query($db, "SELECT * FROM owners where oname = '$_POST[oname]'"); 
    $ownerNameRow    = pg_fetch_assoc($ownerNameResult);

    if (isset($_POST['submit2'])) {
       echo "<ul><form name='update2' action='index.php' method='POST' >  
      <li>Owner ID:</li>  
      <li><input type='text' name='oid_updated' value='$ownerNameRow[oid]' /></li>  
      <li>Owner Name:</li>  
      <li><input type='text' name='oname_updated' value='$ownerNameRow[oname]' /></li>  
      <li>Pet kind:</li>  
      <li><input type='text' name='pkind_updated' value='$ownerNameRow[pkind]' /></li>  
      <li>Pet Name:</li><li><input type='text' name='pname_updated' value='$ownerNameRow[pname]' /></li> 
       <li>Contact number:</li><li><input type='text' name='contact_updated' value='$ownerNameRow[contactnumber]' /></li> 
      <li><input type='submit' name='new2' /></li>  
      </form>  
      </ul>";
    }
    
    if (isset($_POST['new2'])) {
        echo "Yes, in Name";
        $ownerNameResult = pg_query($db, "UPDATE Owners SET oid = '$_POST[oid_updated]', oname = '$_POST[oname_updated]', pkind = '$_POST[pkind_updated]', pname = '$_POST[pname_updated]', contactnumber = '$_POST[contact_updated]' where oname = '$ownerNameRow[oid]' ");
        if (!$ownerNameResult) {
            echo "Update failed!!";
        } else {
            echo "Update successful!";
        }
    }
    ?>   
  <ul>
    <form name="display3" action="index.php" method="POST">
      <li>Care Taker ID:</li>
      <li><input type="text" name="cid" /></li>
      <li><input type="submit" name="submit3" /></li>
    </form>
  </ul>
  <?php
   $db     = pg_connect("host=localhost port=5432 dbname=Project1 user=postgres password=26"); 
    $careIDResult = pg_query($db, "SELECT * FROM caretakers where cid = '$_POST[cid]'");   
    $careIDRow    = pg_fetch_assoc($careIDResult);
    
    if (isset($_POST['submit3'])) {
      echo "<ul><form name='update3' action='index.php' method='POST' >  
      <li>Care Taker ID:</li>  
      <li><input type='text' name='cid_updated' value='$careIDRow[cid]' /></li>  
      <li>Care Taker Name:</li>  
      <li><input type='text' name='cname_updated' value='$careIDRow[cname]' /></li>  
      <li>Start Date:</li>  
      <li><input type='text' name='start_updated' value='$careIDRow[startdate]' /></li> 
      <li>End Date:</li>  
      <li><input type='text' name='end_updated' value='$careIDRow[enddate]' /></li> 
      <li>Pet kind:</li>  
      <li><input type='text' name='pkind_updated' value='$careIDRow[pkind]' /></li>  
      <li>Contact number:</li>
      <li><input type='text' name='contact_updated' value='$careIDRow[contactnumber]' /></li> 
      <li><input type='submit' name='new3' /></li>  
      </form>  
      </ul>";
    } 

    if (isset($_POST['new3'])) {  // Submit the update SQL command
        echo "Yes, ID ";
        $careIDResult = pg_query($db, "UPDATE caretakers SET cid = '$_POST[cid_updated]', cname = '$_POST[cname_updated]', pkind = '$_POST[pkind_updated]', startdate = '$_POST[start_updated]', enddate = '$_POST[end_updated]', contactnumber = '$_POST[contact_updated]', pkind = '$_POST[pkind_updated]' where cid = '$careIDRow[cid]'");
        if (!$careIDResult) {
            echo "Update failed!!";
        } else {
            echo "Update successful!";
        }
    } 
    ?>  
  <ul>
    <form name="display4" action="index.php" method="POST">
      <li>Care Taker Name:</li>
      <li><input type="text" name="cname" /></li>
      <li><input type="submit" name="submit4" /></li>
    </form>
  </ul>
  <?php
   $db = pg_connect("host=localhost port=5432 dbname=Project1 user=postgres password=26"); 
   
    $careNameResult = pg_query($db, "SELECT * FROM caretakers where cname = '$_POST[cname]'"); 
    $careNameRow    = pg_fetch_assoc($careNameResult);
    
    if (isset($_POST['submit4'])) {
      echo "<ul><form name='update4' action='index.php' method='POST' >  
      <li>Care Taker ID:</li>  
      <li><input type='text' name='cid_updated' value='$careNameRow[cid]' /></li>  
      <li>Care Taker Name:</li>  
      <li><input type='text' name='cname_updated' value='$careNameRow[cname]' /></li>  
      <li>Start Date:</li>  
      <li><input type='text' name='start_updated' value='$careNameRow[startdate]' /></li> 
      <li>End Date:</li>  
      <li><input type='text' name='end_updated' value='$careNameRow[enddate]' /></li> 
      <li>Pet kind:</li>  
      <li><input type='text' name='pkind_updated' value='$careNameRow[pkind]' /></li>  
      <li>Contact number:</li>
      <li><input type='text' name='contact_updated' value='$careNameRow[contactnumber]' /></li> 
      <li><input type='submit' name='new4' /></li>  
      </form>  
      </ul>";
    }
    
    if (isset($_POST['new4'])) {
        echo "Yes, Name ";
        $careNameResult = pg_query($db, "UPDATE caretakers SET cid = '$_POST[cid_updated]', cname = '$_POST[cname_updated]', pkind = '$_POST[pkind_updated]', startdate = '$_POST[start_updated]', enddate = '$_POST[end_updated]', pkind = '$_POST[pkind_updated]', contactnumber = '$_POST[contact_updated]' where cname = '$careIDRow[cname]'");
        if (!$careNameResult) {
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
