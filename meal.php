<?php 
session_start();
require('commun/header.php'); 
include('src/bdd.php');
include('src/function.php');
$list=selectAll("list");
$meal=selectAll("meal");

notLogged();

echo '<pre>';
print_r($_POST);
echo '</pre>';

if (isset($_POST) && !empty($_POST)) {
  for ($i=0; $i < 14; $i++) { 
    $repas=selectAllWhereName('meal','name_meal', $_POST[$i]);
    $idIngredients=selectAllWhereId('ingredients_has_meal','meal_idmeal',$repas[0]['idMeal']);
    foreach ($idIngredients as $keyingredients => $ingredients) {
      $ingredient[]=selectAllWhereId('ingredients','idIngredients',$ingredients['ingredients_idIngredients']);
    }

  }
}

foreach ($ingredient as $keydatas => $data) {
  $idIngredient[]=$data[0]['idIngredients']."<br>";
}
$listByName= selectAllWhereName('list','name_list',$_POST['list']);
echo 'id list : ' . $listByName[0]['idList'];

$idIngredient=array_unique($idIngredient);
echo'<pre>';
print_r($idIngredient);
echo'</pre>';
foreach ($idIngredient as $keydata => $data) {
  echo "id ingredients" . $data;
  addItemInSecondaryTable('ingredients', 'list', $data, $listByName[0]['idList']);
}

?>

<h1>Bonjour <?php echo $_SESSION['auth']['username'] ;?> ! Choisissez les repas que vous voulez mettre dans la liste</h1>

<form action='' method='POST'>
  <div class="center">
    <select name="list">
      <?php
      foreach ($list as $keydata => $data) { ?>
        <option value='<?php echo $data['name_list'] ;?>'><?php echo $data['name_list'] ;?></option>
      <?php
      }
      ?>
    </select>é&
  </div>
  <hr>
  <div class="flexbox">
    <div class="card">
      <h1>Lundi midi</h1>
      <div class="center">
        <select name="0">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
      <hr>
      <h1>Lundi soir</h1>
      <div class="center">
        <select name="1">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Mardi midi</h1>
      <div class="center">
        <select name="2">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
      <hr>
      <h1>Mardi soir</h1>
      <div class="center">
        <select name="3">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Mercredi midi</h1>
      <div class="center">
        <select name="4">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
      <hr>
      <h1>Mercredi soir</h1>
      <div class="center">
        <select name="5">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Jeudi midi</h1>
      <div class="center">
        <select name="6">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
      <hr>
      <h1>Jeudi soir</h1>
      <div class="center">
        <select name="7">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Vendredi midi</h1>
      <div class="center">
        <select name="8">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div class="center">
      <hr>
      <h1>Vendredi soir</h1>
      <div class="center">
        <select name="9">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Samedi midi</h1>
      <div class="center">
        <select name="10">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
      <hr>
      <h1>Samedi soir</h1>
      <div class="center">
        <select name="11">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Dimanche midi</h1>
      <div class="center">
        <select name="12">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
      <hr>
      <h1>Dimanche soir</h1>
      <div class="center">
        <select name="13">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
        </select>
      </div>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Ajouter</button>
</form>

<?php require('commun/footer.php') ?>