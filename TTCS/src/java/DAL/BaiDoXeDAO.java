/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAL;

import Model.BaiDoXe;
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

    public static void main(String[] args) {
        BaiDoXeDAO dao = new BaiDoXeDAO();
        //System.out.println(dao.getBaiDoXe());
        //System.out.println(dao.available());
        System.out.println(dao.vehiclesNumberToday());
    }
}
