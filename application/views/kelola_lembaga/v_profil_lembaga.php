      
    <style>
    .text {
        text-align:center;
        font-size:25px;
        margin-top:17%;
    }
    </style>
    <div class="container-fluid">
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="d-inline-block align-middle" style="margin-top: 3px;margin-bottom: 0;">Data Lembaga</h4>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-md-4 col-sm-12">
                        
                        <img class="img img-responsive w-100" src="<?= base_url('assets/upload/'.$lembaga->foto_lembaga); ?>" alt="Foto Lembaga-<?= $lembaga->nama_lembaga ?>">
                        <div class="col-md-12 text-center">
                            <a class="btn btn-info mb-3 mb-md-0 d-block d-md-inline-block" href="<?= base_url('Kelola_Lembaga/edit_profil_lembaga/'.base64_encode($this->encryption->encrypt($lembaga->id))) ?>">Edit Lembaga</a>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-12">
                        <div class="card mt-0">
                            <div class="card-body">
                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">NPSN</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= !empty($lembaga->npsn) ? $lembaga->npsn : '-' ?></div>
                                </div>

                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">Nama Lembaga</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= $lembaga->nama_lembaga ?></div>
                                </div>
                                
                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">Tahun Berdiri</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= !empty($lembaga->tahun_berdiri) ? $lembaga->tahun_berdiri : '-' ?></div>
                                </div>

                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">Kepala Sekolah</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= !empty($lembaga->kepala_sekolah) ? $lembaga->kepala_sekolah : '-' ?></div>
                                </div>
                                
                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">Pengelompokan</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= !empty($lembaga->pengelompokan) ? $lembaga->pengelompokan : '-' ?></div>
                                </div>

                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">Alamat</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= !empty($lembaga->alamat_lembaga) && !empty($lembaga->kecamatan) ? "Kec.".$lembaga->kecamatan.", ".$lembaga->alamat_lembaga : '-' ?></div>
                                </div>
                                
                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">Tahun Akreditasi</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= !empty($lembaga->tahun_akreditasi) ? $lembaga->tahun_akreditasi : '-' ?></div>
                                </div>
                                
                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">Status Akreditasi</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= !empty($lembaga->status_akreditasi) ? $lembaga->status_akreditasi : '-' ?></div>
                                </div>
                                
                                <div class="col-md-12 row">
                                    <div class="font-weight-bold font-sm-weight-normal col-11 col-sm-5 col-md-5 col-lg-5 col-xl-5">Lokasi</div>
                                    <div class="col-1 col-sm-1 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="<?= empty($lembaga->longitude) && empty($lembaga->latitude) ? "" : "d-none" ?> col-12 col-sm-6 col-md-6 col-lg-6 col-xl-6"><?= !empty($lembaga->longitude) && !empty($lembaga->latitiude) ? "Disini Map" : "-" ?></div>
                                    <div class="<?= !empty($lembaga->longitude) && !empty($lembaga->latitude) ? "mt-2" : "d-none" ?>" id="map"></div>
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php
        if(!empty($lembaga->longitude) && !empty($lembaga->latitude)){
    ?>
    <script>
        var mymap = L.map('map').setView([<?= $lembaga->latitude ?>, <?= $lembaga->longitude ?>], 15);
        L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
            maxZoom: 18,
            id: 'mapbox/streets-v11',
            tileSize: 512,
            zoomOffset: -1,
            accessToken: 'pk.eyJ1IjoiYW5nYWloaW1pdHN1IiwiYSI6ImNrdm56ZWp3ejN0bGMydnFpZDZnNDlpd3UifQ.4MS9GSg-NWTpOfQCWAAzIw'
        }).addTo(mymap);
        var marker = L.marker([<?= $lembaga->latitude ?>, <?= $lembaga->longitude ?>]).addTo(mymap);
    </script>
    <?php
        }
    ?>