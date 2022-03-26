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
    <h4 class="modal-title" id="myModalLabel">Buat Bantuan </h4>
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
                                            foreach ($data as $index => $d) :
                                        ?>
                                        <option value="<?= $d['id'] ?>" 
                                        <?= ($this->session->userdata('role') == "operator") ? 
                                        (($this->encryption->decrypt(base64_decode($this->session->userdata("id_lembaga"))) == $d['id']) ? "selected" : "")  : 
                                        (($index == 0) ? "selected" : ""); ?>>
                                            <?= $d['nama_lembaga']?>
                                        </option>
                                        <?php
                                            endforeach;
                                        ?>
                                    </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Tahun</label>
                                        <input type="text" required name="tahun" id="tahun" class="form-control" onblur="$(this).val() ? $(this).parent().parent().addClass('is-focused') : $(this).parent().parent().removeClass('is-focused')">
                                    </div>
                                </div>
                            </div>
                            
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Jenis Bantuan</label>
                                        <div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="BOSDA" name="jenis_bantuan"  value="BOSDA" checked>
                                                <label class="custom-control-label" for="BOSDA">BOSDA</label>
                                            </div>
                                                <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="BOP" name="jenis_bantuan" value="BOP">
                                                <label class="custom-control-label" for="BOP">BOP</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                    <input type="radio" class="custom-control-input" id="SARANAPRASARANA" name="jenis_bantuan" value="SARANAPRASARANA">
                                                    <label class="custom-control-label" for="SARANAPRASARANA">SARANAPRASARANA</label>
                                            </div>
                                         </div>
                                    </div> 
                                </div>
                            </div>
                            <div class="row">
                               <div class="col-md-12">
                                    <div class="form-group">
                                    <label class="bmd-label-floating">Jumlah</label>
                                    <input type="number" required name="jumlah" id="jumlah" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Sumber Bantuan</label>
                                        <div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="Pusat" name="sumber_bantuan"  value="Pusat" checked>
                                                <label class="custom-control-label" for="Pusat">Pusat</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="Daerah" name="sumber_bantuan" value="Daerah">
                                            <label class="custom-control-label" for="Daerah">Daerah</label>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>      
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Keterangan Bantuan</label>
                                        <div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="Uang" name="keterangan_bantuan" value="Uang" checked>
                                                <label class="custom-control-label" for="Uang">Uang</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="Barang" name="keterangan_bantuan" value="Barang">
                                                 <label class="custom-control-label" for="Barang">Barang</label>
                                            </div>
                                        </div>
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

    $('input[name="tahun"]').datetimepicker({
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

    $('input[name="tahun"]').on("dp.show", function(e) {
        $(e.target).data("DateTimePicker").viewMode("months"); 
    });
});


$('[name="btn_simpan"]').on('click', function() {
    var tahun = $('[name="tahun"]').val();
    var jenis_bantuan = $('[name="jenis_bantuan"]:checked').val();
    var jumlah = $(' [name="jumlah"]').val();
    var sumber_bantuan = $('[name="sumber_bantuan"]:checked').val();
    var keterangan_bantuan = $(' [name="keterangan_bantuan"]:checked').val();
    var nama_lembaga = $(' [name="nama_lembaga"]').val();
    var dataIsian = {
        tahun,
        jenis_bantuan,
        jumlah,
        sumber_bantuan,
        keterangan_bantuan,
        nama_lembaga
    }
    console.log(dataIsian)
    if (
        tahun !== "" && 
        jenis_bantuan !== "" && 
        jumlah !== "" && 
        sumber_bantuan !== "" && 
        keterangan_bantuan!== "" && 
        nama_lembaga !== "" 
        ) {
    
            $.ajax({
                type: "POST",
                url: "<?php echo base_url() ?>kelola_bantuan/add",
                dataType: "json",
                data: {
                    tahun: tahun,
                    jenis_bantuan: jenis_bantuan,
                    jumlah: jumlah,
                    sumber_bantuan: sumber_bantuan,
                    keterangan_bantuan: keterangan_bantuan,
                    nama_lembaga: nama_lembaga,
                },
                success: function(response) {
                    console.log(response)
                    $('#modal').modal('hide');
                    Swal.fire(
                        'Berhasil!',
                        'Data telah ditambah.',
                        'success'
                    );
                    data.ajax.reload(null,false);

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

