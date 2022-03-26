<style>
    .form-group .form-control-icon {
        position: absolute;
        z-index: 20;
        display: block;
        width: 2.375rem;
        height: 2.375rem;
        line-height: 2.375rem;
        text-align: center;
        color: #aaa;
        right: 5px;
        top: 2px;
    }
</style>
<div class="modal-header">
    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
    <h4 class="modal-title" id="myModalLabel">Ubah Tenaga Kependidikan</h4>
</div>
<div class="modal-body">
    <div>
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header card-header-info" id="tambah">
                        <h4 class="card-title">Lengkapi Form Dibawah</h4>
                        <p class="card-category" id="msg"></p>
                    </div>
                    <div class="card-header card-header-info" style="margin-top:-2px">
                        <ul style="padding-left: 20px;margin:0">
                            <li>Pastikan NIP anda tersedia</li>
                            <li>Kosongkan jika tidak memiliki NIP</li>
                        </ul>
                    </div>
                    <div class="card-body" style="margin-top:6px;">
                        <form method="POST" id="addForm" action="javascript:void(0);">
                            <div class="row" style="padding-bottom: 0px;">
                                <div class="list col-md-12 dropdown bootstrap-select dropdown" style="width:100% !important;">
                                    <label for="nama_lembaga" style="font-size:.6875rem;margin-bottom:0px;" class="bmd-label-static">Nama Lembaga</label>
                                    <select name="nama_lembaga" class="selectpicker" data-style="select-with-transition" title="Pilih Lembaga" data-size="7" tabindex="-98" <?= ($this->session->userdata('role') == "operator") ? "disabled" : "" ?>>
                                        <?php
                                        foreach ($dataLembaga as $index => $d) :
                                        ?>
                                            <option value="<?= $d['id'] ?>" <?= ($d['id'] == $data['id_lembaga']) ? "selected" : "" ?>><?= $d['nama_lembaga'] ?></option>
                                        <?php
                                        endforeach;
                                        ?>
                                    </select>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" id="inputan_nuptk">
                                        <label class="bmd-label-floating">NUPTK</label>
                                        <input type="text" name="nuptk" class="form-control" value="<?= $data['nuptk'] ?>">
                                        <span class="form-control-feedback">
                                            <i class="material-icons" id="icon_nuptk"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group" id="inputan_nip">
                                        <label class="bmd-label-floating">NIP</label>
                                        <input type="text" name="nip" class="form-control" value="<?= $data['nip'] ?>">
                                        <span class="form-control-feedback">
                                            <i class="material-icons" id="icon_nip"></i>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Nama</label>
                                        <input type="text" required name="nama" id="nama" class="form-control" value="<?= $data['nama'] ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Jenis Kelamin</label>
                                        <div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="laki_laki" name="jenisKelamin" value="L" <?= ($data['jenis_kelamin'] == "L") ? "checked" : "" ?>>
                                                <label class="custom-control-label" for="laki_laki">Laki laki</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="perempuan" name="jenisKelamin" value="P" <?= ($data['jenis_kelamin'] == "P") ? "checked" : "" ?>>
                                                <label class="custom-control-label" for="perempuan">Perempuan</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Nomor Telepon</label>
                                        <input type="text" required name="no_telp" id="no_telp" class="form-control" value="<?= $data['no_telp'] ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Alamat</label>
                                        <input type="text" required name="alamat" id="alamat" class="form-control" value="<?= $data['alamat'] ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-5">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Tempat Lahir</label>
                                        <input type="text" required name="tempat_lahir" id="tempat_lahir" class="form-control" value="<?= $data['tempat_lahir'] ?>">
                                    </div>
                                </div>
                                <div class="col-md-7">
                                    <div class="form-group" id="tanggal">
                                        <label class="bmd-label-floating">Tanggal Lahir</label>
                                        <input type="text" required name="tanggal_lahir" id="tanggal_lahir" class="form-control is-focused" value="<?= $data['tanggal_lahir'] ?>" onblur="$(this).val() ? $(this).parent().parent().addClass('is-focused') : $(this).parent().parent().removeClass('is-focused')">
                                    </div>
                                </div>
                            </div>
                            <div class="row" style="padding-bottom: 0px;">
                                <div class="list col-md-12 dropdown bootstrap-select dropdown" style="width:100% !important;">
                                    <label for="pendidikan" style="font-size:.6875rem;margin-bottom:0px;" class="bmd-label-static">Pendidikan</label>
                                    <select name="pendidikan" class="selectpicker" data-style="select-with-transition" title="Pilih Pendidikan" data-size="7" tabindex="-98">
                                        <option <?= ($data['pendidikan'] == "SD") ? "selected" : "" ?>>SD</option>
                                        <option <?= ($data['pendidikan'] == "SMP") ? "selected" : "" ?>>SMP</option>
                                        <option <?= ($data['pendidikan'] == "SMA") ? "selected" : "" ?>>SMA</option>
                                        <option <?= ($data['pendidikan'] == "S1") ? "selected" : "" ?>>S1</option>
                                        <option <?= ($data['pendidikan'] == "S2") ? "selected" : "" ?>>S2</option>
                                        <option <?= ($data['pendidikan'] == "S3") ? "selected" : "" ?>>S3</option>
                                    </select>
                                </div>
                            </div>

                            <div class="mb-3">
                                <label>Diklat</label>
                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="diklatdasar" <?= !empty($data['diklatdasar']) ? "checked" : '' ?>>
                                    <label class="custom-control-label" for="diklatdasar">Diklat Tingkat Dasar</label>
                                    <input type="text" style="display:<?= !empty($data['diklatdasar']) ? "block" : 'none' ?>" name="tahundiklatdasar" placeholder="Tahun Diklat Dasar" id="tahundiklatdasar" class="form-control" onblur="$('#tahundiklatdasar').addClass('is-focused')" value="<?= $data['diklatdasar'] ?>">
                                </div>

                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="diklatlanjut" <?= !empty($data['diklatlanjut']) ? "checked" : '' ?>>
                                    <label class="custom-control-label" for="diklatlanjut">Diklat Tingkat Lanjut</label>
                                    <input type="text" style="display:<?= !empty($data['diklatlanjut']) ? "block" : 'none' ?>" name="tahundiklatlanjut" placeholder="Tahun Diklat Lanjut" id="tahundiklatlanjut" class="form-control" onblur="$('#tahundiklatlanjut').addClass('is-focused')" value="<?= $data['diklatlanjut'] ?>">
                                </div>

                                <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="diklatmahir" <?= !empty($data['diklatmahir']) ? "checked" : '' ?>>
                                    <label class="custom-control-label" for="diklatmahir">Diklat Tingkat Mahir</label>
                                    <input type="text" style="display:<?= !empty($data['diklatmahir']) ? "block" : 'none' ?>" name="tahundiklatmahir" placeholder="Tahun Diklat Mahir" id="tahundiklatmahir" class="form-control" onblur="$('#tahundiklatmahir').addClass('is-focused')" value="<?= $data['diklatmahir'] ?>">
                                </div>
                            </div>

                            <div class="row px-3">
                                <button type="button" class="btn btn-success mb-4" data-add="diklatlainnya">
                                    Tambah Diklat Lainnya
                                </button>
                            </div>
                            <div class="row" id="diklatlainnya-form">
                                <?php
                                if (!empty($data['diklatlainnya'])) {
                                    $arrDiklatLainnya = explode(",", $data['diklatlainnya']);
                                    foreach ($arrDiklatLainnya as $diklatlainnya) :
                                        $arrExplode = explode(";", $diklatlainnya);
                                ?>
                                        <div class="col-md-12">
                                            <div class="card">
                                                <div class="card-header card-header-info">
                                                    <div class="d-inline-flex">
                                                        <h4 class="d-inline-block align-middle" style="margin-top: 0;margin-bottom: 0;padding: 0.375rem 0.75rem;">Diklat Lainnya</h4>
                                                    </div>
                                                    <div class="cold-md-4 d-inline-flex" style="float:right;">
                                                        <div style="margin:5px 4px 0 0 !important;line-height:0.5px;">
                                                            <button type="button" class="close" data-dismiss="close-diklatlainnya"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="card-body" style="margin-top:0px">
                                                    <div class="row px-3">
                                                        <div class="col-sm-7 mt-2">
                                                            <div class="form-group">
                                                                <label class="bmd-label-floating">Nama Diklat</label>
                                                                <input type="text" required name="diklatlainnya[]" class="form-control" value="<?= $arrExplode[0] ?>">
                                                            </div>
                                                        </div>
                                                        <div class="col-sm-5 mt-2">
                                                            <div class="form-group">
                                                                <label class="bmd-label-floating">Tahun</label>
                                                                <input type="text" required name="tahundiklatlainnya[]" class="form-control" value="<?= $arrExplode[1] ?>" onblur="$(this).val() ? $(this).parent().parent().addClass('is-focused') : $(this).parent().parent().removeClass('is-focused')">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                <?php
                                    endforeach;
                                }
                                ?>
                            </div>

                            <button type="button" class="btn btn-default pull-right" data-dismiss="modal">Batal</button>
                            <button class="btn btn-info pull-right" id="btn_simpan" name="btn_simpan">Simpan</button>
                            <div class="clearfix"></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- <div class="modal-footer">
