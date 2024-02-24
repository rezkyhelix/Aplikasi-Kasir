<?php 
    $id = $_GET['barang'];
    $hasil = $lihat->barang_edit($id);

    // Handle form submission
    if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['restok'])) {
        $restok_qty = $_POST['restok_qty'];

        // Proses logika restok (tambahkan ke stok yang ada)
        $lihat->restok_barang($id, $restok_qty);

        // Redirect atau tampilkan pesan sukses
        header("Location: index.php?page=barang&success-restok&id=$id");
        exit();
    }
?>
<a href="index.php?page=barang" class="btn btn-primary mb-3"><i class="fa fa-angle-left"></i> Balik </a>
<h4>Details Barang</h4>
<?php if(isset($_GET['success-stok'])){?>
    <div class="alert alert-success">
        <p>Tambah Stok Berhasil !</p>
    </div>
<?php }?>
<?php if(isset($_GET['success'])){?>
    <div class="alert alert-success">
        <p>Tambah Data Berhasil !</p>
    </div>
<?php }?>
<?php if(isset($_GET['remove'])){?>
    <div class="alert alert-danger">
        <p>Hapus Data Berhasil !</p>
    </div>
<?php }?>
<div class="card card-body">
    <div class="table-responsive">
        <!-- Tabel detail barang -->
        <table class="table table-striped">
            <tr>
                <th>ID Barang</th>
                <td><?php echo $hasil['id_barang']; ?></td>
            </tr>
            <tr>
                <th>Kategori</th>
                <td><?php echo $hasil['id_kategori']; ?></td>
            </tr>
            <tr>
                <th>Nama Barang</th>
                <td><?php echo $hasil['nama_barang']; ?></td>
            </tr>
            <tr>
                <th>Merk</th>
                <td><?php echo $hasil['merk']; ?></td>
            </tr>
            <tr>
                <th>Harga Beli</th>
                <td><?php echo $hasil['harga_beli']; ?></td>
            </tr>
            <tr>
                <th>Harga Jual</th>
                <td><?php echo $hasil['harga_jual']; ?></td>
            </tr>
            <tr>
                <th>Satuan Barang</th>
                <td><?php echo $hasil['satuan_barang']; ?></td>
            </tr>
            <tr>
                <th>Stok</th>
                <td><?php echo $hasil['stok']; ?></td>
            </tr>
            <tr>
                <th>Tanggal Input</th>
                <td><?php echo $hasil['tgl_input']; ?></td>
            </tr>
        </table>
    </div>
</div>


