package Seguradora;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;

import Operações.AlterarPessoa;

public class CadastrarPessoa extends JFrame{
    public JPanel CadastrarPessoa;
    private JButton incluirButton;
    private JButton alterarButton;
    private JButton excluirButton;
    private JButton limparButton;
    private JTextField textField1;
    private JTextField textField2;
    private JRadioButton masculinoRadioButton;
    private JRadioButton femininoRadioButton;
    private JComboBox comboBoxDias;
    private JComboBox comboBoxMes;
    private JComboBox comboBoxAnos;
    private JButton buscarButton;
    public Connection connection;
    public AlterarPessoa ap;

    public CadastrarPessoa(Connection connection) {
        this.connection = connection;
        ap = new AlterarPessoa(connection);
        // setando combobox dos dias
        String[] dias = getDias();
        DefaultComboBoxModel dias_modelo = new DefaultComboBoxModel(dias);
        comboBoxDias.setModel(dias_modelo);

        // setando combobox dos meses
        String[] meses = getMeses();
        DefaultComboBoxModel meses_modelo = new DefaultComboBoxModel(meses);
        comboBoxMes.setModel(meses_modelo);

        // setando combobox dos dias
        String[] anos = getAnos();
        DefaultComboBoxModel anos_modelo = new DefaultComboBoxModel(anos);
        comboBoxAnos.setModel(anos_modelo);

        buscarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                String[] pessoaBuscada = ap.BuscarPessoa(BotarAspas(textField1.getText()));
                textField2.setText(pessoaBuscada[1]);
                if(pessoaBuscada[3] == "M") {
                    masculinoRadioButton.setSelected(true);
                    femininoRadioButton.setSelected(false);
                } else {
                    femininoRadioButton.setSelected(true);
                    masculinoRadioButton.setSelected(false);
                }
                String ano = pessoaBuscada[2].substring(0,4);
                System.out.println(ano.length());
                comboBoxAnos.setSelectedIndex(IsInArray(anos, ano));
                System.out.println(IsInArray(anos, ano));
                String mes = pessoaBuscada[2].substring(5,7);
                System.out.println(mes.length());
                comboBoxMes.setSelectedIndex(IsInArray(meses, mes));
                System.out.println(IsInArray(meses, mes));
                String dia = pessoaBuscada[2].substring(8,10);
                System.out.println(dia.length());
                comboBoxDias.setSelectedIndex(IsInArray(dias, dia));
                System.out.println(IsInArray(dias, dia));
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

    private String BotarAspas(String str) {
        return "'" + str + "'";
    }

    private String getDate() {
        return "to_date('" + comboBoxDias.getSelectedItem() + "/" + comboBoxMes.getSelectedItem() + "/" + comboBoxAnos.getSelectedItem() + "','dd/mm/yyyy')";
    }

    private int IsInArray(String[] arr, String str) {
        for(int i = 0;i<arr.length;i++) {
            if(arr[i] == str) {
                return i;
            }
        }
        return -1;
    }

}