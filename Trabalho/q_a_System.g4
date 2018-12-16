grammar q_a_System;

@header{
        import java.util.*;
}

@members{
        class Caracteristica{
               String cor;
               String caixa;
               String portas;
               String traccao;
                            
                            
               public Caracteristica(){
                      this.cor = "";
                      this.caixa = "";
                      this.portas = "";
                      this.traccao = "";
               }
                            
               public Caracteristica(String cor,String caixa, String portas, String traccao){
                       this.cor = cor;
                       this.caixa = caixa;
                       this.portas = portas;
                       this.traccao = traccao;
               }
                            
               // get
               public String getCor(){
                       return this.cor;
               }
                            
               public String getCaixa(){
                       return this.caixa;
               }
                            
               public String getPortas(){
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
                            
               public void setPortas(String portas){
                       this.portas = portas;
               }
                            
               public void setTraccao(String traccao){
                       this.traccao = traccao;
               }
                            
               // clone, toString,equals
                            
                            
               public boolean equals(Object o){
                       if(this == o)
                           return true;
                       if((o==null || (o.getClass()!=this.getClass()))) 
                           return false;
                       Caracteristica c = (Caracteristica) o;
                           return (this.cor.equals(c.getCor()) && this.caixa.equals(c.getCaixa()) && 
                                   this.portas.equals(c.getPortas()) && this.traccao.equals(c.getTraccao()));
               }
                            
               public String toString(){
                       StringBuilder s = new StringBuilder();
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
                   String versao;
                   int cilindrada;
                   String combustivel;
                   int preco;
                   int  ano;
                   int potencia;
                   Caracteristica caracteristica;
                   
                   
                   public Carro(){
                          this.segmento = "";
                          this.marca = "";
                          this.modelo = "";
                          this.versao = "";
                          this.cilindrada = 0;
                          this.combustivel  = "";
                          this.preco = 0;
                          this.ano = 0;
                          this.potencia = 0;
                          this.caracteristica = new Caracteristica();
                   }
                   
                   public Carro(String segmento,String marca,String modelo,String versao,int cilindrada,String combustivel,int preco, int ano, int potencia,Caracteristica caracteristica){
                          this.segmento = segmento;
                          this.marca = marca;
                          this.modelo = modelo;
                          this.versao = versao;
                          this.cilindrada = cilindrada;
                          this.combustivel = combustivel;
                          this.preco = preco;
                          this.ano = ano;
                          this.potencia = potencia;
                          this.caracteristica = caracteristica;
                   }
                   
                   
                   // get
                   public String getSegmento(){
                       return this.segmento;
                   }
                   
                   public String getMarca(){
                       return this.marca;
                   }
                   
                   public String getModelo(){
                       return this.modelo;
                   }
                   
                   public String getVersao(){
                       return this.versao;
                   }
                   
                   public int getCilindrada(){
                       return this.cilindrada;
                   }
 
                   public String getCombustivel(){
                       return this.combustivel;
                   }

                   public int getPreco(){
                       return this.preco;
                   }
                   
                   public int getAno(){
                       return this.ano;
                   }
                   
                   public int getPotencia(){
                       return this.potencia;
                   }
               
                   public Caracteristica getCaracteristica(){
                       return this.caracteristica;
                   }
                   
                   // set
                   public void setSegmento(String segmento){
                        this.segmento = segmento;
                   }
                   
                   public void setMarca(String marca){
                        this.marca = marca;
                   }
                   
                   public void setModelo(String modelo){
                        this.modelo = modelo;
                   }
                   
                   public void setVersao(String versao){
                        this.versao = versao;
                   }
                   
                   public void setCilindrada(int cilindrada){
                        this.cilindrada = cilindrada;
                   }
                   
                   public void setCombustivel(String combustivel){
                        this.combustivel = combustivel;
                   }
                   
                   public void setPreco(int preco){
                        this.preco = preco;
                   }
                   
                   public void setAno(int ano){
                        this.ano = ano;
                   }
                   
                   public void setPotencia(int potencia){
                        this.potencia = potencia;
                   }
                                     
                   public void setCaracteristica(Caracteristica caracteristica){
                        this.caracteristica = caracteristica;
                   }
                   
                   // clone, toString,equals
                
                            
                   public boolean equals(Object o){
                          if(this == o)
                             return true;
                          if((o==null || (o.getClass()!=this.getClass()))) 
                             return false;
                          Carro c = (Carro) o;
                          return (this.segmento.equals(c.getSegmento()) && 
                                    this.marca.equals(c.getMarca()) && 
                                    this.modelo.equals(c.getModelo()) && 
                                    this.versao.equals(c.getVersao()) &&
                                    this.cilindrada == c.getCilindrada() && 
                                    this.combustivel.equals(c.getCombustivel()) && 
                                    this.preco == c.getPreco() && 
                                    this.ano == c.getAno() && 
                                    this.potencia == c.getPotencia() &&
                                    this.caracteristica.equals(c.getCaracteristica()));
                   }
                            
                   public String toString(){
                          StringBuilder s = new StringBuilder();
                          s.append("Carro: \n");
                          s.append("Segmento: " + this.segmento + "\n");
                          s.append("Marca: " + this.marca + "\n");
                          s.append("Modelo: " + this.modelo + "\n");
                          s.append("Versão: " + this.versao + "\n");
                          s.append("Cilindrada: " + this.cilindrada + "\n");
                          s.append("Combustível: " + this.combustivel + "\n");
                          s.append("Preço: " + this.preco + "\n");
                          s.append("Ano: " + this.ano + "\n");
                          s.append("Potência: " + this.potencia + "\n");
                          s.append(this.caracteristica.toString());
                          return s.toString();
                   }
                   
        }
}

sistema : baseConhecimento {
                            for(Integer i : $baseConhecimento.listaVeiculos.keySet()){
                               System.out.println(i + "->" + $baseConhecimento.listaVeiculos.get(i).toString());
                            }
                           } 
          '---' perguntas
        ;

baseConhecimento returns [int totalVeiculos, HashMap<Integer,Carro>listaVeiculos]
@init{
    $baseConhecimento.listaVeiculos = new HashMap<Integer,Carro>();
    $baseConhecimento.totalVeiculos = 0;
}
            : (veiculo {
                        $baseConhecimento.totalVeiculos++;
                        $baseConhecimento.listaVeiculos.put($baseConhecimento.totalVeiculos,$veiculo.carro);
                       }
            ';')+;

veiculo returns [Carro carro]
        : '(' segmento {String valorSegmento = $segmento.valorSegmento;}
          ',' marca {String valorMarca = $marca.valorMarca;}
          ',' modelo {String valorModelo = $modelo.valorModelo;}
          ',' versao {String valorVersao = $versao.valorVersao;} 
          ',' cilindrada {int valorCilindrada = $cilindrada.valorCilindrada;}
          ',' combustivel {String valorCombustivel = $combustivel.valorCombustivel;}
          ',' preco {int valorPreco = $preco.valorPreco;}
          ',' ano {int valorAno = $ano.valorAno;}
          ',' potencia {int valorPotencia = $potencia.valorPotencia;}
          ',' extras  {Caracteristica valorExtras = $extras.valorExtras;}')'
          {$veiculo.carro = new Carro(valorSegmento,valorMarca,valorModelo,valorVersao,valorCilindrada,valorCombustivel,valorPreco,valorAno,valorPotencia,valorExtras);}
        ;

segmento returns [String valorSegmento]
         : 'pequeno citadino' {$segmento.valorSegmento = "pequeno citadino";}
         | 'citadino' {$segmento.valorSegmento = "citadino";}
         | 'utilitario' {$segmento.valorSegmento = "utilitario";}
         | 'sedan' {$segmento.valorSegmento = "sedan";}
         | 'carrinha' {$segmento.valorSegmento = "carrinha";}
         | 'monovolume' {$segmento.valorSegmento = "monovolume";}
         | 'suv' {$segmento.valorSegmento = "suv";}
         | 'cabrio' {$segmento.valorSegmento = "cabrio";}
         | 'coupe' {$segmento.valorSegmento = "coupe";}
         | 'comercial' {$segmento.valorSegmento = "comercial";}
         ;

marca returns [String valorMarca]
      : 'renault' {$marca.valorMarca = "renault";}
      | 'dacia' {$marca.valorMarca = "dacia";}
      ;

modelo returns [String valorModelo]
       : 'twingo' {$modelo.valorModelo = "twingo";}
       | 'clio' {$modelo.valorModelo = "clio";}
       | 'megane' {$modelo.valorModelo = "megane";}
       | 'talisman' {$modelo.valorModelo = "talisman";}
       | 'kangoo' {$modelo.valorModelo = "kangoo";}
       | 'espace' {$modelo.valorModelo = "espace";}
       | 'captur' {$modelo.valorModelo = "captur";}
       | 'laguna' {$modelo.valorModelo = "laguna";}
       | 'zoe' {$modelo.valorModelo = "zoe";}
       | 'duster' {$modelo.valorModelo = "duster";}
       | 'sandero' {$modelo.valorModelo = "sandero";}
       ;

versao returns [String valorVersao]
       : '0.9 TCE' {$versao.valorVersao = "0.9 TCE";}
       | '1.2 TCE' {$versao.valorVersao = "1.2 TCE";}
       | '1.5 DCI' {$versao.valorVersao = "1.5 DCI";}
       | '1.6 DCI' {$versao.valorVersao = "1.6 DCI";}
       | 'RS 200' {$versao.valorVersao = "RS 200";}
       | 'RS 220' {$versao.valorVersao = "RS 220";}
       ;

cilindrada returns [int valorCilindrada]
           : NUM {$cilindrada.valorCilindrada = $NUM.int;}
           ;

combustivel returns [String valorCombustivel]
            : 'gasolina' {$combustivel.valorCombustivel = "gasolina";}
            | 'gasoleo' {$combustivel.valorCombustivel = "gasoleo";}
            | 'eletrico' {$combustivel.valorCombustivel = "eletrico";}
            | 'hibrido' {$combustivel.valorCombustivel = "hibrido";}
            ;

preco returns [int valorPreco] 
    : NUM {$preco.valorPreco = $NUM.int;}
    ;

ano returns [int valorAno]
    : NUM {$ano.valorAno = $NUM.int;}
    ;

potencia returns [int valorPotencia] 
    : NUM {$potencia.valorPotencia = $NUM.int;}
    ;


extras returns [Caracteristica valorExtras] 
    : cor {String cor = $cor.valorCor;} 
      ',' 
      caixa {String caixa = $caixa.valorCaixa;} 
      ',' 
      portas {String portas = $portas.valorPortas;} 
      ',' 
      tracao {String tracao = $tracao.valorTracao; $extras.valorExtras = new Caracteristica(cor,caixa,portas,tracao);}
    ;

cor returns [String valorCor]
    : 'cinza claro' {$cor.valorCor = "cinza claro";}
    | 'preto' {$cor.valorCor = "preto";}
    | 'cinza escuro' {$cor.valorCor = "cinza escuro";}
    | 'branco' {$cor.valorCor = "branco";}
    | 'azul' {$cor.valorCor = "azul";}
    | 'vermelho' {$cor.valorCor = "vermelho";}
    | 'amarelo' {$cor.valorCor = "amarelo";}
    ;

caixa returns [String valorCaixa]
      : 'automatico' {$caixa.valorCaixa = "automatico";}
      | 'manual' {$caixa.valorCaixa = "manual";}
      | 'semi' {$caixa.valorCaixa = "semi";}
      ;

portas returns [String valorPortas]
       : '1-3' {$portas.valorPortas = "1-3";}
       | '4-5' {$portas.valorPortas = "4-5";}
       ;

tracao returns [String valorTracao]
       : 'dianteira' {$tracao.valorTracao = "dianteira";}
       | 'traseira' {$tracao.valorTracao = "traseira";}
       | 'integral' {$tracao.valorTracao = "integral";}
       ;


perguntas : (pergunta '?')+
          ;

pergunta : perguntaSingular
         | perguntaPlural
         ;

perguntaSingular : '(' operadorSingular ',' palavraChave ')'
                 ;

perguntaPlural : '(' operadorPlural ',' '[' (palavraChave ',')+ ']' ')'
               ;
                 
operadorSingular : 'Qual' 
                 | 'Quanto'
                 | 'Que'
                 ;
operadorPlural : 'Quais'
               | 'Quantos'
               ;

palavraChave : 'segmento' segmento
             | 'marca' marca
             | 'modelo' modelo
             | 'cilindrada' opcoes
             | 'combustivel' combustivel
             | 'preço' opcoes
             | 'ano' opcoes
             | 'potencia' opcoes
             | 'cor' cor
             | 'caixa' caixa
             | 'portas' portas
             | 'tracao' tracao
             ;

opcoes : '>' ',' NUM
       | '<' ',' NUM
       | '-+' ',' NUM ',' NUM
       ;



NUM : ('0'..'9')+
    ;

WS : [ \t\r\n]  -> skip
   ;



