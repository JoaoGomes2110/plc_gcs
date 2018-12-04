/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

grammar q_a_System;

@header{
        import java.util.*;
}

@members{
       class Caracteristica{
               String cor;
               String caixa;
               int portas;
               String traccao;
                            
                            
               public Característica(){
                      this.cor = "";
                      this.caixa = "";
                      this.portas = 0;
                      this.traccao = "";
               }
                            
               public Caracteristica(String cor,String caixa, int portas, String traccao){
                       this.cor = cor.clone();
                       this.caixa = caixa.clone();
                       this.portas = portas;
                       this.traccao = traccao.clone();
               }
                            
               // get
               public String getCor(){
                       return this.cor;
               }
                            
               public String getCaixa(){
                       return this.caixa;
               }
                            
               public int getPortas(){
                       return this.portas;
               }
                            
               public String getTraccao(){
                       return this.traccao;
               }
                            
               // Set
               public void setCor(String cor){
                       this.cor = cor;
               }
                            
               public void setCaixa(String caixa){
                       this.caixa = caixa;
               }
                            
               public void setPortas(int portas){
                       this.portas = portas;
               }
                            
               public void setTraccao(String traccao){
                       this.traccao = traccao;
               }
                            
               // clone, toString,equals
                            
               public Caracteristica clone(){
                       return new Caracteristica(this){};
               }
                            
               public boolean equals(Object o){
                       if(this == o)
                           return true;
                       if((o==null || (o.getClass()!=this.getClass()))) 
                           return false;
                       Caracteristica c = (Caracteristica) o;
                           return (this.cor.equals(c.getCor()) && this.caixa.equals(c.getCaixa()) && 
                                   this.portas == c.getPortas() && this.traccao.equals(c.getTraccao()))
               }
                            
               public String toString(){
                       String s = new StringBuilder();
                       s.append("Característica: \n");
                       s.append("Cor: " + this.cor + "\n");
                       s.append("Caixa: " + this.caixa + "\n");
                       s.append("Numero de Portas: " + this.portas + "\n");
                       s.append("Traccao: " + this.traccao + "\n");
                       return s.toString();
               }
                            
       }
       
       
       class Carro{
                   String segmento;
                   String marca;
                   String modelo;
                   float cilindrada;
                   String combustivel;
                   double preco;
                   int  ano;
                   double potencia;
                   Caracteristica caracteristica;
                   
                   
                   public Carro(){
                          this.segmento = "";
                          this.marca = "";
                          this.modelo = "";
                          this.cilindrada = 0.0;
                          this.combustivel  = "";
                          this.preco = 0.0;
                          this.ano = 0;
                          this.potência = 0.0;
                          this.caracteristica = new Caracteristica();
                   }
                   
                   public Carro(String segmento,String marca,String modelo,float cilindrada,String combustivel,double preco, int ano, double potencia,Caracteristica caracteristica){
                          this.segmento = segmento.clone();
                          this.marca = marca.clone();
                          this.modelo = modelo.clone();
                          this.cilindrada = cilindrada;
                          this.combustivel = combustivel.clone();
                          this.preco = preco;
                          this.ano = ano;
                          this.potencia = potencia;
                          this.caracteristica = caracteristica.clone();
                   }
                   
                   
                   // get
                   public String getSegmento(){
                       return this.segmento;
                   }
                   
                   public String getMarca(){
                       return this.marca;
                   }
                   
                   public String getModelo(){
                       return this.Modelo;
                   }
                   
                   public float getCilindrada(){
                       return this.cilindrada;
                   }
 
                   public String getCombustivel(){
                       return this.combustivel;
                   }

                   public double getPreco(){
                       return this.preco;
                   }
                   
                   public int getAno(){
                       return this.ano;
                   }
                   
                   public double getPotencia(){
                       return this.potencia;
                   }
               
                   public Caracteristica getCaracteristica(){
                       return this.caracteristica;
                   }
                   
                   // set
                   public void setSegmento(String segmento){
                        this.segmento = segmento.clone();
                   }
                   
                   public void setMarca(String marca){
                        this.marca = marca.clone();
                   }
                   
                   public void setModelo(String modelo){
                        this.modelo = modelo.clone();
                   }
                   
                   public void setCilindrada(float cilindrada){
                        this.cilindrada = cilindrada;
                   }
                   
                   public void setCombustivel(String combustivel){
                        this.combustivel = combustivel.clone();
                   }
                   
                   public void setPreco(double preco){
                        this.preco = preco;
                   }
                   
                   public void setAno(int ano){
                        this.ano = ano;
                   }
                   
                   public void setPotencia(double potencia){
                        this.potencia = potencia;
                   }
                                     
                   public void setCaracteristica(Caracteristica caracteristica){
                        this.caracteristica = caracteristica.clone();
                   }
                   
                   // clone, toString,equals
                   public Carro clone(){
                          return new Carro(this){};
                   }
                            
                   public boolean equals(Object o){
                          if(this == o)
                             return true;
                          if((o==null || (o.getClass()!=this.getClass()))) 
                             return false;
                          Carro c = (Carro) o;
                          return (this.segmento.equals(c.getSegmento()) && this.marca.equals(c.getMarca()) && 
                                 this.modelo.equals(c.getModelo()) && this.cilindrada == c.getCilindrada() && 
                                 this.combustivel.equals(c.getCombustivel())&& this.preco == c.getPreco() && this.ano = c.getAno() && this.potencia == c.getPotencia &&
                                 this.caracteristica.equals(c.getCaracteristica()))
                   }
                            
                   public String toString(){
                          String s = new StringBuilder();
                          s.append("Carro: \n");
                          s.append("Segmento: " + this.segmento + "\n");
                          s.append("Marca: " + this.marca + "\n");
                          s.append("Modelo: " + this.modelo + "\n");
                          s.append("Cilindrada: " + this.cilindrada + "\n");
                          s.append("Combustível: " + this.combustivel + "\n");
                          s.append("Preço: " + this.preco +  + "\n");
                          s.append("Ano: " + this.ano + "\n");
                          s.append("Potência: " + this.potencia + "\n");
                          s.append(this.caracteristica.toString());
                          return s.toString();
                   }
                   
        }

}
