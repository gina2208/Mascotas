/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package modelo;

/**
 *
 * @author maria
 */
public class Felinos extends Mascota {

    String libreTox;

    public Felinos(String libreTox, String nombre, String raza, String color, int edad) {
        super(nombre, raza, color, edad);
        this.libreTox = libreTox;
    }

    public String getLibreTox() {
        return libreTox;
    }

    public void setLibreTox(String libreTox) {
        this.libreTox = libreTox;
    }
    

}
