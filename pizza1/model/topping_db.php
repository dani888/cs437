<?php
// the try/catch for these actions is in the caller
function add_topping($db, $topping, $is_meat) {
$query = 'INSERT INTO menu_toppings
                    (topping, is_meat)
              VALUES
                    (:topping, :is_meat)';
    $statement = $db->prepare($query);
    $statement->bindValue(':topping', $topping);
     $statement->bindValue(':is_meat', $is_meat);
    $statement->execute();
    $statement->closeCursor();
}

function get_toppings($db) {
    $query = 'SELECT * FROM menu_toppings';
    $statement = $db->prepare($query);
    $statement->execute();
    $toppings = $statement->fetchAll();
    return $toppings;    
}
