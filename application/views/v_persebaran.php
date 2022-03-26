      
<style>
.persebaran .card .card-header {
    z-index : 2 !important
}

.vertical-alignment-helper {
    display: table;
    height: 100%;
    width: 100%;
    pointer-events: none;
}

.vertical-align-center {
    /* To center vertically */
    display: table-cell;
    vertical-align: middle;
    pointer-events: none;
}

.modal-content {
    /* Bootstrap sets the size of the modal in the modal-dialog class, we need to inherit it */
    width: inherit;
    max-width: inherit;
    /* For Bootstrap 4 - to avoid the modal window stretching 
    full width */
    height: inherit;
    /* To center horizontally */
    margin: 0 auto;
    pointer-events: all;
}


/* Change Autocomplete styles in Chrome*/
input:-webkit-autofill,
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
}

#tambah input:-webkit-autofill:hover,
#tambah input:-webkit-autofill:focus,
#tambah textarea:-webkit-autofill:hover,
#tambah textarea:-webkit-autofill:focus,
#tambah select:-webkit-autofill:hover,
#tambah select:-webkit-autofill:focus,
#edit input:-webkit-autofill:hover,
#edit input:-webkit-autofill:focus,
#edit textarea:-webkit-autofill:hover,
#edit textarea:-webkit-autofill:focus,
#edit select:-webkit-autofill:hover,
#edit select:-webkit-autofill:focus {
    transition: border-bottom 1s ease 0s !important,
        background-color 5000s ease-in-out 0s !important;
    border-bottom: 2px solid #04afc4 !important;
    -webkit-text-fill-color: #707173 !important;
    -webkit-box-shadow: 0 0 0px 100px transparent inset !important;
    background-color: transparent !important;
}

#dropdown_entry>.dropdown {
    width: 100px !important;
}

.list>.dropdown{
    width: 100% !important;
    top: -11.5px;
}

.list>.btn {
    margin: 0px;
}

.card-stats .card-header.card-header-icon i {
    font-size: 20px;
    line-height: 30px;
    width: 30px;
    height: 30px;
    text-align: center;
}




#dropdown_filter button{
    margin:0;
}

#dropdown_filter .dropdown-menu .dropdown-item:focus, #dropdown_filter .dropdown-menu .dropdown-item:hover, #dropdown_filter .dropdown-menu a:active, #dropdown_filter .dropdown-menu a:focus, #dropdown_filter .dropdown-menu a:hover, #dropdown_filter .bootstrap-select .dropdown-item.active {
    background-color: #ff9800;
}

#dropdown_filter .bootstrap-select .btn.dropdown-toggle.select-with-transition {
    background-image: linear-gradient(0deg,#ff9800 2px,rgba(244,67,54,0) 0),linear-gradient(0deg,#d2d2d2 1px,hsla(0,0%,82%,0) 0) !important;
}

#dropdown_filter .bootstrap-select>.dropdown-toggle.bs-placeholder{
    color:#ffff;
}

.row {
    display: flex;
    flex-wrap: wrap;
    margin-right: 0;
    margin-left: 0;
}

.ct-chart .ct-series-a .ct-area, .ct-chart .ct-series-a .ct-slice-donut-solid, .ct-chart .ct-series-a .ct-slice-pie {
    fill: #64B467;
}

.ct-chart .ct-series-b .ct-area, .ct-chart .ct-series-b .ct-slice-donut-solid, .ct-chart .ct-series-b .ct-slice-pie {
    fill: #EA4642;
}

.ct-chart .ct-series-c .ct-area, .ct-chart .ct-series-c .ct-slice-donut-solid, .ct-chart .ct-series-c .ct-slice-pie {
    fill: #FE9C17;
}

