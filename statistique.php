<?php
    require_once "header.php";
?>
<h2 style="text-align: center;">Statistique de l'Année</h2>
<hr>

<div style="width: 40%; float:left;">
<h3>Verification</h3>
  <canvas id="myChart"></canvas>
</div>

<div style="width: 40%;margin-left:60%">
<h3>Paiement</h3>
  <canvas id="payer"></canvas>
</div>

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script>
  const ctx = document.getElementById('myChart');

  new Chart(ctx, {
    type: 'doughnut',
    data: {
      labels: ['SUCCES', 'ECHEC'],
      datasets: [{
        label: '# verifier',
        data: [2, 19],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>

<script>
  const payer = document.getElementById('payer');

  new Chart(payer, {
    type: 'polarArea',
    data: {
      labels: ['Janv', 'Fevr', 'Mars', 'Avr', 'Mai', 'Juin', 'Juil', 'Aout'],
      datasets: [{
        label: '# payer(Mille Fcfa)',
        data: [10, 15, 70, 0, 0, 0],
        borderWidth: 1
      }]
    },
    options: {
      scales: {
        y: {
          beginAtZero: true
        }
      }
    }
  });
</script>

<?php require_once "footer.php" ?>