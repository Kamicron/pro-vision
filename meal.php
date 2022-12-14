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
    </select>
  </div>
  <hr>
  <div class="flexbox">
    <div class="card">
      <h1>Lundi midi</h1>
      <div class="center">
        <select name="lundiMidi">
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
        <select name="lundiSoir">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Mardi midi</h1>
      <div class="center">
        <select name="mardiMidi">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
      <hr>
      <h1>Mardi soir</h1>
      <div class="center">
        <select name="mardiSoir">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Mercredi midi</h1>
      <div class="center">
        <select name="mercrediMidi">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
      <hr>
      <h1>Mercredi soir</h1>
      <div class="center">
        <select name="mercerdiSoir">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Jeudi midi</h1>
      <div class="center">
        <select name="jeudiMidi">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
      <hr>
      <h1>Jeudi soir</h1>
      <div class="center">
        <select name="jeudiSoir">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Vendredi midi</h1>
      <div class="center">
        <select name="vendrediMidi">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div class="center">
      <hr>
      <h1>Vendredi soir</h1>
      <div class="center">
        <select name="vendrediSoir">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Samedi midi</h1>
      <div class="center">
        <select name="samediMidi">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
      <hr>
      <h1>Samedi soir</h1>
      <div class="center">
        <select name="samediSoir">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
    </div>

    <div class="card">
      <h1>Dimanche midi</h1>
      <div class="center">
        <select name="dimancheMidi">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
      <hr>
      <h1>Dimanche soir</h1>
      <div class="center">
        <select name="dimancheSoir">
          <?php
          foreach ($meal as $keydata => $data) { ?>
            <option value='<?php echo $data['name_meal'];?>'><?php echo $data['name_meal'];?></option>"; 
          <?php
          }
          ?>
          ?>
        </select>
      </div>
    </div>
  </div>
  <button type="submit" class="btn btn-primary">Ajouter</button>
</form>

<?php require('commun/footer.php') ?>