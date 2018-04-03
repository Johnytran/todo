<?php
include('autoloader.php');
// create an instance of database class
//echo 'ss';
$database  = new Database();
$connection = $database->connection;

//create query
$query = 'SELECT * FROM products';
// send the query to the database
$statement = $connection->prepare($query);
//execute query
$statement->execute();
//get query results
$result = $statement->get_result();
// check if there are results
?>
<!DOCTYPE html>
<html>
  <?php include('includes/head.php')?>  
  <body>
      <?php
        include('includes/navbar.php');
      ?>
      <div class="container">
          <?php
            if($result->num_rows>0){
                $col_counter=0;
                while($row = $result ->fetch_assoc()){
                    $col_counter++;
                    if($col_counter==1){
                        echo "<div class=\"row\">";
                        
                    }
                    $id = $row['id'];
                    $name = $row['name'];
                    $price = $row['price'];
                    echo "<div class=\"col\">";
                        echo "<h1>".$name."</h1>";
                        echo "<p>$price</p>";
                        echo "<p>product id: $id</p>";
                    echo "</div>";
                    if($col_counter==4){
                        echo "</div>";
                        $col_counter=0;
                        
                    }
                }
                
            }
          ?>
      </div>
  </body>
</html>