.ct-chart .ct-series-a .ct-area, .ct-chart .ct-series-a .ct-bar, .ct-chart .ct-series-a .ct-line, .ct-chart .ct-series-a .ct-point, .ct-chart .ct-series-a .ct-slice-donut, .ct-chart .ct-series-a .ct-slice-donut-solid, .ct-chart .ct-series-a .ct-slice-pie {
    stroke: #64B467;
}
.ct-chart .ct-series-b .ct-area, .ct-chart .ct-series-b .ct-bar, .ct-chart .ct-series-b .ct-line, .ct-chart .ct-series-b .ct-point, .ct-chart .ct-series-b .ct-slice-donut, .ct-chart .ct-series-b .ct-slice-donut-solid, .ct-chart .ct-series-b .ct-slice-pie {
    stroke: #EA4642;
}
.ct-chart .ct-series-c .ct-area, .ct-chart .ct-series-c .ct-bar, .ct-chart .ct-series-c .ct-line, .ct-chart .ct-series-c .ct-point, .ct-chart .ct-series-c .ct-slice-donut, .ct-chart .ct-series-c .ct-slice-donut-solid, .ct-chart .ct-series-c .ct-slice-pie {
    stroke: #FE9C17;
}



.blue {
    background: #2A81CB !important;
}

.label-blue {
    color: #2A81CB !important;
}

.green {
    background: #2AAD27 !important;
}

.label-green {
    color: #2AAD27 !important;
}

.orange {
    background: #CB8427 !important;
}

.label-orange {
    color: #CB8427 !important;
}

.yellow {
    background: #CAC428 !important;
}

.label-yellow {
    color: #CAC428 !important;
}

.red {
    background: #CB2B3E !important;
}

.label-red {
    color: #CB2B3E !important;
}
</style>

<div class="container-fluid">    
    <div class="col-md-12">
        <div class="card">
            <div class="card-header card-header-primary">
                <div class="d-inline-flex">
                    <h4 class="d-inline-block align-middle" style="margin-top: 0;margin-bottom: 0;padding: 0.375rem 0.75rem;">Laporan</h4>
                </div>
                <div class="cold-md-4 align-middle d-inline-flex" style="float:right;margin-top:5px">
                    <div id="dropdown_filter" class="dropdown bootstrap-select <?= ($this->session->userdata("role") == 'operator') ? 'd-none' : '' ?>" style="width:100% !important;">
                        <select id="filter" class="selectpicker" data-size="7" data-style="btn btn-sm btn-warning d-inline-block" tabindex="-98">
                            <option value="" <?= ($this->session->userdata("role") == "operator") ? "" : "selected" ?>>Semua</option>
                            <?php foreach ($lembaga as $d): ?>
                            <option value="<?= $d['id'] ?>" <?= ($this->session->userdata("role") == "operator" && $this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))) == $d['id']) ? "selected" : "" ?>><?= $d['nama_lembaga'] ?></option>
                            <?php endforeach; ?>
                        </select>
                    </div>
                </div>
            </div>
            <div class="card-body row Persebaran">
                <div class="col-12" id="persebaran">
                    <div class="card card-stats">
                        
                        <div class="card-body d-flex" style="margin-top:6px;">
                            <div id="map" class="col-lg-8" style="margin-top:-6px"></div>
                            <div class="col-lg-4 d-flex">
                                <div class="row chart" style="margin-top:18px;">
                                    <div>
                                        <button id="green" class="btn green"></button>
                                        <label for="green" class="label-green">
                                            TK (Taman Kanak-kanak)
                                        </label>
                                    </div>
                                    <div>
                                        <button id="red" class="btn red"></button>
                                        <label for="red" class="label-red">
                                            SPS (Satuan PAUD Sejenis)
                                        </label>
                                    </div>
                                    <div>
                                        <button id="blue" class="btn blue"></button>
                                        <label for="blue" class="label-blue">
                                            KB (Kelompok Bermain)
                                        </label>
                                    </div>
                                    <div>
                                        <button id="yellow" class="btn yellow"></button>
                                        <label for="yellow" class="label-yellow">
                                            TPA (Taman Penitipan Anak)
                                        </label>
                                    </div>
                                    <div>
                                        <button id="orange" class="btn orange"></button>
                                        <label for="orange" class="label-orange">
                                            RA (Raudhatul Athfal)
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
                
