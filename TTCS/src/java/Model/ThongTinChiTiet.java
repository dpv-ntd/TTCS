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

    private int id;
    private String Ma_bai_do_xe;
    private String Ten_bai_do_Xe;
    private String Dia_chi_bai_do_xe;

    private String Ma_khach_hang;
    private Date Ngay_gui;
    private String Bien_so_xe;
    private String Ten_khach_hang;
    private String CMND;
    private String Dia_chi_khach_hang;

    public ThongTinChiTiet() {
    }

    public ThongTinChiTiet(int id, String Ma_bai_do_xe, String Ten_bai_do_Xe, String Dia_chi_bai_do_xe, String Ma_khach_hang, Date Ngay_gui, String Bien_so_xe, String Ten_khach_hang, String CMND, String Dia_chi_khach_hang) {
        this.id = id;
        this.Ma_bai_do_xe = Ma_bai_do_xe;
        this.Ten_bai_do_Xe = Ten_bai_do_Xe;
        this.Dia_chi_bai_do_xe = Dia_chi_bai_do_xe;
        this.Ma_khach_hang = Ma_khach_hang;
        this.Ngay_gui = Ngay_gui;
        this.Bien_so_xe = Bien_so_xe;
        this.Ten_khach_hang = Ten_khach_hang;
        this.CMND = CMND;
        this.Dia_chi_khach_hang = Dia_chi_khach_hang;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMa_bai_do_xe() {
        return Ma_bai_do_xe;
    }

    public void setMa_bai_do_xe(String Ma_bai_do_xe) {
        this.Ma_bai_do_xe = Ma_bai_do_xe;
    }

    public String getTen_bai_do_Xe() {
        return Ten_bai_do_Xe;
    }

    public void setTen_bai_do_Xe(String Ten_bai_do_Xe) {
        this.Ten_bai_do_Xe = Ten_bai_do_Xe;
    }

    public String getDia_chi_bai_do_xe() {
        return Dia_chi_bai_do_xe;
    }

    public void setDia_chi_bai_do_xe(String Dia_chi_bai_do_xe) {
        this.Dia_chi_bai_do_xe = Dia_chi_bai_do_xe;
    }

    public String getMa_khach_hang() {
        return Ma_khach_hang;
    }

    public void setMa_khach_hang(String Ma_khach_hang) {
        this.Ma_khach_hang = Ma_khach_hang;
    }

    public Date getNgay_gui() {
        return Ngay_gui;
    }

    public void setNgay_gui(Date Ngay_gui) {
        this.Ngay_gui = Ngay_gui;
    }

    public String getBien_so_xe() {
        return Bien_so_xe;
    }

    public void setBien_so_xe(String Bien_so_xe) {
        this.Bien_so_xe = Bien_so_xe;
    }

    public String getTen_khach_hang() {
        return Ten_khach_hang;
    }

    public void setTen_khach_hang(String Ten_khach_hang) {
        this.Ten_khach_hang = Ten_khach_hang;
    }

    public String getCMND() {
        return CMND;
    }

    public void setCMND(String CMND) {
        this.CMND = CMND;
    }

    public String getDia_chi_khach_hang() {
        return Dia_chi_khach_hang;
    }

    public void setDia_chi_khach_hang(String Dia_chi_khach_hang) {
        this.Dia_chi_khach_hang = Dia_chi_khach_hang;
    }

    @Override
    public String toString() {
        return "ThongTinChiTiet{" + "id=" + id + ", Ma_bai_do_xe=" + Ma_bai_do_xe + ", Ten_bai_do_Xe=" + Ten_bai_do_Xe + ", Dia_chi_bai_do_xe=" + Dia_chi_bai_do_xe + ", Ma_khach_hang=" + Ma_khach_hang + ", Ngay_gui=" + Ngay_gui + ", Bien_so_xe=" + Bien_so_xe + ", Ten_khach_hang=" + Ten_khach_hang + ", CMND=" + CMND + ", Dia_chi_khach_hang=" + Dia_chi_khach_hang + '}';
    }

}
