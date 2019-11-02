package Seguradora;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;

public class CadastrarSeguradora {
    public JPanel CadastroSeguradora;
    private JButton incluirButton;
    private JButton alterarButton;
    private JButton excluirButton;
    private JButton limparButton;
    private JTextField textField1;
    private JTextField textField2;
    private JButton buscarButton;
    public Connection connection;

    public CadastrarSeguradora(Connection connection) {
        this.connection = connection;
        incluirButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent actionEvent) {

            }
        });
    }
}
