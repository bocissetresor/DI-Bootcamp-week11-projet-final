<?php

    require_once "header.php";

    $alerts = alertsAbsence();


?>
<div class="container">

    <div class="text-center">
        
        <?php if(isset($_SESSION["login"])): ?>
        <form action="./index.php" method="post">
            
        <div class="row" style="margin-left: 25%; margin-bottom:20%">
        <br><br><br><br><br><br><br>
            <div class="col-md-4">
                <div class="form-group">
                    <input type="text" class="form-control" name="numero_piece" placeholder="Immatriculation..." required>
                </div>
            </div>
                <div class="col-md-4">
                    <div class="form-group">
                    <input style="background-color:blue; color:aliceblue" type="submit" class="form-control" value="Chercher" name="verification">    
                    </div>
                </div>
            </div>
        </form>
        <?php endif ?>
        
  
    </div>

    <!-- Professeur -->
    <?php if(isset($_SESSION["type"]) && $_SESSION["type"] == "professeur" ): ?>
        <div class="row text-center">
            <div class="form-group">
                <a href="etudiants.php" class="btn btn-primary btn-lg"><i class="fa fa-user-circle-o"></i> Liste des étudiants</a>
            </div>
        </div>
        <div class="row text-center">
            <div class="form-group">
                <a href="absences_par_prof.php" class="btn btn-warning btn-lg"><i class="fa fa-check-circle-o"></i>Liste des absences que j'ai marqué</a>
            </div>
        </div>
        <div class="row text-center">
            <div class="form-group">
                <a href="absences.php" class="btn btn-default btn-lg"><i class="fa fa-list"></i> Les absences</a>
            </div>
        </div>
        <div class="row text-center">
            <div class="form-group">
                <a href="oldAbsences.php" class="btn btn-default btn-lg">Les anciennes absences</a>
            </div>
        </div>
        <?php include "alerts.php"; ?>
    <?php endif ?>

    <!-- Administrateur -->
    <?php if(isset($_SESSION["type"]) && $_SESSION["type"] == "admin" ): ?>
        <div class="row text-center">
            <div class="form-group">
                <a href="etudiants.php" class="btn btn-primary btn-lg"><i class="fa fa-user-circle-o"></i> Liste des étudiants</a>
            </div>
        </div>
        <div class="row text-center">
            <div class="form-group">
                <a href="absences_par_prof.php" class="btn btn-warning btn-lg"><i
                            class="fa fa-check-circle-o"></i>
                    Liste des absences que j'ai marqué</a>
            </div>
        </div>
        <div class="row text-center">
            <div class="form-group">
                <a href="absences.php" class="btn btn-default btn-lg"><i class="fa fa-list"></i> Les absences</a>
            </div>
        </div>
        <div class="row text-center">
            <div class="form-group">
                <a href="zeroAbsences.php" class="btn btn-default btn-lg">Remettre a zéro les absences</a>
            </div>
        </div>
        <div class="row text-center">
            <div class="form-group">
                <a href="oldAbsences.php" class="btn btn-default btn-lg">Les anciennes absences</a>
            </div>
        </div>

        <?php include "alerts.php"; ?>
    <?php endif ?>

    <!-- Etudiant -->
    <?php if(isset($_SESSION["type"]) && $_SESSION["type"] == "etudiant" ): ?>
    <?php endif ?>

    <?php if(!isset($_SESSION["id"])) :?>
        <div class="text-center">
            <a href="login.php" class="btn btn-lg btn-primary">Se connecter</a>
            <a href="signup.php" class="btn btn-lg btn-default">S'inscrire</a>
        </div>
    <?php endif ?>

</div>
<?php require_once "footer.php" ?>
