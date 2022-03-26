<!--
=========================================================
Material Dashboard - v2.1.2
=========================================================

Product Page: https://www.creative-tim.com/product/material-dashboard
Copyright 2020 Creative Tim (https://www.creative-tim.com)
Coded by Creative Tim

=========================================================
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. -->
<!DOCTYPE html>
<html lang="en" class="perfect-scrollbar-on">

<head>
  <meta charset="utf-8" />
  <link rel="apple-touch-icon" sizes="76x76" href="<?php echo base_url(); ?>assets/img/apple-icon.png">
  <link rel="icon" type="image/png" href="<?php echo base_url(); ?>assets/img/favicon.png">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
  <title>
    <?php echo $judul; ?> | SIMONPAUD
  </title>
  <meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no' name='viewport' />
  <!--     Fonts and icons     -->
  <link href="<?php echo base_url(); ?>assets/css/google_font.css" rel="stylesheet" />
  <link href="<?php echo base_url(); ?>assets/fontawesome/css/all.min.css" rel="stylesheet" />
  <link href="<?php echo base_url(); ?>assets/fontawesome/css/v4-shims.min.css" rel="stylesheet" />

  <!-- CSS Files -->
  <link href="<?php echo base_url(); ?>assets/css/material-dashboard-pro.css?v=2.1.2" rel="stylesheet" />
  <!-- CSS Just for demo purpose, don't include it in your project -->
  <link href="<?php echo base_url(); ?>assets/demo/demo.css" rel="stylesheet" />

  <!-- DataTables Plugin -->
  <link href="<?php echo base_url(); ?>assets/css/jquery.dataTables.yadcf.css" rel="stylesheet" />

  <!-- Scrollbar -->
  <!-- <link href="<?php echo base_url(); ?>assets/scrollbar/bootstrap-combined.min.css" rel="stylesheet"> -->
  <link href="<?php echo base_url(); ?>assets/scrollbar/perfect-scrollbar.css" rel="stylesheet">
  <link href="<?php echo base_url(); ?>assets/scrollbar/prettify.css" rel="stylesheet">
  <!-- <script src="<?php echo base_url(); ?>assets/scrollbar/perfect-scrollbar.min.js"></script> -->
  <script src="<?php echo base_url(); ?>assets/scrollbar/prettify.js"></script>
  
  <!-- leaflet JS -->
  <link href="<?php echo base_url(); ?>assets/leaflet/leaflet.css" rel="stylesheet">


  <!--   Core JS Files   -->
  <script src="<?php echo base_url(); ?>assets/js/core/jquery.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/core/popper.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/core/bootstrap-material-design.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/plugins/perfect-scrollbar-pro.js"></script>
  <!-- Plugin for the momentJs  -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/moment.min.js"></script>
  <!--  Plugin for Sweet Alert -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/sweetalert2.all.min.js"></script>
  <!-- Forms Validations Plugin -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/jquery.validate.min.js"></script>
  <!-- Plugin for the Wizard, full documentation here: https://github.com/VinceG/twitter-bootstrap-wizard -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/jquery.bootstrap-wizard.js"></script>
  <!--	Plugin for Select, full documentation here: http://silviomoreto.github.io/bootstrap-select -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/bootstrap-selectpicker.js"></script>
  <!--  Plugin for the DateTimePicker, full documentation here: https://eonasdan.github.io/bootstrap-datetimepicker/ -->
  <!-- <script src="https://demos.creative-tim.com/material-dashboard-pro/assets/js/plugins/bootstrap-datetimepicker.min.js"></script> -->
  <script src="<?php echo base_url(); ?>assets/js/bootstrap-datetimepicker-pro.js"></script>
  <!--  DataTables.net Plugin, full documentation here: https://datatables.net/  -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/jquery.dataTables.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/plugins/jquery.dataTables.yadcf.js"></script>
  <!--	Plugin for Tags, full documentation here: https://github.com/bootstrap-tagsinput/bootstrap-tagsinputs  -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/bootstrap-tagsinput.js"></script>
  <!-- Plugin for Fileupload, full documentation here: http://www.jasny.net/bootstrap/javascript/#fileinput -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/jasny-bootstrap.min.js"></script>
  <!--  Full Calendar Plugin, full documentation here: https://github.com/fullcalendar/fullcalendar    -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/fullcalendar.min.js"></script>
  <!-- Vector Map plugin, full documentation here: http://jvectormap.com/documentation/ -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/jquery-jvectormap.js"></script>
  <!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/nouislider.min.js"></script>
  <!-- Include a polyfill for ES6 Promises (optional) for IE11, UC Browser and Android browser support SweetAlert -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/core-js/2.4.1/core.js"></script>
  <!-- Library for adding dinamically elements -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/arrive.min.js"></script>
  <!--  Google Maps Plugin    -->
  <!-- <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script> -->
  <!-- Chartist JS -->
  <script src="<?php echo base_url(); ?>assets/dist/chartist.min.js"></script>
  <!--  Notifications Plugin    -->
  <script src="<?php echo base_url(); ?>assets/js/plugins/bootstrap-notify.js"></script>
  <!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
  <script src="<?php echo base_url(); ?>assets/js/material-dashboard-pro.js?v=2.1.2" type="text/javascript"></script>
  <!-- Material Dashboard DEMO methods, don't include it in your project! -->
  <script src="<?php echo base_url(); ?>assets/demo/demo.js"></script>

  <!-- <script src="<?php echo base_url(); ?>assets/js/chartist-plugin-pointlabels.js"></script> -->
  <script src="<?php echo base_url(); ?>assets/js/chartist-plugin-pointlabels.min.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/chartist-bar-labels.js"></script>

  <!-- leaflet JS -->
  <script src="<?php echo base_url(); ?>assets/leaflet/leaflet.js"></script>

  <style>
    @media (min-width: 576px) { 
      .font-sm-weight-normal {
          font-weight: 300!important;
      }
    }

    .alert.alert-with-icon i[data-notify="icon"] {
      font-size: 30px;
      display: block;
      left: 15px;
      position: absolute;
      top: 50%;
      margin-top: -15px;
      color: #fff;
      background-color: transparent;
      padding: 0px;
      border-radius: none;
      max-width: 38px;
      box-shadow: none;
    }

    .loader {
      border: 4px solid #f3f3f3;
      border-radius: 50%;
      border-top: 4px solid #04afc4;
      margin: auto;
      width: 30px;
      height: 30px;
      -webkit-animation: spin 2s linear infinite;
      /* Safari */
      animation: spin 2s linear infinite;
    }

    .sidebar .user .photo {
        box-shadow: none;
        padding: 5px;
        color: #8a8a8b;
    }
    .sidebar .sidebar-wrapper .user .user-info [data-toggle=collapse]~div>ul>li>a .sidebar-mini, .sidebar .sidebar-wrapper>.nav [data-toggle=collapse]~div>ul>li>a .sidebar-mini {
      padding: 5px 2px;
    }

    /* Safari */
    @-webkit-keyframes spin {
      0% {
        -webkit-transform: rotate(0deg);
      }

      100% {
        -webkit-transform: rotate(360deg);
      }
    }

    @keyframes spin {
      0% {
        transform: rotate(0deg);
      }

      100% {
        transform: rotate(360deg);
      }
    }
  </style>
</head>

<body>
  <div class="wrapper ps-bar">
    <div class="sidebar" data-color="purple" data-background-color="white" data-image="<?= base_url(); ?>assets/img/sidebar-1.jpg">
      <!--
        Tip 1: You can change the color of the sidebar using: data-color="purple | azure | green | orange | danger"

        Tip 2: you can also add an image using data-image tag
    -->
      <?php
      if ($_SESSION['role'] == "admin") {
        $this->load->view('sidebar/admin/v_sidebar');
      } else if ($_SESSION['role'] == "operator") {
        $this->load->view('sidebar/operator/v_sidebar');
      } else if ($_SESSION['role'] == "pimpinan") {
        $this->load->view('sidebar/pimpinan/v_sidebar');
      }

      ?>
    </div>
    <div class="main-panel">
      <!-- Navbar -->
      <nav class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
        <?php $this->load->view('v_navbar'); ?>
      </nav>
      <!-- End Navbar -->
      <div class="content">
        <?php $this->load->view($konten); ?>
      </div>
      <footer class="footer">
        <?php
        // $this->load->view('v_footer'); 
        ?>
      </footer>
    </div>
  </div>


  <script>
    $(document).ready(function() {
      $().ready(function() {
        var loc = window.location.href;

        $(".nav>li").each(function() {
          var navItem = $(this);
          var panjang = navItem.find("a").attr("href").length;
          var url = loc.slice(0, panjang) === "<?= base_url() ?>" ? navItem.find("a.home").attr("href") : loc.slice(0, panjang);
          if (navItem.find("a").attr("href") === url) {
            navItem.addClass("active");
            $(".collapse").each(function() {
              var col = $(this);
              if (col.find(navItem).hasClass("active")) {
                col.addClass("show");
              }
            });
            // var url = loc.slice(0, panjang);
            // $('#judul').attr("href").text(url);
          }
          // if (navItem.find("a").data("home") == loc.slice(0, panjangHome)) {
          //   navItem.addClass("active");
          //   $(".collapse").each(function() {
          //     var col = $(this);
          //     if (col.find(navItem).hasClass("active")) {
          //       col.addClass("show");
          //     }
          //   });
          //   var urlHome = loc.slice(0, panjangHome);
          //   var url = loc.slice(0, panjang);
          //   console.log(new Array(url,urlHome));
          //   // $('#judul').attr("href").text(url);
          // }

        });


        $sidebar = $('.sidebar');

        $sidebar_img_container = $sidebar.find('.sidebar-background');

        $full_page = $('.full-page');

        $sidebar_responsive = $('body > .navbar-collapse');

        window_width = $(window).width();

        fixed_plugin_open = $('.sidebar .sidebar-wrapper .nav li.active a p').html();

        if (window_width > 767 && fixed_plugin_open == 'Dashboard') {
          if ($('.fixed-plugin .dropdown').hasClass('show-dropdown')) {
            $('.fixed-plugin .dropdown').addClass('open');
          }

        }

        $('.fixed-plugin a').click(function(event) {
          // Alex if we click on switch, stop propagation of the event, so the dropdown will not be hide, otherwise we set the  section active
          if ($(this).hasClass('switch-trigger')) {
            if (event.stopPropagation) {
              event.stopPropagation();
            } else if (window.event) {
              window.event.cancelBubble = true;
            }
          }
        });

        $('.fixed-plugin .active-color span').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-color', new_color);
          }

          if ($full_page.length != 0) {
            $full_page.attr('filter-color', new_color);
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.attr('data-color', new_color);
          }
        });

        $('.fixed-plugin .background-color .badge').click(function() {
          $(this).siblings().removeClass('active');
          $(this).addClass('active');

          var new_color = $(this).data('background-color');

          if ($sidebar.length != 0) {
            $sidebar.attr('data-background-color', new_color);
          }
        });

        $('.fixed-plugin .img-holder').click(function() {
          $full_page_background = $('.full-page-background');

          $(this).parent('li').siblings().removeClass('active');
          $(this).parent('li').addClass('active');

          var new_image = $(this).find("img").attr('src');

          if ($sidebar_img_container.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            $sidebar_img_container.fadeOut('fast', function() {
              $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
              $sidebar_img_container.fadeIn('fast');
            });
          }

          if ($full_page_background.length != 0 && $('.switch-sidebar-image input:checked').length != 0) {
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $full_page_background.fadeOut('fast', function() {
              $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
              $full_page_background.fadeIn('fast');
            });
          }

          if ($('.switch-sidebar-image input:checked').length == 0) {
            var new_image = $('.fixed-plugin li.active .img-holder').find("img").attr('src');
            var new_image_full_page = $('.fixed-plugin li.active .img-holder').find('img').data('src');

            $sidebar_img_container.css('background-image', 'url("' + new_image + '")');
            $full_page_background.css('background-image', 'url("' + new_image_full_page + '")');
          }

          if ($sidebar_responsive.length != 0) {
            $sidebar_responsive.css('background-image', 'url("' + new_image + '")');
          }
        });

        $('.switch-sidebar-image input').change(function() {
          $full_page_background = $('.full-page-background');

          $input = $(this);

          if ($input.is(':checked')) {
            if ($sidebar_img_container.length != 0) {
              $sidebar_img_container.fadeIn('fast');
              $sidebar.attr('data-image', '#');
            }

            if ($full_page_background.length != 0) {
              $full_page_background.fadeIn('fast');
              $full_page.attr('data-image', '#');
            }

            background_image = true;
          } else {
            if ($sidebar_img_container.length != 0) {
              $sidebar.removeAttr('data-image');
              $sidebar_img_container.fadeOut('fast');
            }

            if ($full_page_background.length != 0) {
              $full_page.removeAttr('data-image', '#');
              $full_page_background.fadeOut('fast');
            }

            background_image = false;
          }
        });

        $('.switch-sidebar-mini input').change(function() {

          $body = $('body');
          
          $input = $(this);

          if (md.misc.sidebar_mini_active == true) {
            $('body').removeClass('sidebar-mini');
            md.misc.sidebar_mini_active = false;

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar();

          } else {

            $('.sidebar .sidebar-wrapper, .main-panel').perfectScrollbar('destroy');

            setTimeout(function() {
              $('body').addClass('sidebar-mini');

              md.misc.sidebar_mini_active = true;
            }, 300);
          }

          // we simulate the window Resize so the charts will get updated in realtime.
          var simulateWindowResize = setInterval(function() {
            window.dispatchEvent(new Event('resize'));
          }, 180);

          // we stop the simulation of Window Resize after the animations are completed
          setTimeout(function() {
            clearInterval(simulateWindowResize);
          }, 1000);

        });
      });


    });

    
    //preview image
    function openInput(image) {
        $(image).click();
    }

    function previewName(blok,image) {
        var image = document.getElementById(image);
        if (image.files && image.files[0]) {
            var reader = new FileReader();

            reader.onload = function(e) {
                $("#"+blok).attr('src', e.target.result);
            }

            reader.readAsDataURL(image.files[0]); // convert to base64 string
        }
    }

    jQuery('.ps-bar').each(function(){
      new PerfectScrollbar(this, {
        wheelSpeed: 0.6,
        wheelPropagation: false,
        minScrollbarLength: 20,
      });
    })
  </script>
</body>

</html>