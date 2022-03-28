      <div class="logo">
      	<a href="<?= base_url(); ?>" class="simple-text logo-mini">

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
      							<span class="sidebar-normal">
      								<p>Log out</p>
      							</span>
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
      				<span class="sidebar-normal">
      					<p>Dashboard</p>
      				</span>
      			</a>
      		</li>
      		<hr class="sidebar-divider" />
      		<div class="dropdown">
      			<li class="nav-item">
      				<a class="nav-link" href="#" data-toggle="collapse" data-target="#collapsePendidikan" aria-expanded="true" aria-controls="collapsePendidikan">
      					<span class="sidebar-mini"> <i class="material-icons">local_library</i> </span>
      					<i class="fa fa-caret-down" aria-hidden="true" style="float: right;"></i>
      					<span class="sidebar-normal">
      						<p>Pendidikan</p>
      					</span>
      				</a>
      		</div>
      		<div id="collapsePendidikan" class="collapse" aria-labelledby="headingPendidikan" data-parent="#accordionSidebar">
      			<div class="bg-white py-2 collapse-inner rounded">
      				<ul class="navbar-nav">
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo base_url() ?>kelola_lembaga">
      							<span class="sidebar-mini"> <i class="material-icons">account_balance</i> </span>
      							<span class="sidebar-normal">
      								<p>Kelola Lembaga</p>
      							</span>
      						</a>
      					</li>
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo base_url() ?>kelola_tenagaPendidik">
      							<span class="sidebar-mini"> <i class="material-icons">hail</i> </span>
      							<span class="sidebar-normal">
      								<p>Kelola Tenaga Pendidik</p>
      							</span>
      						</a>
      					</li>
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo base_url() ?>kelola_tenagaKependidikan">
      							<span class="sidebar-mini"> <i class="material-icons">supervised_user_circle</i> </span>
      							<span class="sidebar-normal">
      								<p>Kelola Tenaga Kependidikan</p>
      							</span>
      						</a>
      					</li>
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo base_url() ?>kelola_siswa">
      							<span class="sidebar-mini"> <i class="material-icons">people_alt</i> </span>
      							<span class="sidebar-normal">
      								<p>Kelola Siswa</p>
      							</span>
      						</a>
      					</li>
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo base_url() ?>kelola_sarana">
      							<span class="sidebar-mini"> <i class="material-icons">home_work</i> </span>
      							<span class="sidebar-normal">
      								<p>Kelola Sarana</p>
      							</span>
      						</a>
      					</li>
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo base_url() ?>kelola_prasarana">
      							<span class="sidebar-mini"> <i class="material-icons">home_work</i> </span>
      							<span class="sidebar-normal">
      								<p>Kelola Prasarana</p>
      							</span>
      						</a>
      					</li>
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo base_url() ?>kelola_bantuan">
      							<span class="sidebar-mini"> <i class="material-icons"> widgets_outline</i> </span>
      							<span class="sidebar-normal">
      								<p>Kelola Bantuan</p>
      							</span>
      						</a>
      					</li>
      					<li class="nav-item">
      						<a class="nav-link" href="<?php echo base_url() ?>persebaran">
      							<span class="sidebar-mini"> <i class="material-icons">map_marker_radius</i> </span>
      							<span class="sidebar-normal">
      								<p>Sebaran Paud</p>
      							</span>
      						</a>
      					</li>
      				</ul>
      			</div>
      		</div>
      		</li>
      		<hr class="sidebar-divider" />
      		<li class="nav-item">
      			<a class="nav-link" href="#" data-toggle="collapse" data-target="#collapseKesehatan" aria-expanded="true" aria-controls="collapseKesehatan">
      				<span class="sidebar-mini"> <i class="material-icons">volunteer_activism</i> </span>
      				<i class="fa fa-caret-down" aria-hidden="true" style="float: right;"></i>
      				<span class="sidebar-normal">
      					<p>Kesehatan</p>
      				</span>
      			</a>
      			<div id="collapseKesehatan" class="collapse" aria-labelledby="headingKesehatan" data-parent="#accordionSidebar">
      				<div class="bg-white py-2 collapse-inner rounded">
      					<ul class="navbar-nav">
      						<li class="nav-item">
      							<a class="nav-link" href="<?php echo base_url() ?>kelola_gizi">
      								<span class="sidebar-mini"> <i class="material-icons">spa</i> </span>
      								<span class="sidebar-normal">
      									<p>Gizi Anak</p>
      								</span>
      							</a>
      						</li>

      					</ul>
      				</div>
      			</div>
      		</li>
      		<hr class="sidebar-divider" />
      		<li class="nav-item">
      			<a class="nav-link" href="<?php echo base_url() ?>kelola_pengguna">
      				<span class="sidebar-mini"> <i class="material-icons">perm_identity</i> </span>
      				<span class="sidebar-normal">
      					<p>Kelola Pengguna</p>
      				</span>
      			</a>
      		</li>
      		<li class="nav-item d-lg-none d-sm-block">
      			<a class="nav-link" href="<?php echo base_url() ?>login/logout">
      				<span class="sidebar-mini"> <i class="material-icons">logout</i> </span>
      				<span class="sidebar-normal">
      					<p>Log out</p>
      				</span>
      			</a>
      		</li>
      	</ul>
      </div>
