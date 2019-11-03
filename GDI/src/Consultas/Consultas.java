package Consultas;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;


public class Consultas extends JFrame{
    public JTextField textField1;
    public JButton consultarButton;
    public JPanel consultas;
    public JTable table1;
    public Connection connection;

    public Consultas(Connection connection){
        this.connection = connection;

        consultarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                try {
                    String codigoConsulta = textField1.getText();
                    Statement consulta = connection.createStatement();
                    ResultSet result = consulta.executeQuery(codigoConsulta);
                    ResultSetMetaData rsmd = result.getMetaData();
                    System.out.println("?: "+ rsmd.getColumnName(1));
                    System.out.println("?: "+ rsmd.getColumnName(2));
                    System.out.println("?: "+ rsmd.getColumnName(3));
                    System.out.println("?: "+ rsmd.getColumnName(4));
                    while(result.next()){
                        String nome = result.getString(1);
                    }

                    //consulta.close();
                    //connection.close();

                } catch (SQLException e2) {
                    JOptionPane.showMessageDialog(null, e2.getMessage());
                }
            }
        });
    }

}
