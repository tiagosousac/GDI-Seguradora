package Operações;

import javax.imageio.ImageIO;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.awt.image.RenderedImage;
import java.io.*;
import java.sql.*;

public class Operações {


    public void InserirPessoa(String nome, String cpf, String data, String sexo) {
        try {
            String sql = "INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ("+ nome + "," + cpf + "," + data + "," + sexo+ ")";
            Connection conn = getConexao();
            Statement stmt = conn.createStatement();
            stmt.execute(sql);
            JOptionPane.showMessageDialog(null, "Inserido com sucesso");
            fechaConexao(conn,stmt);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

    public String[] BuscarPessoa(String cpf) {
        String[] pessoaBuscada = new String[4];
        try {
            Connection conn = getConexao();
            Statement stmt = conn.createStatement();
            String sql = "SELECT nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa FROM pessoa WHERE cpf_pessoa = " + cpf;
            ResultSet rs = stmt.executeQuery(sql);
            while (rs.next()) {
                pessoaBuscada[0] = rs.getString(1);
                pessoaBuscada[1] = rs.getString(2);
                pessoaBuscada[2] = rs.getString(3);
                pessoaBuscada[3] = rs.getString(4);
            }
            fechaConexao(conn,stmt,rs);
            return pessoaBuscada;
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return null;
    }

    public void RemoverPessoa(String cpf_pessoa) {
        try {
            Connection conn = getConexao();
            Statement stmt = conn.createStatement();
            String sql = "DELETE FROM pessoa WHERE cpf_pessoa = " + cpf_pessoa;
            stmt.execute(sql);
            JOptionPane.showMessageDialog(null, "Exclusão com sucesso");
            fechaConexao(conn, stmt);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

    public void EditarPessoa(String nome, String cpf, String data, String sexo) {
        try {
            Connection conn = getConexao();
            Statement stmt = conn.createStatement();
            String sql = "UPDATE pessoa SET nome_pessoa = "+ nome + ", sexo_pessoa = " + sexo + ", data_nascimento_pessoa =" + data + " WHERE cpf_pessoa = " + cpf;
            stmt.execute(sql);
            JOptionPane.showMessageDialog(null, "Alterado com sucesso");
            fechaConexao(conn, stmt);
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

    public void AdicionarBlob(String cpf, String arquivo) {
        String Inserir_Pessoa_foto = "UPDATE pessoa SET file_data = ? WHERE cpf_pessoa = ?";
        try {
            Connection conn = getConexao();
            File f = new File(arquivo);
            FileInputStream fis = new FileInputStream(f);
            PreparedStatement ps=conn.prepareStatement(Inserir_Pessoa_foto);
            ps.setBinaryStream(1, fis);
            ps.setString(2, cpf);
            int rc = ps.executeUpdate();
            if(rc == 0){
                System.out.println("Record not inserted");
            } else {
                System.out.println("Record inserted");
            }
            fechaConexao(conn, ps);

        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void MostrarBlob(String cpf) {
        String Buscar_Pessoa_foto = "SELECT * FROM pessoa WHERE cpf_pessoa LIKE ?";
        try {
            Connection conn = getConexao();
            PreparedStatement ps = conn.prepareStatement(Buscar_Pessoa_foto);
            ps.setString(1, cpf);
            ResultSet rs = ps.executeQuery();
            rs.next();
            Blob b = rs.getBlob("file_data");
            InputStream in = b.getBinaryStream();
            BufferedImage image = ImageIO.read(in);
            ImageIcon icon=new ImageIcon(image);
            JFrame frame=new JFrame();
            frame.setLayout(new FlowLayout());
            frame.setSize(1800,1000);
            JLabel lbl=new JLabel();
            lbl.setIcon(icon);
            frame.add(lbl);
            frame.setVisible(true);
            fechaConexao(conn,ps,rs);

        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "CPF inexistente ou sem imagem");
        }
    }

    public static Connection getConexao () {
        Connection conn = null;
        try {
            DriverManager.registerDriver (new oracle.jdbc.driver.OracleDriver());
            //Class.forName("oracle.jdbc.driver.OracleDriver");
            conn = DriverManager.getConnection("jdbc:oracle:thin:@oracle12c.cin.ufpe.br:1521:Instance01", "g192if685cc_eq09", "ttexdesz");
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return conn;
    }

    public static void fechaConexao(Connection conn) {
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

    public static void fechaConexao(Connection conn, Statement stmt) {
        try {
            if (conn != null) {
                fechaConexao(conn);
            }
            if (stmt != null) {
                stmt.close();
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

    public static void fechaConexao(Connection conn, Statement stmt, ResultSet rs) {
        try {
            if (conn != null || stmt != null) {
                fechaConexao(conn, stmt);
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }

}


