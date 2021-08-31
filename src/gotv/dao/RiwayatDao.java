package gotv.dao;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import gotv.koneksi.Koneksi;
import gotv.model.tb_riwayat;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author User
 */
public class RiwayatDao extends tb_riwayat {
    
    Koneksi con;
    Statement st;
    ResultSet res;
    String query;
    
    public String IdRiwayat() {
        String idKriteria = "";
        con = new Koneksi();
        try {
            st = con.connect().createStatement();
            res = st.executeQuery("select *from tb_riwayat ORDER BY Id DESC");
            if (res.first() == false) {
                idKriteria = ("R-0001");
            } else {
                res.first();
                System.out.println("COT: " + res.getString("idriwayat").substring(2, 6));
                int no = Integer.valueOf(res.getString("idriwayat").substring(2, 6)) + 1;
                System.out.println(no);
                if (no < 10) {
                    idKriteria = ("R-000" + no);
                }else if (no > 10 && no <99) {
                    idKriteria = ("R-00" + no);
                }else if (no >= 100 && no <999) {
                    idKriteria = ("R-0" + no);
                }else if (no >= 1000 && no <9999) {
                    idKriteria = ("R-0" + no);
                }
            }
            res.close();
        } catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Data tidak ditemukan");
        }

        return idKriteria;
    };
    
    public void Save(String idRiwayat, String tanggal, String nama, String c1, String c2, String c3, String c4, String S, String K, String ket) {
        con = new Koneksi();
        con.connect();
        try {
            st = con.conn.createStatement();
            query = "insert into tb_riwayat(idriwayat, tanggal, alternatif, c1, c2, c3, c4, s, k, ket)values('" + idRiwayat + "','" + tanggal + "','" + nama + "','" + c1 + "', '"+c2+"','" + c3 + "','" + c4 + "','" + S + "','" + K + "','" + ket + "')";
            st.executeUpdate(query);
            st.close();
            con.conn.close();
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Data Gagal di Simpan");
        }
    }
}
