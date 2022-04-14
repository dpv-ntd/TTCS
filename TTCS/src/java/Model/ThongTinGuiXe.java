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
public class ThongTinGuiXe {

    private int Id;
    private String Ma_bai_do_xe;
    private String Ma_khach_hang;
    private Date Ngay_gui;
    private Date Ngay_lay;
    private String Bien_so_xe;

    public ThongTinGuiXe() {
    }

    public ThongTinGuiXe(int Id, String Ma_bai_do_xe, String Ma_khach_hang, Date Ngay_gui, Date Ngay_lay, String Bien_so_xe) {
        this.Id = Id;
        this.Ma_bai_do_xe = Ma_bai_do_xe;
        this.Ma_khach_hang = Ma_khach_hang;
        this.Ngay_gui = Ngay_gui;
        this.Ngay_lay = Ngay_lay;
        this.Bien_so_xe = Bien_so_xe;
    }

    public int getId() {
        return Id;
    }

    public void setId(int Id) {
        this.Id = Id;
    }

    public String getMa_bai_do_xe() {
        return Ma_bai_do_xe;
    }

    public void setMa_bai_do_xe(String Ma_bai_do_xe) {
        this.Ma_bai_do_xe = Ma_bai_do_xe;
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

    public Date getNgay_lay() {
        return Ngay_lay;
    }

    public void setNgay_lay(Date Ngay_lay) {
        this.Ngay_lay = Ngay_lay;
    }

    public String getBien_so_xe() {
        return Bien_so_xe;
    }

    public void setBien_so_xe(String Bien_so_xe) {
        this.Bien_so_xe = Bien_so_xe;
    }

    @Override
    public String toString() {
        return "ThongTinGuiXe{" + "Id=" + Id + ", Ma_bai_do_xe=" + Ma_bai_do_xe + ", Ma_khach_hang=" + Ma_khach_hang + ", Ngay_gui=" + Ngay_gui + ", Ngay_lay=" + Ngay_lay + ", Bien_so_xe=" + Bien_so_xe + '}';
    }

}
