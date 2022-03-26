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
    <h4 class="modal-title" id="myModalLabel">Ubah Bantuan</h4>
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
                                            <option value="<?= $d['id'] ?>" <?= ($d['id'] == $data['id_lembaga']) ? "selected" : "" ?>><?= $d['nama_lembaga'] ?></option>
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
                                        <input type="text" required name="tahun" id="tahun" class="form-control" value="<?= $data['tahun'] ?>">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Jenis Bantuan</label>
                                        <div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="BOSDA" name="jenis_bantuan" value="BOSDA" <?= ($data['jenis_bantuan'] == "BOSDA") ? "checked" : "" ?>>
                                                <label class="custom-control-label" for="BOSDA">BOSDA</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="BOP" name="jenis_bantuan" value="BOP" <?= ($data['jenis_bantuan'] == "BOP") ? "checked" : "" ?>>
                                                <label class="custom-control-label" for="BOP">BOP</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="SARANA PRASARANA" name="jenis_bantuan" value="SARANA PRASARANA" <?= ($data['jenis_bantuan'] == "SARANA PRASARANA") ? "checked" : "" ?>>
                                                <label class="custom-control-label" for="SARANA PRASARANA">SARANA PRASARANA</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="bmd-label-floating">Jumlah</label>
                                        <input type="number" required name="jumlah" id="jumlah" class="form-control" value="<?= $data['jumlah'] ?>">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Sumber Bantuan</label>
                                        <div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="Pusat" name="sumber_bantuan" value="Pusat" <?= ($data['sumber_bantuan'] == "Pusat") ? "checked" : "" ?>>
                                                <label class="custom-control-label" for="Pusat">Pusat</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="Daerah" name="sumber_bantuan" value="Daerah" <?= ($data['sumber_bantuan'] == "Daerah") ? "" : "" ?>>
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
                                                <input type="radio" class="custom-control-input" id="Uang" name="keterangan_bantuan" value="Uang" <?= ($data['keterangan_bantuan'] == "Uang") ? "checked" : "" ?>>
                                                <label class="custom-control-label" for="Uang">Uang</label>
                                            </div>
                                            <div class="custom-control custom-radio custom-control-inline">
                                                <input type="radio" class="custom-control-input" id="Barang" name="keterangan_bantuan" value="Barang" <?= ($data['keterangan_bantuan'] == "Barang") ? "" : "" ?>>
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
    $(document).ready(function() {
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

        if (
            tahun !== "" &&
            jenis_bantuan !== "" &&
            jumlah !== "" &&
            sumber_bantuan !== "" &&
            keterangan_bantuan !== "" &&
            nama_lembaga !== ""
        ) {
            $.ajax({
                type: "POST",
                url: "<?php echo base_url() ?>kelola_bantuan/edit",
                dataType: "json",
                data: {
                    id: "<?= base64_encode($this->encryption->encrypt($data['id_bantuan'])) ?>",
                    tahun: tahun,
                    jenis_bantuan: jenis_bantuan,
                    jumlah: jumlah,
                    sumber_bantuan: sumber_bantuan,
                    keterangan_bantuan: keterangan_bantuan,
                    nama_lembaga: nama_lembaga
                },
                success: function(response) {
                    console.log(response)
                    $('#modal').modal('hide');
                    Swal.fire(
                        'Berhasil!',
                        'Data telah diubah.',
                        'success'
                    );
                    data.ajax.reload(null, false);
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