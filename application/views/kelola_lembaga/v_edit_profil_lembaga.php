<style>
    /* Change Autocomplete styles in Chrome*/
    /* input:-webkit-autofill,
    input:-webkit-autofill:hover,
    input:-webkit-autofill:focus input:-webkit-autofill,
    textarea:-webkit-autofill,
    textarea:-webkit-autofill:hover textarea:-webkit-autofill:focus,
    select:-webkit-autofill,
    select:-webkit-autofill:hover,
    select:-webkit-autofill:focus {
        border-bottom: 1px solid #d2d2d2 !important;
        -webkit-text-fill-color: #707173 !important;
        -webkit-box-shadow: 0 0 0px 100px transparent inset !important;
        transition: background-color 5000s ease-in-out 0s !important;
        background-color: transparent !important;
    }


    input:-webkit-autofill:hover,
    input:-webkit-autofill:focus,
    textarea:-webkit-autofill:hover,
    textarea:-webkit-autofill:focus,
    select:-webkit-autofill:hover,
    select:-webkit-autofill:focus {
        transition: border-bottom 1s ease 0s !important,
            background-color 5000s ease-in-out 0s !important;
        border-bottom: 2px solid #8e24aa !important;
        -webkit-text-fill-color: #707173 !important;
        -webkit-box-shadow: 0 0 0px 100px transparent inset !important;
        background-color: transparent !important;
    } */

    #dropdown_entry>.dropdown {
        width: 100px !important;
    }

    .list>.dropdown {
        width: 100% !important;
        top: -11.5px;
    }

    .list>.btn {
        margin: 0px;
    }

    .margin-minus{
        padding-top: 6px;
        margin-bottom: -12px;
    }

    .kecamatan .dropdown-menu{
        top:0 !important;
    }

    /* .text {
        text-align:center;
        font-size:25px;
        margin-top:17%;
    } */
