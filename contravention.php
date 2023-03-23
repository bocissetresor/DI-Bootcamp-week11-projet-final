<?php require_once "header.php";
    $date = time();
    
?>


    <div class="container" >
        <div class="row">

            <div class="col-lg-8 col-lg-offset-2">
            <form action="paiement.php" method="POST">
                <h3><i class="fa fa-user-circle-o"></i>Avis de Contravention N° <?php echo time(); ?></h3>
                
                    <div class="form-group">
                        <p>
                            Madame, Monsieur,<br>
                            Le véhicule dont le certificat d'immatriculation est établi <br>
                            à votre nom a fait l'objet d'un contrôle ayant permis de <br>
                            constater l'infraction figurant ci-dessous.

                        </p>
                        <label for="">Type</label>
                        <select name="type_" id="type_compte" class="form-control" >
                            <option selected value="vitesse">Excès de vitesse</option>
                            <option value="non_respect_feu">Non-respect d'un feu rouge</option>
                            <option value="souci_assurance">Problème avec carte grise</option>
                            <option value="souci_assurance">Problème avec carte assurance</option>
                            <option value="souci_permis">Problème avec permis</option>
                        </select>
                    </div>
                    <div class="row student">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Description de l'infration</label>
                                <textarea name="description_" class="form-control" placeholder="Description" id="" cols="30" rows="5"></textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Immatricularion véhicule</label>
                                <input type="text" name="immatriculation_vehicule" class="form-control" placeholder="12EAZ2">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Couleur véhicule</label>
                                <input type="text" name="couleur_vehicule" class="form-control" placeholder="Verte">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Marque véhicule</label>
                                <input type="text" name="marque_vehicule" class="form-control" placeholder="X5">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Numero Permis</label>
                                <input type="text" name="numero_permis" class="form-control" placeholder="12EAZ2">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Ville</label>
                                <input type="text" name="ville" class="form-control" placeholder="Bouake">
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <input type="hidden" name="numero_contravention" class="form-control" value=<?php echo time(); ?>>
                            </div>
                        </div>
                    </div>
                    <div class="row student">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Somme a Payer (Fcfa)</label>
                                <input type="number" name="somme" class="form-control" value="10000" readonly>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="">Date</label>
                                <input type="text" name="date_" class="form-control" value=<?php  echo date( "d/m/Y H:i:s", $date ); ?> readonly>
                            </div>
                        </div>

                    </div>
                    <!-- Student -->
                    <div class="row student">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Matricule Agent verbalisateur</label>
                                <input type="text" class="form-control" value=<?php echo rand(10000, 9999999); ?> name="agent_verbalisateur" readonly>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label for="">Service Agent verbalisateur</label>
                                <textarea name="service_agent_verbalisateur" class="form-control"  id="" cols="30" rows="5" readonly>Centre automatisé de constatation des infractions routières</textarea>
                            </div>
                        </div>
                    </div>
                    <!-- Professeur -->
                    <div class="row student">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Information sur l'infration</label>
                                <textarea name="information" class="form-control" id="" cols="30" rows="5" readonly>Cette infraction a été constatée par un agent ou un oddicier de police judiciaire du Centre automatisé de constatation des infractions routières</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="row student">
                        <div class="col-md-12">
                            <div class="form-group">
                                <label for="">Effets sur le permis de conduire</label>
                                <textarea name="effet" class="form-control" id="" cols="30" rows="5" readonly>Cette infraction entraine un retraire de 1 point(s) du permis de conduire. Une fois votre amende payée, vous recevrez un message du service du Fichier national des permis de conduire vous informant de ce retraire de point</textarea>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <button type="submit" name="contravention" class="btn btn-success btn-lg" > Enregistrer </button>
                    </div>

                </form>
            </div>

        </div>
    </div>

<?php require_once "footer.php" ?>