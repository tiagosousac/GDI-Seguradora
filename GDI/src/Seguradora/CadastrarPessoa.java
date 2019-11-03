package Seguradora;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.SQLException;

import Operações.AlterarPessoa;

public class CadastrarPessoa extends JFrame{
    public JPanel CadastrarPessoa;
    private JButton incluirButton;
    private JButton alterarButton;
    private JButton excluirButton;
    private JButton limparButton;
    private JTextField cpfTextField;
    private JTextField nomeTextField;
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
                String[] pessoaBuscada = ap.BuscarPessoa(BotarAspas(cpfTextField.getText()));
                nomeTextField.setText(pessoaBuscada[0]);
                System.out.println(pessoaBuscada[3]);
                if(pessoaBuscada[3].equals("M")) {
                    femininoRadioButton.setSelected(false);
                    masculinoRadioButton.setSelected(true);
                } else {
                    masculinoRadioButton.setSelected(false);
                    femininoRadioButton.setSelected(true);
                }
                String ano = pessoaBuscada[2].substring(0,4);
                comboBoxAnos.setSelectedIndex(IsInArray(anos, ano));

                String mes = pessoaBuscada[2].substring(5,7);
                if(mes.charAt(0) == '0') mes = mes.substring(1);
                comboBoxMes.setSelectedIndex(IsInArray(meses, mes));

                String dia = pessoaBuscada[2].substring(8,10);
                if(dia.charAt(0) == '0') dia = dia.substring(1);
                comboBoxDias.setSelectedIndex(IsInArray(dias, dia));
            }
        });
        incluirButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                String cpf_pessoa = BotarAspas(cpfTextField.getText());
                String nome_pessoa = BotarAspas(nomeTextField.getText());
                String data = getDate();
                String sexo = getSexo();
                ap.InserirPessoa(nome_pessoa,cpf_pessoa, data, sexo);
            }
        });
        alterarButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                String cpf_pessoa = BotarAspas(cpfTextField.getText());
                String nome_pessoa = BotarAspas(nomeTextField.getText());
                String data = getDate();
                String sexo = getSexo();
                ap.EditarPessoa(nome_pessoa,cpf_pessoa, data, sexo);
            }
        });
        excluirButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                String cpf_pessoa = BotarAspas(cpfTextField.getText());
                ap.RemoverPessoa(cpf_pessoa);
            }
        });
        limparButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                nomeTextField.setText("");
                cpfTextField.setText("");
                masculinoRadioButton.setSelected(false);
                femininoRadioButton.setSelected(false);
                comboBoxDias.setSelectedIndex(0);
                comboBoxMes.setSelectedIndex(0);
                comboBoxAnos.setSelectedIndex(0);
            }
        });
        masculinoRadioButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                if(masculinoRadioButton.isSelected()) femininoRadioButton.setSelected(false);
            }
        });
        femininoRadioButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {
                if(femininoRadioButton.isSelected()) masculinoRadioButton.setSelected(false);
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
            if(arr[i].equals(str)) {
                return i;
            }
        }
        return -1;
    }

}