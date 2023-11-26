/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controle;

/**
 *
 * @author Rodrigo
 */
public class cliente {
    // Atrib
    private int codigo;
    private String Modelo;
    private String Placa;
    private double Ano;
    private String Cor;
    private String Fabricante;
    private float Diaria;
    
    //Métodos
    public int getId(){
        return this.codigo;
    }
    public String getModelo(){
        return this.Modelo;
    }
    public String getPlaca(){
        return this.Placa;
    }
    public double getAno(){
        return this.Ano;
    }
    public String getCor(){
        return this.Cor;
    }
    public String getFabricante(){
        return this.Fabricante;
    }
    public float getDiaria(){
        return this.Diaria;
    }
    
    public void setcodigo(int p_codigo){
        this.codigo = p_codigo;
    }
    public void setModelo(String p_modelo){
        this.Modelo = p_modelo;
    }
    public void setPlaca(String p_placa){
        this.Placa = p_placa;
    }
    public void setAno(double p_ano) {
        this.Ano = p_ano;
    }
    public void setCor(String p_cor) {
        this.Cor = p_cor;
    }
    public void setFabricante(String p_fabricante) {
        this.Fabricante = p_fabricante;
    }
    public void setDiaria(float p_diaria) {
        this.Diaria = p_diaria;
    }
    
    
}