...
</div> -->

<script>
    // button add pelatihan
    $("button[data-add='diklatlainnya']").on('click', function(e) {
        // $("#pelatihan-form").append(element).hide();
        $(`
        <div class="col-md-12">
            <div class="card">
                <div class="card-header card-header-info">
                    <div class="d-inline-flex">
                        <h4 class="d-inline-block align-middle" style="margin-top: 0;margin-bottom: 0;padding: 0.375rem 0.75rem;">Diklat Lainnya</h4>
                    </div>
                    <div class="cold-md-4 d-inline-flex" style="float:right;">
                        <div style="margin:5px 4px 0 0 !important;line-height:0.5px;">
                            <button type="button" class="close" data-dismiss="close-diklatlainnya"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        </div>
                    </div>
                </div>
                <div class="card-body" style="margin-top:0px">
                    <div class="row px-3">
                        <div class="col-sm-7 mt-2">
                            <div class="form-group">
                                <label class="bmd-label-floating">Nama Diklat</label>
                                <input type="text" required name="diklatlainnya[]" class="form-control">
                            </div>
                        </div>
                        <div class="col-sm-5 mt-2">
                            <div class="form-group">
                                <label class="bmd-label-floating">Tahun</label>
                                <input type="text" required name="tahundiklatlainnya[]" class="form-control" onblur="$(this).val() ? $(this).parent().parent().addClass('is-focused') : $(this).parent().parent().removeClass('is-focused')">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    `).hide().appendTo("#diklatlainnya-form").show('fast');


        $('input[name="tahundiklatlainnya[]"]').datetimepicker({
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

        $('input[name="tahundiklatlainnya[]"]').on("dp.show", function(e) {
            $(e.target).data("DateTimePicker").viewMode("months");
        });

    });

    // button close-pelatihan
    $(document).on('click', "button[data-dismiss='close-diklatlainnya']", function() {
        $(this).closest('.col-md-12').hide('fast', function() {
            $(this).closest('.col-md-12').remove()
        });
    });

    $(document).ready(function() {
        cekNIP();
        cekNUPTK();

        $('.selectpicker').selectpicker();

        $('#tanggal_lahir').datetimepicker({
            format: 'YYYY-MM-DD',
            icons: {
                time: 'fa fa-clock-o',
                date: 'fa fa-calendar',
                up: 'fa fa-plus',
                down: 'fa fa-minus',
                previous: 'fa fa-chevron-left',
                next: 'fa fa-chevron-right'
            },
        });


        $('#tanggal_lahir').datetimepicker({
            format: 'YYYY-MM-DD',
            icons: {
                time: 'fa fa-clock-o',
                date: 'fa fa-calendar',
                up: 'fa fa-plus',
                down: 'fa fa-minus',
                previous: 'fa fa-chevron-left',
                next: 'fa fa-chevron-right'
            },
        });

        $('input[name="tahundiklatdasar"]').datetimepicker({
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

        $('input[name="tahundiklatdasar"]').on("dp.show", function(e) {
            $(e.target).data("DateTimePicker").viewMode("months");
        });

        $('input[name="tahundiklatlanjut"]').datetimepicker({
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

        $('input[name="tahundiklatlanjut"]').on("dp.show", function(e) {
            $(e.target).data("DateTimePicker").viewMode("months");
        });

        $('input[name="tahundiklatmahir"]').datetimepicker({
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

        $('input[name="tahundiklatmahir"]').on("dp.show", function(e) {
            $(e.target).data("DateTimePicker").viewMode("months");
        });

        $('input[name="tahundiklatlainnya[]"]').datetimepicker({
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

        $('input[name="tahundiklatlainnya[]"]').on("dp.show", function(e) {
            $(e.target).data("DateTimePicker").viewMode("months");
        });
    });

    $('[name="nip"]').on('input', function() {
        cekNIP();
    });

    function cekNIP() {
        var nip = $('[name="nip"]').val();
        $.ajax({
            type: "POST",
            url: "<?php echo base_url() ?>kelola_tenagaKependidikan/cek_nip",
            dataType: "json",
            data: {
                id: "<?= base64_encode($this->encryption->encrypt($data['id_tenagaKependidikan'])) ?>",
                nip: nip
            },
            success: function(response) {
                if (nip !== '') {
                    if (response == true) {
                        $('#icon_nip').removeClass("loader");
                        $('#inputan_nip').removeClass("has-danger");
                        $('#inputan_nip').addClass("has-success");
                        $('#icon_nip').html('done');
                    } else {
                        $('#icon_nip').removeClass("loader");
                        $('#inputan_nip').removeClass("has-success");
                        $('#inputan_nip').addClass("has-danger");
                        $('#icon_nip').html('close');
                    }
                } else {
                    $('#icon_nip').html('');
                    if ($('#inputan_nip').hasClass("has-success")) {
                        $('#inputan_nip').removeClass("has-success");
                    }
                    if ($('#inputan_nip').hasClass("has-danger")) {
                        $('#inputan_nip').removeClass("has-danger");
                    }

                }
            },
            beforeSend: function() {
                $('#icon_nip').html('');
                $('#icon_nip').addClass("loader");
            },
            error: function(jqXHR, textStatus, errorThrown) {
                $('#msg').show();
                $("#msg").html(textStatus + jqXHR.responseText + " " + errorThrown);
            }
        });

        return false;
    }

    $('[name="nuptk"]').on('input', function() {
        cekNUPTK();
    });

    function cekNUPTK() {
        var nuptk = $('[name="nuptk"]').val();
        $.ajax({
            type: "POST",
            url: "<?php echo base_url() ?>kelola_tenagaKependidikan/cek_nuptk",
            dataType: "json",
            data: {
                id: "<?= base64_encode($this->encryption->encrypt($data['id_tenagaKependidikan'])) ?>",
                nuptk: nuptk
            },
            success: function(response) {
                if (nuptk !== '') {
                    if (response == true) {
                        $('#icon_nuptk').removeClass("loader");
                        $('#inputan_nuptk').removeClass("has-danger");
                        $('#inputan_nuptk').addClass("has-success");
                        $('#icon_nuptk').html('done');
                    } else {
                        $('#icon_nuptk').removeClass("loader");
                        $('#inputan_nuptk').removeClass("has-success");
                        $('#inputan_nuptk').addClass("has-danger");
                        $('#icon_nuptk').html('close');
                    }
                } else {
                    $('#icon_nuptk').html('');
                    if ($('#inputan_nuptk').hasClass("has-success")) {
                        $('#inputan_nuptk').removeClass("has-success");
                    }
                    if ($('#inputan_nuptk').hasClass("has-danger")) {
                        $('#inputan_nuptk').removeClass("has-danger");
                    }

                }
            },
            beforeSend: function() {
                $('#icon_nuptk').html('');
                $('#icon_nuptk').addClass("loader");
            },
            error: function(jqXHR, textStatus, errorThrown) {
                $('#msg').show();
                $("#msg").html(textStatus + jqXHR.responseText + " " + errorThrown);
            }
        });

        return false;
    }


    $('#diklatdasar').on('click', function() {
        if ($(this).is(":checked")) {
            $('input[name="tahundiklatdasar"]').attr("required", true);
            $('input[name="tahundiklatdasar"]').fadeIn();
        } else {
            $('input[name="tahundiklatdasar"]').attr("required", false);
            $('input[name="tahundiklatdasar"]').val("").hide();
            $('input[name="tahundiklatdasar"]').datetimepicker('remove');
        }
    });

    $('#diklatlanjut').on('click', function() {
        if ($(this).is(":checked")) {
            $('input[name="tahundiklatlanjut"]').attr("required", true);
            $('input[name="tahundiklatlanjut"]').fadeIn();
        } else {
            $('input[name="tahundiklatlanjut"]').attr("required", false);
            $('input[name="tahundiklatlanjut"]').val("").hide();
            $('input[name="tahundiklatlanjut"]').datetimepicker('remove');
        }
    });

    $('#diklatmahir').on('click', function() {
        if ($(this).is(":checked")) {
            $('input[name="tahundiklatmahir"]').attr("required", true);
            $('input[name="tahundiklatmahir"]').fadeIn();
        } else {
            $('input[name="tahundiklatmahir"]').attr("required", false);
            $('input[name="tahundiklatmahir"]').val("").hide();
            $('input[name="tahundiklatmahir"]').datetimepicker('remove');
        }
    });

    function diklatlainnyaEmpty() {
        var diklatlainnya = $("input[name='diklatlainnya[]']")
            .map(function() {
                return $(this).val();
            }).get();
        var tahundiklatlainnya = $("input[name='tahundiklatlainnya[]']")
            .map(function() {
                return $(this).val();
            }).get();

        var diklatlainnyaEmpty = diklatlainnya.filter(function(item) {
            return item == ""
        });
        var tahundiklatlainnyaEmpty = tahundiklatlainnya.filter(function(item) {
            return item == ""
        });

        return ((diklatlainnyaEmpty.length == 0 && diklatlainnya.length > 0 || diklatlainnya.length == 0) && (tahundiklatlainnyaEmpty.length == 0 && tahundiklatlainnya.length > 0 || tahundiklatlainnya.length == 0))
    }

    function diklat() {
        var diklatdasar = $("#diklatdasar").is(":checked");
        var diklatlanjut = $("#diklatlanjut").is(":checked");
        var diklatmahir = $("#diklatmahir").is(":checked");

        var tahundiklatdasar = $("input[name='tahundiklatdasar']").val();
        var tahundiklatlanjut = $("input[name='tahundiklatlanjut']").val();
        var tahundiklatmahir = $("input[name='tahundiklatmahir']").val();

        var statusdiklatdasar = diklatdasar ? (tahundiklatdasar != "") : true;
        var statusdiklatlanjut = diklatlanjut ? (tahundiklatlanjut != "") : true;
        var statusdiklatmahir = diklatmahir ? (tahundiklatmahir != "") : true;

        return (statusdiklatdasar && statusdiklatlanjut && statusdiklatmahir);
    }


    $('[name="btn_simpan"]').on('click', function() {
        var nuptk = $('[name="nuptk"]').val();
        var nip = $('[name="nip"]').val();
        var nama = $('[name="nama"]').val();
        var jenisKelamin = $('[name="jenisKelamin"]:checked').val();
        var no_telp = $('[name="no_telp"]').val();
        var nama_lembaga = $(' [name="nama_lembaga"]').val();
        var alamat = $(' [name="alamat"]').val();
        var tempat_lahir = $(' [name="tempat_lahir"]').val();
        var tanggal_lahir = $(' [name="tanggal_lahir"]').val();
        var pendidikan = $(' [name="pendidikan"]').val();

        var diklatdasar = $("input[name='tahundiklatdasar']").val();
        var diklatlanjut = $("input[name='tahundiklatlanjut']").val();
        var diklatmahir = $("input[name='tahundiklatmahir']").val();

        var diklatlainnya = $("input[name='diklatlainnya[]']")
            .map(function() {
                return $(this).val();
            }).get();
        var tahundiklatlainnya = $("input[name='tahundiklatlainnya[]']")
            .map(function() {
                return $(this).val();
            }).get();


        if (
            nuptk !== "" &&
            nama !== "" &&
            jenisKelamin !== "" &&
            no_telp !== "" &&
            nama_lembaga !== "" &&
            alamat !== "" &&
            tempat_lahir !== "" &&
            tanggal_lahir !== "" &&
            pendidikan !== "" &&
            diklat() &&
            diklatlainnyaEmpty()
        ) {
            if ($('#inputan_nuptk').hasClass("has-success")) {
                $.ajax({
                    type: "POST",
                    url: "<?php echo base_url() ?>kelola_tenagaKependidikan/edit",
                    dataType: "json",
                    data: {
                        id: "<?= base64_encode($this->encryption->encrypt($data['id_tenagaKependidikan'])) ?>",
                        nuptk,
                        nip,
                        nama,
                        jenisKelamin,
                        no_telp,
                        nama_lembaga,
                        alamat,
                        tempat_lahir,
                        tanggal_lahir,
                        pendidikan,
                        diklatdasar,
                        diklatlanjut,
                        diklatmahir,
                        diklatlainnya,
                        tahundiklatlainnya
                    },
                    success: function(data) {
                        $('#modal').modal('hide');
                        Swal.fire(
                            'Berhasil!',
                            'Data telah diubah.',
                            'success'
                        );

                        datatable.ajax.reload(null, false);

                    },
                    error: function(jqXHR, textStatus, errorThrown) {
                        // $('#msg').show();
                        // $("#msg").html(textStatus + jqXHR.responseText + " " + errorThrown);
                        console.log(textStatus + jqXHR.responseText + " " + errorThrown);
                    }
                });
                return false;

            } else {
                notifikasi("danger", "Data gagal ditambahkan", "top", "center", "not_interested", "#modal", "");
            }

        } else {
            console.log([nip, nama, no_telp, nama_lembaga, alamat, tempat_lahir, tanggal_lahir, pendidikan]);
            notifikasi("danger", "Data gagal ditambahkan", "bottom", "center", "not_interested", "#informasi", "");
        }

    });
</script>