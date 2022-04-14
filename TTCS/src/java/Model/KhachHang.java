/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

/**
 *
 * @author DPV
 */
public class KhachHang {

    private String Ma_khach_hang;
    private String Ten_khach_hang;
    private String CMND;
    private String Dia_chi_khach_hang;

    public KhachHang() {
    }

    public KhachHang(String Ma_khach_hang, String Ten_khach_hang, String CMND, String Dia_chi_khach_hang) {
        this.Ma_khach_hang = Ma_khach_hang;
        this.Ten_khach_hang = Ten_khach_hang;
        this.CMND = CMND;
        this.Dia_chi_khach_hang = Dia_chi_khach_hang;
    }

    public String getMa_khach_hang() {
        return Ma_khach_hang;
    }

    public void setMa_khach_hang(String Ma_khach_hang) {
        this.Ma_khach_hang = Ma_khach_hang;
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
        return "KhachHang{" + "Ma_khach_hang=" + Ma_khach_hang + ", Ten_khach_hang=" + Ten_khach_hang + ", CMND=" + CMND + ", Dia_chi_khach_hang=" + Dia_chi_khach_hang + '}';
    }

}
