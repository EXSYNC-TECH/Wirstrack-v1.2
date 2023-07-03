<?php 
include 'proses/koneksi.php';
$latlong = 'SELECT * FROM latlong';
$kurir = 'SELECT alamat_tujuan1 FROM kurir WHERE id IN(SELECT MAX(id) FROM kurir )';
$query1 = mysqli_query($conn, $latlong);
$query2 = mysqli_query($conn, $kurir);
$data2= mysqli_fetch_array($query2);

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
    <link rel="stylesheet" href="src/css/rute.css">

    <!-- Leaflet JS -->
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY=" crossorigin="" />
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js" integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo=" crossorigin=""></script>

</head>

<body>
    <!-- Mengambil Navbar dari template nav.php -->
    <?php include 'template/nav.php'; ?>

    <!-- Body Section Start -->
    <section class="body">
        <div class="box">
            <div class="splitLeft">
                <div class="head">
                    <a href="alamat.php"><img src="src/img/back.svg" alt="back"></a>
                    <h3>Alamat</h3>
                </div>
                <form action="proses/prosesRute.php" method="POST">
                    <label for="alamatTujuan">Alamat Tujuan</label>
                    <div class="wrapper">
                        <input list="alamat" name="alamat_tujuan1" id="alamatTujuan1" placeholder="Masukkan Alamat Tujuan" autocomplete="off" value="<?=$data2['alamat_tujuan1'] ;?>">
                        <datalist id="alamat">
                            <?php while ($data1 = mysqli_fetch_array($query1)): ?>
                            <option value="<?=$data1['name'];?>"><?=$data1['name'];?></option>
                            <?php endwhile; ?>
                        </datalist>
                        <button type="button" onclick="tambah()"><img src="src/img/plusbutton.svg" alt="button"></button>
                    </div>
                    
                    <div style="display: none;" id="newInput2">
                        <input list="alamat" name="alamat_tujuan2" id="alamatTujuan2" placeholder="Masukkan Alamat Tujuan" autocomplete="off">
                            <datalist id="alamat">
                                <?php while ($data1 = mysqli_fetch_array($query1)): ?>
                                <option value="<?=$data1['name'];?>"><?=$data1['name'];?></option>
                                <?php endwhile; ?>
                            </datalist>
                    </div>

                    <div style="display: none;" id="newInput3">
                        <input list="alamat" name="alamat_tujuan3" id="alamatTujuan3" placeholder="Masukkan Alamat Tujuan" autocomplete="off">
                            <datalist id="alamat">
                                <?php while ($data1 = mysqli_fetch_array($query1)): ?>
                                <option value="<?=$data1['name'];?>"><?=$data1['name'];?></option>
                                <?php endwhile; ?>
                            </datalist>
                    </div>

                    <label for="alamatAsal">Alamat Asal</label>
                    <input list="alamat" name="alamat_asal" id="alamatAsal" placeholder="Masukkan Alamat Asal" autocomplete="off">
                        <datalist id="alamat">
                            <?php while ($data1 = mysqli_fetch_array($query1)): ?>
                            <option value="<?=$data1['name'];?>"><?=$data1['name'];?></option>
                            <?php endwhile; ?>
                        </datalist>

                    <input disabled="disabled" id="submit" type="submit" value="Temukan Rute">
                </form>
            </div>
            <div class="splitRight">
                <div id="map" style="width: 100%; height: 700px;"></div>
            </div>
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
        // View Map Jakarta
         var map = L.map('map').setView([-6.207241022654177, 106.84763395395483], 13);
        L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
            attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
        }).addTo(map);
    </script>

    <!-- Disable Button -->
    <script>
        (function () {
            $('form > input').keyup(function () {

                var empty = false;
                $('form > input').each(function () {
                    if ($(this).val() == '') {
                        empty = true;
                    }
                });

                if (empty) {
                    $('#submit').attr('disabled', 'disabled');
                    $("input[type=submit").css("background-color", "#D5D9EB");
                } else {
                    $('#submit').removeAttr('disabled');
                    $("input[type=submit").css("background-color", "#175CD3");
                }
            });
        })()
    </script>

    <!-- Add More Alamat Tujuan -->
    <script>
        function tambah() {
            for (let i = 2; i <= 3; i++) {
                document.getElementById("newInput"+i).style.display = "block"; 
            }
        }
    </script>



</body>

</html>