<script>
    $(document).ready(function() {
        // map initialization
        var mymap = L.map('map').setView([-6.5622888, 107.7607951], 15);
        var markers;
        L.tileLayer('https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}', {
            attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors, Imagery © <a href="https://www.mapbox.com/">Mapbox</a>',
            maxZoom: 18,
            id: 'mapbox/streets-v11',
            tileSize: 512,
            zoomOffset: -1,
            accessToken: 'pk.eyJ1IjoiYW5nYWloaW1pdHN1IiwiYSI6ImNrdm56ZWp3ejN0bGMydnFpZDZnNDlpd3UifQ.4MS9GSg-NWTpOfQCWAAzIw'
        }).addTo(mymap);   

        getData($("#filter").val())

        $("#filter").change(function(){
            getData($(this).val())
        });
            
        function getIcon(pengelompokan){
            
            var LeafIcon = L.Icon.extend({
                            options: {
                                shadowUrl: 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/0.7.7/images/marker-shadow.png',
                                iconSize: [25, 41],
                                iconAnchor: [12, 41],
                                popupAnchor: [1, -34],
                                shadowSize: [41, 41]
                            }
                        });

            var greenIcon = new LeafIcon({iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-green.png'}),
            redIcon = new LeafIcon({iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-red.png'}),
            blueIcon = new LeafIcon({iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-blue.png'}),
            yellowIcon = new LeafIcon({iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-yellow.png'}),
            orangeIcon = new LeafIcon({iconUrl: 'https://raw.githubusercontent.com/pointhi/leaflet-color-markers/master/img/marker-icon-orange.png'});


            switch(pengelompokan){
                case "TK (Taman Kanak-kanak)":
                    return { icon: greenIcon }
                    break
                case "SPS (Satuan PAUD Sejenis)":
                    return { icon: redIcon }
                    break
                case "KB (Kelompok Bermain)":
                    return { icon: blueIcon }
                    break
                case "TPA (Taman Penitipan Anak)":
                    return { icon: yellowIcon }
                    break
                case "RA (Raudhatul Athfal)":
                    return { icon: orangeIcon }
                    break
            }
        }

        // get data persebaran
        function getData(id_lembaga){
            $.ajax({
                type: "POST",
                url: "<?php echo base_url() ?>Persebaran/getData",
                dataType: "json",
                data: {
                    id_lembaga
                },
                
                success: function(response) {
                    for (var i = 0; i < response.persebaran.length; i++) {
                        markers = new L.marker([response.persebaran[i]['latitude'], response.persebaran[i]['longitude']], getIcon(response.persebaran[i]['pengelompokan']))
                            .bindPopup(`
                                <h4 class='font-weight-bold'>${response.persebaran[i]['nama_lembaga']}</h4>
                                <h6 class='mb-1'>${response.persebaran[i]['pengelompokan']}</>
                                <img width="100%" src="<?= base_url('/assets/upload/') ?>${response.persebaran[i]['foto_lembaga']}" />
                                <p><strong>Alamat Lengkap :</strong> 
                                    <br>
                                    ${response.persebaran[i]['alamat_lembaga']}, Kec. ${response.persebaran[i]['kecamatan']}, Kabupaten Subang
                                </p>
                            `)
                            .addTo(mymap)
                    }

                },
                beforeSend: function() {
                    $('#totalTenagaPendidik').html('<div id="load" class="loader"></div>');
                    $("#totalTenagaKependidikan").html('<div id="load" class="loader"></div>')
                    $("#totalSiswa").html('<div id="load" class="loader"></div>')
                    $("#totalSaranaPrasarana").html('<div id="load" class="loader"></div>')
                    $("#statusAkreditasi").html('<div id="load" class="loader"></div>')

                    $(".ct-chart .sarana").html('<div id="load" class="loader"></div>')
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    console.log(textStatus + jqXHR.responseText + " " + errorThrown);
                }
            });
        }    
    });

    
    
</script>