</style>
<div class="container-fluid">
    <div class="col-md-12">
        <?php
            if($this->session->flashdata('message')):
                $message        = $this->session->flashdata('message');
        ?>
        <div class="alert <?= is_numeric(strpos(strtolower($message),strtolower("Gagal"))) ? "alert-danger"
            : "alert-success" ?>">
            <?= $message ?>
        </div>
        <?php
            endif;
        ?>
        <div class="card">
            <div class="card-header card-header-primary">
                <h4 class="d-inline-block align-middle" style="margin-top: 3px;margin-bottom: 0;">Data Lembaga</h4>
            </div>
            <div class="card-body">
                <form class="row" action="<?= base_url('Kelola_Lembaga/edit') ?>" method="post" enctype="multipart/form-data">
                    <div class="col-md-4 col-sm-12">
                        <img id="img_preview" class="img img-responsive w-100 img-thumbnail"
                            src="<?= base_url('assets/upload/'.$lembaga->foto_lembaga); ?>"
                            alt="Foto Lembaga-<?= $lembaga->nama_lembaga ?>" onclick="openInput('#image')">
                        <input type="hidden" name="nama_foto" value="<?= $lembaga->foto_lembaga ?>">
                        <input type="file" name="image" id="image" class="d-none"  onchange="previewName('img_preview','image')">
                        <div class="col-md-12 text-center mt-2">
                            <button type="submit" class="btn btn-info mb-3 mb-md-0 d-block d-md-inline-block w-sm-100" name="simpan"
                                value="<?= base64_encode($this->encryption->encrypt($lembaga->id)) ?>">Simpan</button>
                            <button type="button" class="btn btn-reverse mb-3 mb-md-0 d-block d-md-inline-block w-sm-100" onclick="return window.history.back();">Batal</button>
                        </div>
                    </div>
                    <div class="col-md-8 col-sm-12">
                        <div class="card mt-0">
                            <div class="card-body">
                                <div class="col-md-12 row">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">NPSN</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <input type="text" name="npsn" id="npsn" class="form-control"
                                            value="<?= $lembaga->npsn ?>">
                                    </div>
                                </div>
                                <div class="col-md-12 row">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Nama Lembaga</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <input type="text" name="nama_lembaga" id="nama_lembaga" class="form-control"
                                            value="<?= $lembaga->nama_lembaga ?>">
                                    </div>
                                </div>

                                <div class="col-md-12 row">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Tahun Berdiri</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <input type="text" name="tahun_berdiri" id="tahun_berdiri" class="form-control"
                                            value="<?= $lembaga->tahun_berdiri ?>">
                                    </div>
                                </div>

                                <div class="col-md-12 row">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Kepala Sekolah</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <input type="text" name="kepala_sekolah" id="kepala_sekolah" class="form-control"
                                            value="<?= $lembaga->kepala_sekolah ?>">
                                    </div>
                                </div>
                                <div class="col-md-12 row margin-minus">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Pengelompokan</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="row" style="padding-bottom: 0px;">
                                            <div class="list col-md-12 dropdown bootstrap-select dropdown"
                                                style="width=100% !important;">
                                                <select name="pengelompokan" class="selectpicker"
                                                    data-style="select-with-transition" title="Pilih Pengelompokan"
                                                    data-size="5" tabindex="-98" required>
                                                    <option <?=$lembaga->pengelompokan == "TK (Taman Kanak-kanak)" ? "selected" : "" ?>>TK (Taman Kanak-kanak)</option>
                                                    <option <?=$lembaga->pengelompokan == "SPS (Satuan PAUD Sejenis)" ? "selected" : "" ?>>SPS (Satuan PAUD Sejenis)</option>
                                                    <option <?=$lembaga->pengelompokan == "KB (Kelompok Bermain)" ? "selected" : "" ?>>KB (Kelompok Bermain)</option>
                                                    <option <?=$lembaga->pengelompokan == "TPA (Taman Penitipan Anak)" ? "selected" : "" ?> >TPA (Taman Penitipan Anak)</option>
                                                    <option <?=$lembaga->pengelompokan == "RA (Raudhatul Athfal)" ? "selected" : "" ?> >RA (Raudhatul Athfal)</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                
                                <div class="col-md-12 row margin-minus">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Kecamatan</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="row" style="padding-bottom: 0px;">
                                            <div class="list col-md-12 bootstrap-select dropdown dropdown"
                                                style="width=100% !important;">
                                                <select id="kecamatan" name="kecamatan" class="kecamatan"
                                                    data-style="select-with-transition" title="Pilih Kecamatan"
                                                    data-size="6" tabindex="-98" required>
                                                    <?php
                                                        foreach ($kecamatan as $kec):
                                                    ?>
                                                    <option <?=$lembaga->kode_kec == $kec->kode_kec ? "selected" : "" ?> value="<?= $kec->kode_kec ?>"><?= $kec->kecamatan ?></option>
                                                    <?php
                                                        endforeach;
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12 row margin-minus">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Desa</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="row" style="padding-bottom: 0px;">
                                            <div id="desa-list"  class="list col-md-12 bootstrap-select dropdown dropdown"
                                                style="width=100% !important;">
                                                <select name="desa" class="desa"
                                                    data-style="select-with-transition" title="Pilih Desa"
                                                    data-size="6" tabindex="-98" required>
                                                    <?php
                                                        foreach ($desa as $dataDesa):
                                                    ?>
                                                    <option <?=$lembaga->kode_desa == $dataDesa->kode_desa ? "selected" : "" ?> value="<?= $dataDesa->kode_desa ?>"><?= $dataDesa->desa ?></option>
                                                    <?php
                                                        endforeach;
                                                    ?>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                

                                <div class="col-md-12 row">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Alamat</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <input type="text" name="alamat_lembaga" id="alamat_lembaga"
                                            class="form-control" value="<?= $lembaga->alamat_lembaga ?>">
                                    </div>
                                </div>

                                <div class="col-md-12 row">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Tahun Akreditasi</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <input type="text" name="tahun_akreditasi" id="tahun_akreditasi"
                                            class="form-control" value="<?= $lembaga->tahun_akreditasi ?>">
                                    </div>
                                </div>

                                <div class="col-md-12 row margin-minus">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Status Akreditasi</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <div class="col-12 col-md-6 col-lg-6 col-xl-6">
                                        <div class="row" style="padding-bottom: 0px;">
                                            <div class="list col-md-12 dropdown bootstrap-select dropdown"
                                                style="width=100% !important;">
                                                <select name="status_akreditasi" class="selectpicker"
                                                    data-style="select-with-transition" title="Pilih Akreditasi"
                                                    data-size="" tabindex="-98" required>
                                                    <option <?=$lembaga->status_akreditasi == "A" ? "selected" : "" ?>>A
                                                    </option>
                                                    <option <?=$lembaga->status_akreditasi == "B" ? "selected" : "" ?>>B
                                                    </option>
                                                    <option <?=$lembaga->status_akreditasi == "Terakreditasi" ?
                                                        "selected" : "" ?>>Terakreditasi</option>
                                                    <option <?=$lembaga->status_akreditasi == "Belum Terakreditasi" ?
                                                        "selected" : "" ?> >Belum Terakreditasi</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="col-md-12 row">
                                    <div class="col-6 col-md-5 col-lg-5 col-xl-5">Lokasi</div>
                                    <div class="col-6 col-md-1 col-lg-1 col-xl-1">:</div>
                                    <input type="hidden" name="latitude" id="lat" value="<?= $lembaga->latitude ?>">
                                    <input type="hidden" name="longitude" id="lng" value="<?= $lembaga->longitude ?>">
                                    <div class="mt-2" id="map">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script>
        $(document).ready(function () {
            $('.selectpicker').selectpicker();
            $('.kecamatan').selectpicker({
                liveSearch:true
            });
            $('.desa').selectpicker({
                liveSearch:true
            });
            $('.kecamatan').on('change', function(e){
                var kode_kec = this.value
                var kode_desa = '<?php echo $lembaga->kode_desa ?>'
                if (kode_kec !== "") {
                    $.ajax({
                        type: "POST",
                        url: "<?php echo base_url() ?>kelola_lembaga/getDesa",
                        dataType: "json",
                        data: {
                            kode_kec
                        },
                        success: function(data) {
                            var desa = data.desa
                            $('#desa-list').empty()

                            $('#desa-list').append(`
                                <select name="desa" class="desa"
                                    data-style="select-with-transition" title="Pilih Desa"
                                    data-size="6" tabindex="-98" required>
                                    
                                </select>
                            `)
                            for (let index = 0; index < desa.length; index++) {
                                $('.desa').append(`
                                    <option value="${desa[index].kode_desa}">${desa[index].desa}</option>
                                `)
                            }

                            $('.desa').selectpicker({
                                liveSearch:true
                            });
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            // $('#msg').show();
                            // $("#msg").html(textStatus + jqXHR.responseText + " " + errorThrown);
                            console.log(textStatus + jqXHR.responseText + " " + errorThrown);
                        }
                    });
                    return false;
                }
            });

            $('#tahun_berdiri').datetimepicker({
                format: 'YYYY',
                viewMode: "years", 
                icons: {
                    time: 'fa fa-clock-o',
                    date: 'fa fa-calendar',
                    up: 'fa fa-plus',
                    down: 'fa fa-minus',
                    previous: 'fa fa-chevron-left',
                    next: 'fa fa-chevron-right'
                },
            });

            $('#tahun_berdiri').on("dp.show", function(e) {
                $(e.target).data("DateTimePicker").viewMode("months"); 
            });

            $('#tahun_akreditasi').datetimepicker({
                format: 'YYYY',
                viewMode: "years", 
                icons: {
                    time: 'fa fa-clock-o',
                    date: 'fa fa-calendar',
                    up: 'fa fa-plus',
                    down: 'fa fa-minus',
                    previous: 'fa fa-chevron-left',
                    next: 'fa fa-chevron-right'
                },
            });

            $('#tahun_akreditasi').on("dp.show", function(e) {
                $(e.target).data("DateTimePicker").viewMode("months"); 
            });
        });

        var mymap = L.map('map').setView([-6.5622888, 107.7607951], 15);
        L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
            maxZoom: 18,
            id: 'mapbox/streets-v11',
            tileSize: 512,
            zoomOffset: -1,
            accessToken: 'pk.eyJ1IjoiYW5nYWloaW1pdHN1IiwiYSI6ImNrdm56ZWp3ejN0bGMydnFpZDZnNDlpd3UifQ.4MS9GSg-NWTpOfQCWAAzIw'
        }).addTo(mymap);
        var marker;
        <?php 
            if(!empty($lembaga->longitude) && !empty($lembaga->latitude)){
                ?>
                marker = L.marker([<?= $lembaga->latitude ?>, <?= $lembaga->longitude ?>]).addTo(mymap);
                <?php
            }
        ?>
        function onMapClick(e) {
            if(marker){
                marker.setLatLng(e.latlng);
            }else{
                marker = L.marker(e.latlng).addTo(mymap);
            }        
            $("#lat").val(e.latlng.lat);
            $("#lng").val(e.latlng.lng);
        }


        mymap.on('click', onMapClick);
    </script>