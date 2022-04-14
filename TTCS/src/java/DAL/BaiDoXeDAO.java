/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.BaiDoXe;
import Model.KhachHang;
import Model.ThongTinChiTiet;
import Model.ThongTinGuiXe;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author DPV
 */
public class BaiDoXeDAO extends BaseDAO<BaiDoXe> {

    public ArrayList<BaiDoXe> getBaiDoXe() {
        ArrayList<BaiDoXe> BaiDoXe = new ArrayList<>();
        try {
            String sql = "SELECT * FROM BaiDoXe";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                BaiDoXe s = new BaiDoXe();
                s.setMa_bai_do_xe(rs.getString("Ma_bai_do_xe"));
                s.setTen_bai_do_xe(rs.getString("Ten_bai_do_xe"));
                s.setDia_chi_bai_do_xe(rs.getString("Dia_chi_bai_do_xe"));
                s.setTrang_thai_bai_do_xe(rs.getInt("Trang_thai_bai_do_xe"));
                BaiDoXe.add(s);
            }
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return BaiDoXe;
    }

    public BaiDoXe getBaiDoXeByID(String Ma_bai_do_xe) {
        try {
            String sql = "SELECT * FROM BaiDoXe WHERE Ma_bai_do_xe = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, Ma_bai_do_xe);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                BaiDoXe bdx = new BaiDoXe();

                bdx.setMa_bai_do_xe(rs.getString("Ma_bai_do_xe"));
                bdx.setTen_bai_do_xe(rs.getString("Ten_bai_do_xe"));
                bdx.setDia_chi_bai_do_xe(rs.getString("Dia_chi_bai_do_xe"));
                bdx.setTrang_thai_bai_do_xe(rs.getInt("Trang_thai_bai_do_xe"));

                return bdx;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public int available() {
        try {
            int Available = 0;
            String sql = "select COUNT(BaiDoXe.Ma_bai_do_xe) AS Available from BaiDoXe where Trang_thai_bai_do_xe = 0";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Available = rs.getInt("Available");
            }
            return Available;
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int occupied() {
        try {
            int occupied = 0;
            String sql = "select COUNT(BaiDoXe.Ma_bai_do_xe) AS occupied from BaiDoXe where Trang_thai_bai_do_xe = 1";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                occupied = rs.getInt("occupied");
            }
            return occupied;
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int vehiclesNumberToday() {
        try {
            int vehiclesNumberToday = 0;
            String sql = "SELECT COUNT(ThongTinGuiXe.Id) AS vehiclesNumberToday from ThongTinGuiXe where Ngay_gui = CAST(GETDATE() as DATE)";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                vehiclesNumberToday = rs.getInt("vehiclesNumberToday");
            }
            return vehiclesNumberToday;
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int vehiclesNumberYesterday() {
        try {
            int vehiclesNumberYesterday = 0;
            String sql = "SELECT COUNT(ThongTinGuiXe.Id) AS vehiclesNumberYesterday from ThongTinGuiXe where Ngay_gui = CAST(GETDATE()-1 as DATE)";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                vehiclesNumberYesterday = rs.getInt("vehiclesNumberYesterday");
            }
            return vehiclesNumberYesterday;
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int vehiclesNumberWeekend() {
        try {
            int vehiclesNumberWeekend = 0;
            String sql = "SELECT COUNT(ThongTinGuiXe.Id) AS vehiclesNumberWeekend from ThongTinGuiXe where Ngay_gui >= CAST(GETDATE()-7 as DATE) AND Ngay_gui <= CAST(GETDATE() as DATE)";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                vehiclesNumberWeekend = rs.getInt("vehiclesNumberWeekend");
            }
            return vehiclesNumberWeekend;
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int vehiclesNumberEver() {
        try {
            int vehiclesNumberEver = 0;
            String sql = "SELECT COUNT(DISTINCT Bien_so_xe) AS vehiclesNumberEver  from ThongTinGuiXe ";
            PreparedStatement statement = connection.prepareStatement(sql);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                vehiclesNumberEver = rs.getInt("vehiclesNumberEver");
            }
            return vehiclesNumberEver;
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public ThongTinChiTiet ThongTinChiTiet(String Ma_bai_do_xe) {
        try {
            String sql = "SELECT * from ThongTinGuiXe AS a LEFT JOIN KhachHang AS b ON a.Ma_khach_hang = b.Ma_khach_hang INNER JOIN BaiDoXe AS c ON a.Ma_bai_do_xe = c.Ma_bai_do_xe WHERE c.Ma_bai_do_xe = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, Ma_bai_do_xe);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                ThongTinChiTiet s = new ThongTinChiTiet();
                BaiDoXe bdx = new BaiDoXe();
                KhachHang kh = new KhachHang();
                ThongTinGuiXe ttgx = new ThongTinGuiXe();

                bdx.setMa_bai_do_xe(rs.getString("Ma_bai_do_xe"));
                bdx.setTen_bai_do_xe(rs.getString("Ten_bai_do_xe"));
                bdx.setDia_chi_bai_do_xe(rs.getString("Dia_chi_bai_do_xe"));
                bdx.setTrang_thai_bai_do_xe(rs.getInt("Trang_thai_bai_do_xe"));

                kh.setMa_khach_hang(rs.getString("Ma_khach_hang"));
                kh.setTen_khach_hang(rs.getString("Ten_khach_hang"));
                kh.setCMND(rs.getString("CMND"));
                kh.setDia_chi_khach_hang(rs.getString("Dia_chi_khach_hang"));

                ttgx.setId(rs.getInt("id"));
                ttgx.setMa_bai_do_xe(rs.getString("Ma_bai_do_xe"));
                ttgx.setMa_khach_hang(rs.getString("Ma_khach_hang"));
                ttgx.setBien_so_xe(rs.getString("Bien_so_xe"));
                ttgx.setNgay_gui(rs.getDate("Ngay_gui"));
                ttgx.setNgay_lay(rs.getDate("Ngay_lay"));

                s.setBaiDoXe(bdx);
                s.setKhachHang(kh);
                s.setThongTinGuiXe(ttgx);
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public KhachHang getKhachHangByUserPass(String username, String password) {
        try {
            String sql = "SELECT * FROM KhachHang WHERE Tai_khoan = ? AND Mat_khau = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                KhachHang kh = new KhachHang();
                kh.setMa_khach_hang(rs.getString("Ma_khach_hang"));
                kh.setTen_khach_hang(rs.getString("Ten_khach_hang"));
                kh.setDia_chi_khach_hang(rs.getString("Dia_chi_khach_hang"));
                kh.setCMND(rs.getString("CMND"));
                kh.setTai_khoan(rs.getString("Tai_khoan"));
                kh.setMat_khau(rs.getString("Mat_khau"));
                kh.setRole(rs.getInt("Role"));
                return kh;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public KhachHang getKhachHangByUser(String username) {
        try {
            String sql = "SELECT * FROM KhachHang WHERE Tai_khoan = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                KhachHang kh = new KhachHang();
                kh.setMa_khach_hang(rs.getString("Ma_khach_hang"));
                kh.setTen_khach_hang(rs.getString("Ten_khach_hang"));
                kh.setDia_chi_khach_hang(rs.getString("Dia_chi_khach_hang"));
                kh.setCMND(rs.getString("CMND"));
                kh.setTai_khoan(rs.getString("Tai_khoan"));
                kh.setMat_khau(rs.getString("Mat_khau"));
                kh.setRole(rs.getInt("Role"));
                return kh;
            }
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public void registerAccount(String username, String password, String name, String idc, String add) {
        try {
            String sql = "INSERT INTO KhachHang(Tai_khoan, Mat_khau, Ten_khach_hang, Dia_chi_khach_hang, CMND, Role) VALUES (?, ?, ?, ?, ?,'0');";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, name);
            statement.setString(4, add);
            statement.setString(5, idc);
            ResultSet rs = statement.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(BaiDoXeDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void main(String[] args) {
        BaiDoXeDAO dao = new BaiDoXeDAO();
        //System.out.println(dao.getBaiDoXe());
        //System.out.println(dao.available());
        //System.out.println(dao.vehiclesNumberEver());
        //System.out.println(dao.ThongTinChiTiet("DTC1001"));
        System.out.println(dao.getKhachHangByUserPass("kai123", "123"));
    }

}
