  <style>
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

    .form-control:invalid,
    .form-control,
    .is-focused .form-control {
      background-image: linear-gradient(0deg, #8e24aa 2px, rgba(244, 67, 54, 0) 0), linear-gradient(0deg, #d2d2d2 1px, hsla(0, 0%, 82%, 0) 0) !important;
    }

    .background {
      /* background-image: url('<?php echo base_url(); ?>assets/img/login.jpg'); */
      background-color: #3399ff;
    }

    .input-group .form-control-icon {
      position: absolute;
      z-index: 20;
      display: block;
      width: 2.375rem;
      height: 2.375rem;
      line-height: 2.375rem;
      text-align: center;
      color: #aaa;
      right: 5px;
      top: 12px;
    }
  </style>
  <div class="wrapper wrapper-full-page">
  <div class="page-header login-page header-filter background" filter-color="green" style="background-size: cover; background-position: top center;">
      <!--   you can change the color of the filter page using: data-color="blue | purple | green | orange | red | rose " -->
      <div class="container">
        <div class="row mt-md-5">
          <div class="col-lg-4 col-md-6 col-sm-8 ml-auto mr-auto">
            <div style="transform:translateY(-150%);text-align:center;font-size:x-large">SISTEM MONITORING PAUD</div>
            <form class="form" method="POST">
              <div class="card card-login">
                <div class="card-header card-header-rose text-center">
                  <h4 class="card-title">Login</h4>
                </div>
                <div class="card-body ">
                  <span class="bmd-form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="material-icons">email</i>
                        </span>
                      </div>
                      <input type="text" id="username" required name="username" class="form-control" placeholder="Username...">
                    </div>
                  </span>
                  <span class="bmd-form-group">
                    <div class="input-group">
                      <div class="input-group-prepend">
                        <span class="input-group-text">
                          <i class="material-icons">lock_outline</i>
                        </span>
                      </div>
						          <span class="fa fa-eye form-control-icon" id="icon-password"></span>
                      <input type="password" id="password" required name="password" class="form-control" placeholder="Password...">
                    </div>
                  </span>
                </div>
                <div class="text-center px-4 mb-4">
                  <button id="simpan" type="submit" class="btn btn-rose btn-round py-3 mt-4 w-100">Login</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
      </>
    </div>
    <script>
      $(document).ready(function() {
        $("#icon-password").on("click",function(){
        if($("#password").attr("type") == "text"){
            $("#password").attr("type","password");
            $(this).attr("class","fa fa-eye form-control-icon");
          }else{
            $("#password").attr("type","text");
            $(this).attr("class","fa fa-eye-slash form-control-icon");
          }
        });

        $('#simpan').on('click', function() {
          var username = $('#username').val();
          var password = $('#password').val();
          if (username !== "" && password !== "") {
            $.ajax({
              type: "POST",
              url: "<?php echo base_url() ?>login/proses",
              dataType: "json",
              data: {
                username: username,
                password: password
              },
              success: function(data) {
                if (data == "ada") {
                  notifikasi("success", "Berhasil Login", "top", "center", "check_circle_outline", "", "");
                  setTimeout(function() {
                    window.location.href = "<?php echo base_url() ?>"
                  }, 2000);
                } else {
                  $('#simpan').html('Login');
                  $('[name="password"]').val("");
                  notifikasi("danger", "Username atau Password yang anda masukan salah", "top", "center", "not_interested", "", "");
                }
              },
              beforeSend: function() {
                $('#simpan').html('<div id="load" class="loader"></div>');
              },
              error: function(jqXHR, textStatus, errorThrown) {
                $('#simpan').html('Login');
                // alert("Gagal");
                console.log(jqXHR.responseText);
                $("#judul").html(textStatus + jqXHR.responseText + " " + errorThrown);
              }
            });
            return false;
          } else {
            notifikasi("danger", "Lengkapi semua kolomnya", "top", "center", "not_interested", "", "");
          }

        });
      });
    </script>