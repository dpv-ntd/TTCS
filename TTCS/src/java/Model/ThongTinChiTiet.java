/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Date;

/**
 *
 * @author DPV
 */
public class ThongTinChiTiet {

    private BaiDoXe BaiDoXe;
    private ThongTinGuiXe ThongTinGuiXe;
    private KhachHang KhachHang;

    public ThongTinChiTiet() {
    }

    public ThongTinChiTiet(BaiDoXe BaiDoXe, ThongTinGuiXe ThongTinGuiXe, KhachHang KhachHang) {
        this.BaiDoXe = BaiDoXe;
        this.ThongTinGuiXe = ThongTinGuiXe;
        this.KhachHang = KhachHang;
    }

    public BaiDoXe getBaiDoXe() {
        return BaiDoXe;
    }

    public void setBaiDoXe(BaiDoXe BaiDoXe) {
        this.BaiDoXe = BaiDoXe;
    }

    public ThongTinGuiXe getThongTinGuiXe() {
        return ThongTinGuiXe;
    }

    public void setThongTinGuiXe(ThongTinGuiXe ThongTinGuiXe) {
        this.ThongTinGuiXe = ThongTinGuiXe;
    }

    public KhachHang getKhachHang() {
        return KhachHang;
    }

    public void setKhachHang(KhachHang KhachHang) {
        this.KhachHang = KhachHang;
    }

    @Override
    public String toString() {
        return "ThongTinChiTiet{" + "BaiDoXe=" + BaiDoXe + ", ThongTinGuiXe=" + ThongTinGuiXe + ", KhachHang=" + KhachHang + '}';
    }

}
