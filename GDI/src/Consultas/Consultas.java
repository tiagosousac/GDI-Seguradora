package Consultas;

import javax.swing.*;
import javax.swing.plaf.nimbus.State;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableModel;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.*;
import java.util.Vector;

import Operações.Operações;

public class Consultas extends JFrame{
    public JTextField textField1;
    public JButton consultarButton;
    public JPanel consultas;
    private JScrollPane scrollPane;
    public JTable table1;
    private Operações ap;

    public Consultas(){
        ap = new Operações();
        consultarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                try {
                    Connection connection = ap.getConexao();
                    String codigoConsulta = textField1.getText();
                    Statement consulta = connection.createStatement();

                    ResultSet result = consulta.executeQuery(codigoConsulta);
                    table1.setModel(buildTableModel(result));
                    ap.fechaConexao(connection, consulta, result);
                } catch (SQLException e2) {
                    JOptionPane.showMessageDialog(null, e2.getMessage());
                }
            }
        });
    }

    public TableModel buildTableModel(ResultSet rs)
            throws SQLException {
        ResultSetMetaData metaData = rs.getMetaData();
        // names of columns
        Vector<String> columnNames = new Vector<String>();
        int columnCount = metaData.getColumnCount();
        for (int column = 1; column <= columnCount; column++) {
            columnNames.add(metaData.getColumnName(column));
        }
        // data of the table
        Vector<Vector<Object>> data = new Vector<Vector<Object>>();
        while (rs.next()) {
            Vector<Object> vector = new Vector<Object>();
            for (int columnIndex = 1; columnIndex <= columnCount; columnIndex++) {
                vector.add(rs.getObject(columnIndex));
            }
            data.add(vector);
        }
        return new DefaultTableModel(data, columnNames);
    }
}


