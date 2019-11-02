package Seguradora;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class CadastrarPessoa extends JFrame{
    public JTextField textField1;
    public JTextField textField2;
    public JRadioButton masculinoRadioButton;
    public JRadioButton femininoRadioButton;
    public JButton continuarButton;
    public JRadioButton funcionárioRadioButton;
    public JRadioButton clienteRadioButton;
    public JPanel CadastrarPessoa;
    private JComboBox comboBox1;
    private JComboBox comboBox2;
    private JComboBox comboBox3;
    public Connection connection;

    public CadastrarPessoa(Connection connection) {
        this.connection = connection;
        // setando combobox dos dias
        String[] dias = getDias();
        DefaultComboBoxModel dias_modelo = new DefaultComboBoxModel(dias);
        comboBox1.setModel(dias_modelo);

        // setando combobox dos meses
        String[] meses = getMeses();
        DefaultComboBoxModel meses_modelo = new DefaultComboBoxModel(meses);
        comboBox2.setModel(meses_modelo);

        // setando combobox dos dias
        String[] anos = getAnos();
        DefaultComboBoxModel anos_modelo = new DefaultComboBoxModel(anos);
        comboBox3.setModel(anos_modelo);

        continuarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                try {
                    String INSERT_INTO_PESSOA = "INSERT INTO pessoa(nome_pessoa,cpf_pessoa,data_nascimento_pessoa,sexo_pessoa) VALUES ('" + textField1.getText()
                            + "','" + textField2.getText() + "'," + getDate() + "," + getSexo() + ")";
                    Statement addPessoa = connection.createStatement();
                    addPessoa.execute(INSERT_INTO_PESSOA);

                } catch (SQLException e2) {
                    JOptionPane.showMessageDialog(null, e2.getMessage());
                }

            }
        });

        masculinoRadioButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(femininoRadioButton.isSelected()) {
                    femininoRadioButton.setSelected(false);
                }
            }
        });
        femininoRadioButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if(masculinoRadioButton.isSelected()) {
                    masculinoRadioButton.setSelected(false);
                }
            }
        });
    }

    private String[] getAnos() {
        String[] anos = new String[200];
        for(int i = 0;i < 200;i++) {
            anos[i] = (2019-i) + "";
        }
        return anos;
    }

    private String[] getDias() {
        String[] dias = new String[31];
        for(int i = 0;i<31;i++) {
            dias[i] = (i+1) + "";
        }
        return dias;
    }

    private String[] getMeses() {
        String[] meses = new String[12];
        for(int i = 0;i<12;i++) {
            meses[i] = (i+1) + "";
        }
        return meses;
    }

    private String getSexo() {
        if(masculinoRadioButton.isSelected()) {
            return "'M'";
        } else if(femininoRadioButton.isSelected()) {
            return "'F'";
        } else {
            return "ui";
            // RETORNA ERRO
        }
    }

    private String getDate() {
        return "to_date('" + comboBox1.getSelectedItem() + "/" + comboBox2.getSelectedItem() + "/" + comboBox3.getSelectedItem() + "','dd/mm/yyyy')";
    }

    /*public static void main(String[] args) {
        CadastrarPessoa teste = new CadastrarPessoa();
        JFrame aham = new JFrame();
        aham.setContentPane(teste.CadastrarPessoa);
        aham.pack();
        aham.setVisible(true);
        aham.setMinimumSize(new Dimension(500,500));

    }*/

}