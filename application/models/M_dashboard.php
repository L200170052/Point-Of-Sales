<?php

class M_dashboard extends CI_Model
{
    public function total($table)
    {
        $query = $this->db->get($table)->num_rows();
        return $query;
    }

    public function total_penjualan()
    {
        return $this->db->select('sum(d_jual_qty) as total')
            ->from('tbl_detail_jual')->get()->row();
    }

    public function total_stok()
    {
        return $this->db->select('sum(barang_stok) as total')
            ->from('tbl_barang')->get()->row();
    }
}