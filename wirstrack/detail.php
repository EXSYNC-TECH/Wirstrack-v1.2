<?php 
include 'proses/koneksi.php';

$kurir = 'SELECT * FROM kurir WHERE id IN(SELECT MAX(id) FROM kurir )';
$query = mysqli_query($conn, $kurir);
$data= mysqli_fetch_array($query);

// Latitude Longitude Asal
$asal = $data['alamat_asal'];
$getLatLongAsal = "SELECT latitude, longitude FROM latlong WHERE name = '$asal'";
$queryLatLongAsal = mysqli_query($conn, $getLatLongAsal);
$dataAsal = mysqli_fetch_array($queryLatLongAsal);
$latAsal = $dataAsal['latitude'];
$longAsal =  $dataAsal['longitude'];
$latLongAsal = $latAsal.', '. $longAsal;

// Latitude Longitude Tujuan1
$tujuan1 = $data['alamat_tujuan1'];
$getLatLongTujuan1 = "SELECT latitude, longitude FROM latlong WHERE name = '$tujuan1'";
$queryLatLongTujuan1 = mysqli_query($conn, $getLatLongTujuan1);
$dataTujuan1 = mysqli_fetch_array($queryLatLongTujuan1);
$latTujuan1 = $dataTujuan1['latitude'];
$longTujuan1 =  $dataTujuan1['longitude'];
$latLongTujuan1 = $latTujuan1.', '.$longTujuan1;

// Latitude Longitude Tujuan2
$tujuan2 = $data['alamat_tujuan2'];
$getLatLongTujuan2 = "SELECT latitude, longitude FROM latlong WHERE name = '$tujuan2'";
$queryLatLongTujuan2 = mysqli_query($conn, $getLatLongTujuan2);
$dataTujuan2 = mysqli_fetch_array($queryLatLongTujuan2);
    if ($dataTujuan2 == null) {
        $latLongTujuan2 = null;
    } else {
        $latTujuan2 = $dataTujuan2['latitude'];
        $longTujuan2 =  $dataTujuan2['longitude'];
        $latLongTujuan2 = $latTujuan2.', '.$longTujuan2;
    }

// Latitude Longitude Tujuan2
$tujuan3 = $data['alamat_tujuan3'];
$getLatLongTujuan3 = "SELECT latitude, longitude FROM latlong WHERE name = '$tujuan3'";
$queryLatLongTujuan3 = mysqli_query($conn, $getLatLongTujuan3);
$dataTujuan3 = mysqli_fetch_array($queryLatLongTujuan3);
if ($dataTujuan3 == null) {
    $latLongTujuan3 = null;
} else {
        $latTujuan3 = $dataTujuan3['latitude'];
        $longTujuan3 =  $dataTujuan3['longitude'];
        $latLongTujuan3 = $latTujuan3.', '.$longTujuan3;
    }


?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WirsTrack | Konversi Rute</title>
    <link rel="icon" href="src/img/icon.svg">
    <!-- My Style -->
    <link rel="stylesheet" href="src/css/detail.css">

    <!-- Leaflet JS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.2.0/dist/leaflet.css" />
    <link rel="stylesheet" href="https://unpkg.com/leaflet-routing-machine@latest/dist/leaflet-routing-machine.css" />
    <script src="https://unpkg.com/leaflet@1.2.0/dist/leaflet.js"></script>
    <script src="https://unpkg.com/leaflet-routing-machine@latest/dist/leaflet-routing-machine.js"></script>
</head>

<body>
    <!-- Mengambil Navbar dari template nav.php -->
    <?php include 'template/nav.php'; ?>

    <!-- Body Section Start -->
    <section class="body">
        <div class="box">
            <div class="inline">
                <a href="rute.php"><img src="src/img/back.svg" alt="back"></a>
                <h3>Rute Map</h3>
            </div>
                <div id="map" style="width: 100%; height: 700px;"></div>
    
        </div>
    </section>
    <!-- Body Section End -->

    <div class="shape">&nbsp;</div>

    <!-- Mengambil dari template footer.php -->
    <?php include 'template/footer.php'; ?>


    <!-- JQuery -->
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>

    <!-- Map Quest -->
    <script>
        var map = L.map('map').setView([-6.207241022654177, 106.84763395395483], 13);
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
        }).addTo(map);

        L.Routing.control({
        waypoints: [
            L.latLng(<?= $latLongAsal;?>),
            L.latLng(<?= $latLongTujuan1?>),
            L.latLng(<?= $latLongTujuan2?>),
            L.latLng(<?= $latLongTujuan3?>)
        ],
        lineOptions: {
            styles: [{color: 'green', opacity: 1, weight: 5}]
        }
        }).addTo(map);

        L.Routing.line()
    </script>



</body>

</html>