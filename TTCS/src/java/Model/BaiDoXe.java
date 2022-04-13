/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author DPV
 */
public class BaiDoXe {

    private String Ma_bai_do_xe;
    private String Ten_bai_do_xe;
    private String Dia_chi_bai_do_xe;
    private int Trang_thai_bai_do_xe;

    public BaiDoXe() {
    }

    public BaiDoXe(String Ma_bai_do_xe, String Ten_bai_do_xe, String Dia_chi_bai_do_xe, int Trang_thai_bai_do_xe) {
        this.Ma_bai_do_xe = Ma_bai_do_xe;
        this.Ten_bai_do_xe = Ten_bai_do_xe;
        this.Dia_chi_bai_do_xe = Dia_chi_bai_do_xe;
        this.Trang_thai_bai_do_xe = Trang_thai_bai_do_xe;
    }

    public String getMa_bai_do_xe() {
        return Ma_bai_do_xe;
    }

    public void setMa_bai_do_xe(String Ma_bai_do_xe) {
        this.Ma_bai_do_xe = Ma_bai_do_xe;
    }

    public String getTen_bai_do_xe() {
        return Ten_bai_do_xe;
    }

    public void setTen_bai_do_xe(String Ten_bai_do_xe) {
        this.Ten_bai_do_xe = Ten_bai_do_xe;
    }

    public String getDia_chi_bai_do_xe() {
        return Dia_chi_bai_do_xe;
    }

    public void setDia_chi_bai_do_xe(String Dia_chi_bai_do_xe) {
        this.Dia_chi_bai_do_xe = Dia_chi_bai_do_xe;
    }

    public int getTrang_thai_bai_do_xe() {
        return Trang_thai_bai_do_xe;
    }

    public void setTrang_thai_bai_do_xe(int Trang_thai_bai_do_xe) {
        this.Trang_thai_bai_do_xe = Trang_thai_bai_do_xe;
    }

    @Override
    public String toString() {
        return "BaiDoXe{" + "Ma_bai_do_xe=" + Ma_bai_do_xe + ", Ten_bai_do_xe=" + Ten_bai_do_xe + ", Dia_chi_bai_do_xe=" + Dia_chi_bai_do_xe + ", Trang_thai_bai_do_xe=" + Trang_thai_bai_do_xe + '}';
    }

}
