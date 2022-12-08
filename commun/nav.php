<nav class="flexbox">

<ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
  <li><a href="index.php" class="nav-link px-2 text-white">index</a></li>
  <li><a href="add_meal.php" class="nav-link px-2 text-white">Ajouter un repas</a></li>
  <li><a href="add_ingredients.php" class="nav-link px-2 text-white">Ajouter un ingredients</a></li>
  <li><a href="deletetable.php" class="nav-link px-2 text-white">Delete table</a></li>
</ul>
</nav>
<form class="col-12 col-lg-auto mb-3 mb-lg-0 me-lg-3" role="search">
  <input type="search" class="form-control form-control-dark text-bg-dark" placeholder="Search..." aria-label="Search">
</form>

<div class="text-end">
  <?php
    if (isset($_SESSION['auth'])) { ?>
      <button type="button" class="btn btn-warning"><a href="logout.php">Deconnexion</a></button
    <?php
    } else { ?>
      <button type="button" class="btn btn-outline-light me-2"><a href="login.php">Se connecter</a></button>
      <button type="button" class="btn btn-warning"><a href="register.php">S'inscrire</a></button
  <?php
    }
  ?>
</div>

