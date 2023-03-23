
<?php
    require_once "header.php";
    $payer = historique_paiement();
    
?>
<body>
<table id="example" class="display" style="width:95%">
        <thead>
            <tr>
                <th>N°</th>
                <th>Montant</th>
                <th>Numero Piece</th>
                <th>Date paiement</th>
                <th>Statut</th>
            </tr>
        </thead>
        <tbody>
        <?php foreach($payer as $a): ?>
            <tr>
                <td><?=$a["id"] ?></td>
                <td><?=$a["montant"] ?></td>
                <td><?=$a["numero_piece"] ?></td>
                <td><?=$a["date_paiement"] ?></td>
                <?php if($a["statut"]=="SUCCES" ): ?>
                    <td style="color:blue"><i class="fa fa-check"></i></td>
                <?php else : ?>
                    <td style="color:red"><i class="fa fa-times"></i></td>
                <?php endif ?>
            </tr>
            <?php endforeach; ?>
        </tbody>
        <tfoot>
            <tr>
                <th>N°</th>
                <th>Montant</th>
                <th>Numero Pièce</th>
                <th>Date paiement</th>
                <th>Status</th>
            </tr>
        </tfoot>
    </table>
    <footer>
    <hr>
    <p class="text-center">Système de Vérification - DI - 2023 </p>
    </footer>
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
        <script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script> 
        <script src="https://cdn.datatables.net/buttons/2.3.6/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/2.3.6/js/buttons.print.min.js"></script>

    <script>
        $(document).ready(function() {
        $('#example').DataTable( {
            dom: 'Bfrtip',
            buttons: [
                'print'
            ]
        } );
        } );
    </script>
</body>
</html>




