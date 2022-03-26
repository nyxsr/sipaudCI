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
    <h4 class="modal-title" id="myModalLabel">Ubah Siswa</h4>
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
                    <div class="card-body" style="margin-top:6px;">
                        <form method="POST" id="addForm" action="javascript:void(0);">                   
                            <div class="row" style="padding-bottom: 0px;">
                                <div class="list col-md-12 dropdown bootstrap-select dropdown" style="width=100% !important;">
                                    <label for="nama_lembaga" style="font-size:.6875rem;margin-bottom:0px;" class="bmd-label-static">Nama Lembaga</label>
                                    <select name="nama_lembaga" class="selectpicker" data-style="select-with-transition" title="Pilih Lembaga" data-size="7" tabindex="-98" <?= ($this->session->userdata('role') == "operator") ? "disabled" : "" ?>>
                                        <?php 
                                            foreach ($dataLembaga as $index => $d) :
                                        ?>
                                        <option value="<?= $d['id'] ?>" <?= ($d['id'] == $data['id_lembaga']) ? "selected" : "" ?>><?= $d['nama_lembaga']?></option>
                                        <?php
                                            endforeach;
                                        ?>
                                    </select>
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
                                        <label class="bmd-label-floating">NISN</label>
                                        <input type="text" required name="NISN" id="NISN" class="form-control" value="<?= $data['NISN'] ?>">
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
                                        <input type="text" required name="tanggal_lahir" id="tanggal_lahir" class="form-control is-focused" value="<?= $data['tanggal_lahir'] ?>"  onblur="$(this).val() ? $(this).parent().parent().addClass('is-focused') : $(this).parent().parent().removeClass('is-focused')">
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
                                        <label class="bmd-label-floating">Alamat</label>
                                        <input type="text" required name="alamat" id="alamat" class="form-control" value="<?= $data['alamat'] ?>">
                                    </div>
                                </div>
                            </div> 
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Nama Orang Tua</label>
                                        <input type="text" required name="nama_ortu" id="nama_ortu" class="form-control" value="<?= $data['nama_ortu'] ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Nomor Telepon Orang Tua</label>
                                        <input type="text" required name="no_telp_ortu" id="no_telp_ortu" class="form-control" value="<?= $data['no_telp_ortu'] ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Pekerjaan Orang Tua</label>
                                        <input type="text" required name="pekerjaan_ortu" id="pekerjaan_ortu" class="form-control" value="<?= $data['pekerjaan_ortu'] ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Usia Adik</label>
                                        <input type="text" required name="usia_adik" id="usia_adik" class="form-control" value="<?= $data['usia_adik'] ?>">
                                    </div>
                                </div>
                            </div>                            
                            <div class="row pb-1">
                                <div class="col-md-12">
                                    <div class="form-group" id="tanggal">
                                        <label class="bmd-label-floating">Tanggal Masuk</label>
                                        <input type="text" required name="tanggal_masuk" id="tanggal_masuk" class="form-control is-focused" value="<?= $data['tanggal_masuk'] ?>"  onblur="$(this).val() ? $(this).parent().parent().addClass('is-focused') : $(this).parent().parent().removeClass('is-focused')" > 
                                    </div>
                                </div>
                            </div> 
                            <div class="row mb-1">
                                <div class="col-md-12">
                                    <div class="form-group" id="tanggal">
                                        <label class="bmd-label-floating">Tanggal Keluar (Opsional)</label>
                                        <input type="text" name="tanggal_keluar" id="tanggal_keluar" class="form-control is-focused" value="<?= $data['tanggal_keluar'] ?>" onblur="$(this).val() ? $(this).parent().parent().addClass('is-focused') : $(this).parent().parent().removeClass('is-focused')" > 
                                    </div>
                                </div>
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
$(document).ready(function(){
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
    
    $('#tanggal_masuk').datetimepicker({
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
    $('#tanggal_keluar').datetimepicker({
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

});

$('[name="btn_simpan"]').on('click', function() {
    var nama = $('[name="nama"]').val();
    var NISN = $('[name="NISN"]').val();
    var tempat_lahir = $('[name="tempat_lahir"]').val();
    var tanggal_lahir = $('[name="tanggal_lahir"]').val();
    var tanggal_masuk = $('[name="tanggal_masuk"]').val();
    var tanggal_keluar = $('[name="tanggal_keluar"]').val();
    var jenisKelamin = $('[name="jenisKelamin"]:checked').val();
    var alamat = $('[name="alamat"]').val();
    var nama_ortu = $('[name="nama_ortu"]').val();
    var no_telp_ortu = $('[name="no_telp_ortu"]').val();
    var pekerjaan_ortu = $('[name="pekerjaan_ortu"]').val();
    var usia_adik = $('[name="usia_adik"]').val();
    var nama_lembaga = $('[name="nama_lembaga"]').val();
    
    if (
        nama !== "" && 
        NISN !== "" && 
        tempat_lahir !== "" && 
        tanggal_lahir !== "" && 
        tanggal_masuk !== "" && 
        jenisKelamin !== "" && 
        alamat !== "" && 
        nama_ortu !== "" &&
        no_telp_ortu !== "" &&
        pekerjaan_ortu !== "" &&
        usia_adik !== "" &&
        nama_lembaga !== "" 
        ) {
            $.ajax({
                type: "POST",
                url: "<?php echo base_url() ?>kelola_siswa/edit",
                dataType: "json",
                data: {
                    id:"<?= base64_encode($this->encryption->encrypt($data['id_siswa'])) ?>",
                    nama,
                    NISN,
                    tempat_lahir,
                    tanggal_lahir,
                    tanggal_masuk,
                    tanggal_keluar,
                    jenisKelamin,
                    alamat,
                    nama_ortu,
                    no_telp_ortu,
                    pekerjaan_ortu,
                    usia_adik,
                    nama_lembaga,
                },
                success: function(data) {
                    $('#modal').modal('hide');
                    Swal.fire(
                        'Berhasil!',
                        'Data telah diubah.',
                        'success'
                    );
                    
                    datatable.ajax.reload(null,false);
                },
                error: function(jqXHR, textStatus, errorThrown) {
                    // $('#msg').show();
                    // $("#msg").html(textStatus + jqXHR.responseText + " " + errorThrown);
                    console.log(textStatus + jqXHR.responseText + " " + errorThrown);
                }
            });
            return false;
    } else {
        notifikasi("danger", "Data gagal ditambahkan", "bottom", "center", "not_interested", "#informasi", "");
    }

});
</script>
