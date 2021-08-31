package gotv.view;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.Image;
import javax.swing.ImageIcon;
import javax.swing.JPanel;

/**
 *
 * @author User
 */
public class BackgroundClass extends JPanel {

    private Image image;

    public BackgroundClass() {
        image = new ImageIcon(getClass().getResource("/gotv/view/icon/logo.png")).getImage();
    }

    public static void main(String[] args) {

    }

    protected void paintComponent(Graphics g) {
        super.paintComponent(g);

        Graphics gd = (Graphics2D) g.create();

        gd.drawImage(image, 0, 0, getWidth(), getHeight(), this);
        // menggambar image
        gd.dispose();

    }
}
