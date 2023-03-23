<?php
    require_once "header.php";
    $alerts = alertsAbsence();
?>
<div class="container">

    <div class="text-center">
        
        
        <?php if(isset($_SESSION["login"])): ?>
            <form action="paiement.php" method="post">
            <div class="row" style="margin-left: 25%; margin-bottom:20%">
        <br><br><br><br><br><br><br>
            <div class="col-md-4">
                <div class="form-group">
                <input style="background-color:green; color:aliceblue" type="submit" class="form-control" value="Effectuer paiement?" name="paiement"><br>
                </div>
            </div>
                <div class="col-md-4">
                    <div class="form-group">
                    <a style="background-color:blue; color:aliceblue" class="form-control" href="http://127.0.0.1/Corro/GestionAbsence-master/index.php">Retour</a>    
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
   



</div>
<?php require_once "footer.php" ?>
