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
    private String Tai_khoan;
    private String Mat_khau;
    private int Role;

    public KhachHang() {
    }

    public KhachHang(String Ma_khach_hang, String Ten_khach_hang, String CMND, String Dia_chi_khach_hang, String Tai_khoan, String Mat_khau, int Role) {
        this.Ma_khach_hang = Ma_khach_hang;
        this.Ten_khach_hang = Ten_khach_hang;
        this.CMND = CMND;
        this.Dia_chi_khach_hang = Dia_chi_khach_hang;
        this.Tai_khoan = Tai_khoan;
        this.Mat_khau = Mat_khau;
        this.Role = Role;
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

    public String getTai_khoan() {
        return Tai_khoan;
    }

    public void setTai_khoan(String Tai_khoan) {
        this.Tai_khoan = Tai_khoan;
    }

    public String getMat_khau() {
        return Mat_khau;
    }

    public void setMat_khau(String Mat_khau) {
        this.Mat_khau = Mat_khau;
    }

    public int getRole() {
        return Role;
    }

    public void setRole(int Role) {
        this.Role = Role;
    }

    @Override
    public String toString() {
        return "KhachHang{" + "Ma_khach_hang=" + Ma_khach_hang + ", Ten_khach_hang=" + Ten_khach_hang + ", CMND=" + CMND + ", Dia_chi_khach_hang=" + Dia_chi_khach_hang + ", Tai_khoan=" + Tai_khoan + ", Mat_khau=" + Mat_khau + ", Role=" + Role + '}';
    }

}
