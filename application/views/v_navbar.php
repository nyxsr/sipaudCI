<style>
  .customdropdown{
    position: relative;
    width: 320px;
    max-height: 300px;
    overflow:auto;
  }
  .customdropdown a div{
    cursor: pointer;
  }
  .customdropdown .dropdown-item{
    white-space: unset;
    padding: 0.1rem .1rem;
  }
  .customdropdown .dropdown-item .alert.alert-with-icon {
      margin-top: 0px;
  }
  .customdropdown .alert {
    margin-bottom: 4px;
  }
  .customdropdown button.close {
    line-height: normal;
  }

  .customdropdown .close {
    text-shadow: 0.1px 1px 0 #fff;
  }

  @media (max-width: 991px){
    .customdropdown .dropdown-item{
        margin-left: 0;
        margin-right: 0;
    }
  }
  @media (min-width: 768px){
    .customdropdown .dropdown-item, .customdropdown li>a {
        padding-right: 0;
        padding-left: 0;
    }
  }
  .customdropdown .dropdown-item:hover, .customdropdown a:active, .customdropdown a:focus, .customdropdown a:hover {
    box-shadow: 0 0px 0px 0 rgba(0,0,0,.14), 0 0px 0px 0px rgba(156,39,176,.4);
    background-color: #fff;
    color: #fff;
  }
  .customdropdown .dropdown-item div:hover{
    background-color: #afdcff;
    color:#555555;
  }
  .customdropdown .dropdown-item div {
    width:100%;
    /* background-color: #919696; */
    /* color:black; */
  }
  .customdropdown .dropdown-item:focus, 
  .customdropdown .dropdown-item:hover, 
  .customdropdown a:active, 
  .customdropdown a:focus, 
  .customdropdown a:hover {
    box-shadow: 0 0px 0px 0 rgba(0,0,0,.14), 0 0px 0px 0px rgba(156,39,176,.4);
    background-color: #fff;
    color: #fff;
  }

  .customdropdown .alert.alert-info {
    box-shadow: 0 0 0 0 rgba(0,0,0,.14), 0 0 0 -0 rgba(0, 0, 0, 0.62);
    /* box-shadow: 1px 1px 0.3px 0 rgba(0,0,0,.14), 1px 4.2px 9px -5px rgba(0, 0, 0, 0.62); */
    background-color: #cae8ff;
    color: #555555;
  }

  .baru{
    color:lime !important;
    top: 50%;
    -ms-transform: translateY(-50%);
    transform: translateY(50%);
  }
</style>

        
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-minimize">
              <button id="minimizeSidebar" class="btn btn-just-icon btn-white btn-fab btn-round">
                <i class="material-icons text_align-center visible-on-sidebar-regular">more_vert</i>
                <i class="material-icons design_bullet-list-67 visible-on-sidebar-mini">view_list</i>
              </button>
            </div>
<!--             
            <a href="javascript:void(0)" class="switch-trigger">
            <p>Sidebar Mini</p>
            <label class="ml-auto">
              <div class="togglebutton switch-sidebar-mini">
                <label>
                  <input type="checkbox">
                  <span class="toggle"></span>
                </label>
              </div>
            </label>
            <div class="clearfix"></div>
          <div class="ripple-container"></div></a> -->

            <a class="navbar-brand" id="judul" href=""><?php echo $judul ?></a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="sr-only">Toggle navigation</span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
            <span class="navbar-toggler-icon icon-bar"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end">
            <ul class="navbar-nav">
              <?php
                if($_SESSION['role'] == "pengunjung"){
                  $this->load->view('pengunjung/notif');
                }
              ?>
              <li class="nav-item dropdown">
                  <p class="d-inline-block m-auto" style="font-size:10pt;">
                    <?= $this->session->userdata("nama") ?>
                  </p>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link" href="javascript:;" id="navbarDropdownProfile" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="material-icons">person</i>
                  <p class="d-lg-none d-md-block">
                    Account
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownProfile">
                  <a class="dropdown-item" href="<?php echo base_url() ?>login/logout">Log out</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
        
        <script>
          const scroll = new PerfectScrollbar('#scroll',{
          wheelSpeed: 1,
          wheelPropagation: false,
          minScrollbarLength: 10
          });
          // const main_content = new PerfectScrollbar('.main-panel',{
          //   wheelSpeed: 1,
          //   wheelPropagation: true,
          //   minScrollbarLength: 10
          // });
          const side_bar = new PerfectScrollbar('.sidebar-wrapper',{
            wheelSpeed: 1,
            wheelPropagation: true, 
            minScrollbarLength: 10
          });
        </script>