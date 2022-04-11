                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
                        <a href="<?php echo base_url('admin/data_laporan') ?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Laporan</a>
                    </div>

                    <div class="mainbody-section text-center">
                        <?php $h = $this->session->userdata('akses'); ?>
                        <?php $u = $this->session->userdata('user'); ?>

 <!-- Content Row -->
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
                    Penjualan (Total)</div>
                    <div class="h5 mb-0 font-weight-bold text-gray-800"> <?php echo 'Rp.' .$totalpnjln; ?> </div>
                </div>
                <div class="col">
                    <i class="fas fa-dollar-sign fa-2x text-gray-300"></i>
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

<div class="row">
                        <!-- Approach -->
                        <div class="card shadow mb-4">
                            <div class="card-header py-3">
                                <h6 class="m-0 font-weight-bold text-primary">Sistem Point of Sale Toko A3 Jaya</h6>
                            </div>
                            <div class="card-body">
                                <p> Sistem Kasir Point of Sale ini berguna untuk membantu toko dalam melakukan pencatatan data digital berupa laporan penjualan dan laporan 
                                    laba/rugi, stok barang, suplier, retur penjualan, serta grafik penjualan.                    
                                </p>
                                <p class="mb-0">Sistem ini juga dapat melakukan input data barang, penambahan stok barang, melakukan perhitungan dan penginputan transaksi kasir. </p>
                            </div>
                        </div>

                    </div>
                    <!-- /.container-fluid -->

                </div>
                <!-- End of Main Content -->

                <!-- Footer -->
                <!-- <footer class="sticky-footer bg-white">
                    <div class="container my-auto">
                        <div class="copyright text-center my-auto">
                            <span>Copyright &copy; Your Website 2021</span>
                        </div>
                    </div>
                </footer> -->
                <!-- End of Footer -->

                </div>
                <!-- End of Content Wrapper -->

                </div>
                <!-- End of Page Wrapper -->

                <!-- Scroll to Top Button-->
                <a class="scroll-to-top rounded" href="#page-top">
                    <i class="fas fa-angle-up"></i>
                </a>

                