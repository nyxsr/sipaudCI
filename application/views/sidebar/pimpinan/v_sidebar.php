      <div class="logo">
        <a href="<?= base_url(); ?>" class="simple-text logo-mini">
            SMP
        </a>
        <a href="<?= base_url(); ?>" class="simple-text logo-normal">
            SIMONPAUD
        </a>
      </div>
      <div class="sidebar-wrapper ps-bar">
        <div class="user d-lg-none d-sm-block">
          <div class="photo">
            <i class="material-icons">person</i>           
          </div>
          <div class="user-info">
            <a data-toggle="collapse" href="#collapseExample" class="username collapsed" aria-expanded="false">
              <span>
                <?= $this->session->userdata("nama") ?>
                <b class="caret"></b>
              </span>
            </a>
            <div class="collapse" id="collapseExample" style="">
              <ul class="nav">
                <li class="nav-item">
                  <a class="nav-link" href="<?php echo base_url() ?>login/logout">
                      <span class="sidebar-mini"> <i class="material-icons">logout</i> </span>
                      <span class="sidebar-normal"><p>Log out</p></span>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <ul class="nav" id="nav">
          <li class="nav-item">
            <a class="nav-link home" href="<?php echo base_url() ?>dashboard" data-home="<?php echo base_url() ?>">
                <span class="sidebar-mini"> <i class="material-icons">dashboard</i> </span>
                <span class="sidebar-normal"><p>Dashboard</p></span>
            </a>
          </li>
          <li class="nav-item d-lg-none d-sm-block">
            <a class="nav-link" href="<?php echo base_url() ?>login/logout">
                <span class="sidebar-mini"> <i class="material-icons">logout</i> </span>
                <span class="sidebar-normal"><p>Log out</p></span>
            </a>
          </li>
        </ul>
      </div>