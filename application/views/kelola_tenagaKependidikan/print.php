<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url(); ?>assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="<?php echo base_url(); ?>assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>
    <?php echo $judul; ?>
    </title>
    <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
    <link href="<?php echo base_url(); ?>assets/css/google_font.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/fontawesome/css/all.min.css" rel="stylesheet" />
    <link href="<?php echo base_url(); ?>assets/css/material-dashboard-pro.css?v=2.1.2" rel="stylesheet" />
</head>
<body>
   <div class="container">
    <h2 class=" text-center">Tenaga Kependidikan</h2> <br>
       <table class="table table-bordered" >
           <thead class="thead-light">
               <tr>
               <th class="text-center font-weight-bold">No</th>
                <th class="text-center font-weight-bold">NIP</th>
                <th class="text-center font-weight-bold">Nama</th>
                <th class="text-center font-weight-bold">Alamat</th>
                <th class="text-center font-weight-bold ">Nomor Telepon</th>
                <th class="text-center font-weight-bold">Pendidikan</th>
                <th class="text-center font-weight-bold">Tempat Tanggal Lahir</th>
                <th class="text-center font-weight-bold">Jenis Kelamin</th>
                   
               </tr>
           </thead>
           <tbody>
               <?php $no = 1;
               foreach($data as $ap) :?>
               <tr>
                   <td class="text-center"><?= $no++ ?></td>
                   <td><?= $ap->nip ?></td>
                   <td><?= $ap->nama ?></td>
                   <td><?= $ap->alamat?></td>
                   <td><?= $ap->no_telp ?></td>
                   <td><?= $ap->pendidikan ?></td>
                   <td><?= $ap->tempat_lahir ?>, <?= $ap->tanggal_lahir ?></td>
                   <td><?= $ap->jenis_kelamin ?></td>
                   
               </tr>
               <?php endforeach ?>
           </tbody>
       </table>
   </div> 
   <script type="text/javascript">
       window.print();
   </script>
</body>
</html>