                <!-- Begin Page Content -->
                <div class="container-fluid">

                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                    </div>

                    <div class="mainbody-section text-center">
                        <?php $h = $this->session->userdata('akses'); ?>
                        <?php $u = $this->session->userdata('user'); ?>
                    <div class="row">


<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-primary shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col-xs-6 col-md-10">
                    <div class="text-s font-weight-bold text-primary text-uppercase mb-2">
                        Total Barang</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $brg; ?> </div>
                </div>
                <div class="col">
                    <i class="fas fa-box fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-success shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col-xs-6 col-md-10">
                    <div class="text-s font-weight-bold text-success text-uppercase mb-1">
                    Kategori Barang</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800"> <?php echo $ktgr; ?> </div>
                </div>
                <div class="col">
                    <i class="fas fa-clipboard-list fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Earnings (Monthly) Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-info shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col-xs-6 col-md-10">
                    <div class="text-s font-weight-bold text-success text-uppercase mb-1">
                    Suplier</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800"> <?php echo $spl; ?></div>
                </div>
                <div class="col">
                    <i class="fas fa-shipping-fast fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Pending Requests Card Example -->
<div class="col-xl-3 col-md-6 mb-4">
    <div class="card border-left-warning shadow h-100 py-2">
        <div class="card-body">
            <div class="row no-gutters align-items-center">
                <div class="col-xs-6 col-md-10">
                    <div class="text-s font-weight-bold text-warning text-uppercase mb-1">
                        Stok Barang</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $stok; ?> </div>
                </div>
                <div class="col">
                    <i class="fas fa-boxes fa-2x text-gray-300"></i>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

</section> 

                    <div class="row">
                        <!-- Approach -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Dashboard Kasir</h6>
                            </div>
                            <div class="card-body">
                                <p> Sistem Kasir Point of Sale ini berguna untuk membantu toko dalam melakukan pencatatan data digital berupa laporan penjualan dan laporan 
                                    laba/rugi, stok barang, suplier, retur penjualan, serta grafik penjualan.                    
                                </p>
                                <p class="mb-0">Sistem ini juga dapat melakukan input data barang, penambahan stok barang, melakukan perhitungan dan penginputan transaksi kasir. </p>
                            </div>
                        </div>

                    </div>
                </div>

                </div>
                <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->
                </div>
                <!-- End of Content Wrapper -->

                </div>
                <!-- End of Page Wrapper -->

                <!-- Scroll to Top Button-->
                <a class="scroll-to-top rounded" href="#page-top">
                    <i class="fas fa-angle-up"></i>
                </a>

                <!-- Logout Modal-->
                <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">×</span>
                                </button>
                            </div>
                            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                            <div class="modal-footer">
                                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                                <a class="btn btn-primary" href="<?= base_url('auth/logoutProses') ?>">Logout</a>
                            </div>
                        </div>
                    </div>
                </div>