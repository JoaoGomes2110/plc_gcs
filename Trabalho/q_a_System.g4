grammar q_a_System;

@header{
        import java.util.*;
        import java.lang.*;
        import java.io.*;
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

sistema returns [int totalVeiculos, HashMap<Integer,Carro> listaVeiculos]
        : baseConhecimento {
                            $sistema.totalVeiculos = $baseConhecimento.totalVeiculos;
                            $sistema.listaVeiculos = $baseConhecimento.listaVeiculos;
                            System.out.println("\n");
                            System.out.println("******************** Base de Dados ***********************");
                            for(Integer i : $sistema.listaVeiculos.keySet()){
                               System.out.println(i + "->" + $sistema.listaVeiculos.get(i).toString());
                            }
                           } 
          '---' perguntas[$sistema.listaVeiculos]
        ;

baseConhecimento returns [int totalVeiculos, HashMap<Integer,Carro>listaVeiculos]
@init{
    $baseConhecimento.listaVeiculos = new HashMap<Integer,Carro>();
    $baseConhecimento.totalVeiculos = 1;
}
            : (veiculo[$baseConhecimento.totalVeiculos] {
                        int introduzir = $veiculo.introduzir;
                        if(introduzir == 0){System.out.println("Erro: Veiculo nº"+ $baseConhecimento.totalVeiculos + " não introduzido!!!");}
                        else{
                            $baseConhecimento.listaVeiculos.put($baseConhecimento.totalVeiculos,$veiculo.carro);
                        }
                        $baseConhecimento.totalVeiculos++;
                       }
            ';')+;

veiculo[int totalVeiculos] returns [Carro carro, int introduzir]
@init{$veiculo.introduzir = 0;}
        : '(' segmento {String valorSegmento = $segmento.valorSegmento;}
          ',' marca {String valorMarca = $marca.valorMarca;}
          ',' modelo[valorSegmento,valorMarca] {String valorModelo = $modelo.valorModelo;}
          ',' versao[valorModelo] {String valorVersao = $versao.valorVersao;} 
          ',' cilindrada[valorVersao] {int valorCilindrada = $cilindrada.valorCilindrada;}
          ',' combustivel[valorVersao] {String valorCombustivel = $combustivel.valorCombustivel;}
          ',' preco {int valorPreco = $preco.valorPreco;}
          ',' ano {int valorAno = $ano.valorAno;}
          ',' potencia[valorVersao] {int valorPotencia = $potencia.valorPotencia;}
          ',' extras  {Caracteristica valorExtras = $extras.valorExtras;}')'
          {
           if(valorSegmento.equals("erroSegmento")){System.out.println("Erro a introduzir veículo nº" + totalVeiculos + ": Segmento não autorizado!!!");}
           else if(valorMarca.equals("erroMarca")){System.out.println("Erro a introduzir veículo nº" + totalVeiculos + ": Marca não autorizada!!!");}
           else if(valorModelo.equals("erroModelo")){System.out.println("Erro a introduzir veículo nº" + totalVeiculos + ": Modelo não autorizado!!!");}
           else if(valorVersao.equals("erroVersao")){System.out.println("Erro a introduzir veículo nº" + totalVeiculos + ": Versão não autorizada!!!");}
           else if(valorCombustivel.equals("erroCombustivel")){System.out.println("Erro a introduzir veículo nº" + totalVeiculos + ": Combustivel não autorizado!!!");}
           else if(valorCilindrada == -1){System.out.println("Erro a introduzir veículo nº" + totalVeiculos + ": Cilindrada não autorizada!!!");}
           else if(valorPotencia == -1){System.out.println("Erro a introduzir veículo nº" + totalVeiculos + ": Potencia não autorizada!!!");}
           else if(valorExtras.getCor().equals("")){System.out.println("Erro a introduzir veículo nº" + totalVeiculos + ": Caracteristicas não autorizadas!!!");}
           else{$veiculo.carro = new Carro(valorSegmento,valorMarca,valorModelo,valorVersao,valorCilindrada,valorCombustivel,valorPreco,valorAno,valorPotencia,valorExtras);$veiculo.introduzir = 1;}
          }
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
         | outraPal {$segmento.valorSegmento = "erroSegmento";}
         ;

marca returns [String valorMarca]
      : 'renault' {$marca.valorMarca = "renault";}
      | 'dacia' {$marca.valorMarca = "dacia";}
      | outraPal {$marca.valorMarca = "erroMarca";}
      ;

modelo[String valorSegmento,String valorMarca] returns [String valorModelo]
       : 'twingo' {
                   if(valorMarca.equals("renault")){ 
                     if(valorSegmento.equals("pequeno citadino")){
                       $modelo.valorModelo = "twingo";
                     }else{
                        $modelo.valorModelo = "erroModelo";
                     }
                   }
                   else{
                    $modelo.valorModelo = "erroModelo";
                   }
                  }
       | 'clio' {
                 if(valorMarca.equals("renault")){
                   if(valorSegmento.equals("citadino")){
                     $modelo.valorModelo = "clio";
                   }
                   else{
                    $modelo.valorModelo = "erroModelo";
                   }
                 }
                 else{
                    $modelo.valorModelo = "erroModelo";
                 }
                }
       | 'megane' {
                   if(valorMarca.equals("renault")){
                     if(valorSegmento.equals("utilitario")){
                        $modelo.valorModelo = "megane";
                     }
                     else{
                        $modelo.valorModelo = "erroModelo";
                     }
                   }
                   else{
                    $modelo.valorModelo = "erroModelo";
                   }
                  }
       | 'talisman' {
                     if(valorMarca.equals("renault")){
                       if(valorSegmento.equals("sedan")){
                        $modelo.valorModelo = "talisman";
                       }else{
                        $modelo.valorModelo = "erroModelo";
                       }
                     }
                     else{
                        $modelo.valorModelo = "erroModelo";
                     }
                    }
       | 'kangoo' {
                   if(valorMarca.equals("renault")){
                     if(valorSegmento.equals("comercial")){
                        $modelo.valorModelo = "kangoo";
                     }else{
                        $modelo.valorModelo = "erroModelo";
                     }
                   }else{
                        $modelo.valorModelo = "erroModelo";
                   }
                  }
       | 'espace' {
                   if(valorMarca.equals("renault")){
                     if(valorSegmento.equals("monovolume")){
                        $modelo.valorModelo = "espace";
                     }
                   }else{
                        $modelo.valorModelo = "erroModelo";
                   }
                  }
       | 'captur' {
                   if(valorMarca.equals("renault")){
                     if(valorSegmento.equals("suv")){
                        $modelo.valorModelo = "captur";
                     }else{
                        $modelo.valorModelo = "erroModelo";
                     }
                   }else{
                        $modelo.valorModelo = "erroModelo";
                   }
                  }
       | 'laguna' {
                   if(valorMarca.equals("renault")){
                     if(valorSegmento.equals("coupe")){
                        $modelo.valorModelo = "laguna";
                     }
                     else{
                        $modelo.valorModelo = "erroModelo";
                     }
                   }else{
                        $modelo.valorModelo = "erroModelo";
                   }
                  }
       | 'zoe' {
                if(valorMarca.equals("renault")){
                  if(valorSegmento.equals("eletrico")){
                    $modelo.valorModelo = "zoe";
                  }else{
                    $modelo.valorModelo = "erroModelo";
                  }
                }else{
                    $modelo.valorModelo = "erroModelo";
                }
               }
       | 'duster' {
                   if(valorMarca.equals("dacia")){
                     if(valorSegmento.equals("suv")){
                        $modelo.valorModelo = "duster";
                     }else{
                        $modelo.valorModelo = "erroModelo";
                     }
                   }else{
                        $modelo.valorModelo = "erroModelo";
                   }
                  }
       | 'sandero' {
                    if(valorMarca.equals("dacia")){
                      if(valorSegmento.equals("citadino")){
                        $modelo.valorModelo = "sandero";
                      }else{
                        $modelo.valorModelo = "erroModelo";
                      }
                    }else{
                        $modelo.valorModelo = "erroModelo";
                    }
                   }
       | outraPal {$modelo.valorModelo = "erroModelo";}
       ;

versao[String valorModelo] returns [String valorVersao]
       : '0.9 TCE' {
                    if(valorModelo.equals("twingo") || valorModelo.equals("clio") || valorModelo.equals("captur") || valorModelo.equals("duster") || valorModelo.equals("sandero")){
                        $versao.valorVersao = "0.9 TCE";
                    }else{$versao.valorVersao = "erroVersao";}
                   }
       | '1.2 TCE' {
                    if(valorModelo.equals("megane") || valorModelo.equals("talisman") || valorModelo.equals("laguna")){
                        $versao.valorVersao = "1.2 TCE";
                    }else{$versao.valorVersao = "erroVersao";}
                   }
       | '1.5 DCI' {
                    if(valorModelo.equals("twingo") || valorModelo.equals("clio") || valorModelo.equals("captur") || valorModelo.equals("duster") || valorModelo.equals("sandero") || valorModelo.equals("megane")){
                        $versao.valorVersao = "1.5 DCI";
                    }else{$versao.valorVersao = "erroVersao";}
                   }
       | '1.6 DCI' {
                    if(valorModelo.equals("megane") || valorModelo.equals("talisman") || valorModelo.equals("laguna")){
                        $versao.valorVersao = "1.6 DCI";
                    }else{$versao.valorVersao = "erroVersao";}
                   }
       | 'RS 200' {
                   if(valorModelo.equals("megane") || valorModelo.equals("clio") || valorModelo.equals("laguna")){
                    $versao.valorVersao = "RS 200";
                   }else{$versao.valorVersao = "erroVersao";}
                  }
       | 'RS 220' {
                   if(valorModelo.equals("megane") || valorModelo.equals("clio") || valorModelo.equals("laguna")){
                    $versao.valorVersao = "RS 220";
                   }else{$versao.valorVersao = "erroVersao";}
                  }
       | 'ZE 40' {
                          if(valorModelo.equals("zoe")){
                            $versao.valorVersao = "RS 220";
                          }else{$versao.valorVersao = "erroVersao";}
                         }
       | outraPal {$versao.valorVersao = "erroVersao";}  
       ;

cilindrada[String valorVersao] returns [int valorCilindrada]
           : NUM {
                  $cilindrada.valorCilindrada = $NUM.int;
                  if(valorVersao.equals("0.9 TCE")){if($cilindrada.valorCilindrada != 900){$cilindrada.valorCilindrada = -1;}}
                  else if(valorVersao.equals("1.2 TCE")){if($cilindrada.valorCilindrada != 1200){$cilindrada.valorCilindrada = -1;}}
                  else if(valorVersao.equals("1.5 DCI")){if($cilindrada.valorCilindrada != 1500){$cilindrada.valorCilindrada = -1;}}
                  else if(valorVersao.equals("1.6 DCI")){if($cilindrada.valorCilindrada != 1600){$cilindrada.valorCilindrada = -1;}}
                  else if(valorVersao.equals("RS 200")){if($cilindrada.valorCilindrada != 1600){$cilindrada.valorCilindrada = -1;}}
                  else if(valorVersao.equals("RS 220")){if($cilindrada.valorCilindrada != 1800){$cilindrada.valorCilindrada = -1;}}
                  else if(valorVersao.equals("ZE 40")){if($cilindrada.valorCilindrada != 0){$cilindrada.valorCilindrada = -1;}}
                 }
           ;

combustivel[String valorVersao] returns [String valorCombustivel]
            : 'gasolina' {
                          if(valorVersao.equals("0.9 TCE") || valorVersao.equals("1.2 TCE") || valorVersao.equals("RS 200") || valorVersao.equals("RS 220")){$combustivel.valorCombustivel = "gasolina";}
                          else{$combustivel.valorCombustivel = "erroCombustivel";}
                         }
            | 'gasoleo' {
                         if(valorVersao.equals("1.5 DCI") || valorVersao.equals("1.6 DCI")){$combustivel.valorCombustivel = "gasoleo";}
                         else{$combustivel.valorCombustivel = "erroCombustivel";} 
                        }
            | 'eletrico' {
                          if(valorVersao.equals("ZE 40")){{$combustivel.valorCombustivel = "eletrico";}}
                          else{$combustivel.valorCombustivel = "erroCombustivel";}
                         }
            | outraPal {$combustivel.valorCombustivel = "erroCombustivel";}
            ;

preco returns [int valorPreco] 
    : NUM {$preco.valorPreco = $NUM.int;}
    ;

ano returns [int valorAno]
    : NUM {$ano.valorAno = $NUM.int;}
    ;

potencia[String valorVersao] returns [int valorPotencia] 
    : NUM {
           $potencia.valorPotencia = $NUM.int;
           if(valorVersao.equals("0.9 TCE")){if($potencia.valorPotencia != 90){$potencia.valorPotencia = -1;}}
           else if(valorVersao.equals("1.2 TCE")){if($potencia.valorPotencia != 95){$potencia.valorPotencia = -1;}}
           else if(valorVersao.equals("1.5 DCI")){if($potencia.valorPotencia != 90){if($potencia.valorPotencia != 110)$potencia.valorPotencia = -1;}}
           else if(valorVersao.equals("1.6 DCI")){if($potencia.valorPotencia != 135){$potencia.valorPotencia = -1;}}
           else if(valorVersao.equals("RS 200")){if($potencia.valorPotencia != 200){$potencia.valorPotencia = -1;}}
           else if(valorVersao.equals("RS 220")){if($potencia.valorPotencia!= 220){$potencia.valorPotencia = -1;}}
           else if(valorVersao.equals("ZE 40")){if($potencia.valorPotencia != 108){$potencia.valorPotencia = -1;}}
          }
    ;

extras returns [Caracteristica valorExtras] 
    : cor {String cor = $cor.valorCor;} 
      ',' 
      caixa {String caixa = $caixa.valorCaixa;} 
      ',' 
      portas {String portas = $portas.valorPortas;} 
      ',' 
      tracao {
              String tracao = $tracao.valorTracao; 
              if(tracao.equals("erroTracao")){System.out.println("Erro a introduzir caracteristicas: Tracao não autorizada!!!"); $extras.valorExtras = new Caracteristica("","","","");}
              else if(cor.equals("erroCor")){System.out.println("Erro a introduzir caracteristicas: Cor não autorizada!!!"); $extras.valorExtras = new Caracteristica("","","","");;}
              else if(portas.equals("erroPortas")){System.out.println("Erro a introduzir caracteristicas: Portas não autorizadas!!!");$extras.valorExtras = new Caracteristica("","","","");;}
              else if(caixa.equals("erroCaixa")){System.out.println("Erro a introduzir caracteristicas: Caixa não autorizada!!!");$extras.valorExtras = new Caracteristica("","","","");;}
              else{$extras.valorExtras = new Caracteristica(cor,caixa,portas,tracao);}
             }
    ;

cor returns [String valorCor]
    : 'cinza claro' {$cor.valorCor = "cinza claro";}
    | 'preto' {$cor.valorCor = "preto";}
    | 'cinza escuro' {$cor.valorCor = "cinza escuro";}
    | 'branco' {$cor.valorCor = "branco";}
    | 'azul' {$cor.valorCor = "azul";}
    | 'vermelho' {$cor.valorCor = "vermelho";}
    | 'amarelo' {$cor.valorCor = "amarelo";}
    | outraPal {$cor.valorCor = "erroCor";}
    ;

caixa returns [String valorCaixa]
      : 'automatico' {$caixa.valorCaixa = "automatico";}
      | 'manual' {$caixa.valorCaixa = "manual";}
      | 'semi' {$caixa.valorCaixa = "semi";}
      | outraPal {$caixa.valorCaixa = "erroCaixa";}
      ;

portas returns [String valorPortas]
       : '1-3' {$portas.valorPortas = "1-3";}
       | '4-5' {$portas.valorPortas = "4-5";}
       | outraPal {$portas.valorPortas = "erroPortas";}
       ;

tracao returns [String valorTracao]
       : 'dianteira' {$tracao.valorTracao = "dianteira";}
       | 'traseira' {$tracao.valorTracao = "traseira";}
       | 'integral' {$tracao.valorTracao = "integral";}
       | outraPal {$tracao.valorTracao = "erroTracao";}
       ;





perguntas[HashMap<Integer,Carro>listaVeiculos] returns [String valorPergunta, String valorResposta]
          : (pergunta[$perguntas.listaVeiculos] '?' {
                                                        $perguntas.valorPergunta = $pergunta.valorPergunta;
                                                        $perguntas.valorResposta = $pergunta.valorResposta;
                                                        System.out.println("*** Pergunta: *** \n" +  $perguntas.valorPergunta);
                                                        System.out.println("*** Resposta: *** \n" + $perguntas.valorResposta);
                                                       
                                                    
                                                     }
                
            )+
          ;

pergunta [HashMap<Integer,Carro>listaVeiculos] returns [HashMap<Integer,Carro>listaRespostas, String valorPergunta, String valorResposta]
@init{
    $pergunta.valorResposta = "\n";
}
        : perguntaSingular[$pergunta.listaVeiculos] {   String tipo = $perguntaSingular.tipo;
                                                        String operadorSingular = $perguntaSingular.valorOperadorSingular;
                                                        $pergunta.valorPergunta = $perguntaSingular.valorPergunta;
                                                        
                                                        if(tipo.equals("erroTipo")){$pergunta.valorResposta = "Erro na pergunta: Sem resposta!";}
                                                        else if(operadorSingular.equals("erroOperadorSingular")){$pergunta.valorResposta = "Erro na pergunta: Sem resposta!"; $pergunta.valorPergunta = "Erro na pergunta: Operador errado!!!";}
                                                        else{
                                                        $pergunta.listaRespostas = $perguntaSingular.listaRespostas;
                                                                                            
                                                        for(Integer i : $pergunta.listaRespostas.keySet()){
                                                            Carro car = $pergunta.listaRespostas.get(i);
                                                            $pergunta.valorResposta = $pergunta.valorResposta + car.toString() + "\n" + "***" + "\n";
                                                        }
                                                       }          
                                                      }
         | perguntaPlural[$pergunta.listaVeiculos] {
                                                       $pergunta.listaRespostas = $perguntaPlural.listaRespostas;
                                                       $pergunta.valorPergunta = $perguntaPlural.valorPergunta;
                                                       String operadorPlural = $perguntaPlural.valorOperadorPlural;
                                                       String tipo = $perguntaPlural.tipo;

                                                       if(tipo.equals("erroTipo")){$pergunta.valorResposta = "Erro na pergunta: Sem resposta!";}
                                                       else if(operadorPlural.equals("erroOperadorPlural")){$pergunta.valorResposta = "Erro na pergunta: Sem resposta!"; $pergunta.valorPergunta = "Erro na pergunta: Operador errado!!!";}
                                                       else{
                                                        $pergunta.listaRespostas = $perguntaPlural.listaRespostas;
                                                        for(Integer i : $pergunta.listaRespostas.keySet()){
                                                            Carro car = $pergunta.listaRespostas.get(i);
                                                            $pergunta.valorResposta = $pergunta.valorResposta + car.toString() + "\n" + "*** Fim da Resposta ***" + "\n";
                                                        }
                                                       }
                                                    }
         ;

perguntaSingular[HashMap<Integer,Carro>listaVeiculos] returns [String valorOperadorSingular, String tipo, String valor, String op, int primeiro, int segundo, HashMap<Integer,Carro> listaRespostas, String valorPergunta]  
@init{ $perguntaSingular.listaRespostas = new HashMap<Integer,Carro>();} 
                   : '(' operadorSingular {$perguntaSingular.valorOperadorSingular = $operadorSingular.valorOperadorSingular;} 
                   ',' '(' 
                   palavraChave {$perguntaSingular.tipo = $palavraChave.tipo;
                                 $perguntaSingular.valor = $palavraChave.valor;
                                 $perguntaSingular.op = $palavraChave.op;
                                 $perguntaSingular.primeiro = $palavraChave.primeiro;
                                 $perguntaSingular.segundo = $palavraChave.segundo;
                                 
                                 if($perguntaSingular.tipo.equals("erroTipo")){$perguntaSingular.valorPergunta = "Erro: Pergunta não é válida!";}
                                 
                                 else{

                                  for(Integer i : $perguntaSingular.listaVeiculos.keySet()){
                                    Carro car = $perguntaSingular.listaVeiculos.get(i);
                                    if($perguntaSingular.tipo.equals("segmento")){
                                        if(car.getSegmento().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("marca")){
                                        if(car.getMarca().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("modelo")){
                                        if(car.getModelo().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("versao")){
                                        if(car.getVersao().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("combustivel")){
                                        if(car.getCombustivel().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("cor")){
                                        if(car.getCaracteristica().getCor().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("caixa")){
                                        if(car.getCaracteristica().getCaixa().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("portas")){
                                        if(car.getCaracteristica().getPortas().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("tracao")){
                                        if(car.getCaracteristica().getTraccao().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("cilindrada")){
                                        if($perguntaSingular.op.equals("maior")){
                                            if(car.getCilindrada() > $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("menor")){
                                            if(car.getCilindrada() < $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("igual")){
                                            if(car.getCilindrada() == $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("entre")){
                                            if(car.getCilindrada() > $perguntaSingular.primeiro && car.getCilindrada() < $perguntaSingular.segundo){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaSingular.tipo.equals("preco")){
                                        if($perguntaSingular.op.equals("maior")){
                                            if(car.getPreco() > $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("menor")){
                                            if(car.getPreco() < $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("igual")){
                                            if(car.getPreco() == $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("entre")){
                                            if(car.getPreco() > $perguntaSingular.primeiro && car.getPreco() < $perguntaSingular.segundo){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaSingular.tipo.equals("ano")){
                                        if($perguntaSingular.op.equals("maior")){
                                            if(car.getAno() > $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("menor")){
                                            if(car.getAno() < $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("igual")){
                                            if(car.getAno() == $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("entre")){
                                            if(car.getAno() > $perguntaSingular.primeiro && car.getAno() < $perguntaSingular.segundo){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaSingular.tipo.equals("potencia")){
                                        if($perguntaSingular.op.equals("maior")){
                                            if(car.getPotencia() > $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("menor")){
                                            if(car.getPotencia() < $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("igual")){
                                            if(car.getPotencia() == $perguntaSingular.primeiro){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaSingular.op.equals("entre")){
                                            if(car.getPotencia() > $perguntaSingular.primeiro && car.getPotencia() < $perguntaSingular.segundo){
                                                $perguntaSingular.listaRespostas.put(i,car);
                                            }
                                        } 
                                    }
                                  }
                                  
                                  if($perguntaSingular.valorOperadorSingular.equals("Qual")){
                                     if($perguntaSingular.tipo.equals("segmento") || $perguntaSingular.tipo.equals("marca") || $perguntaSingular.tipo.equals("modelo") || $perguntaSingular.tipo.equals("combustivel") || $perguntaSingular.tipo.equals("cor") || $perguntaSingular.tipo.equals("caixa") || $perguntaSingular.tipo.equals("portas") || $perguntaSingular.tipo.equals("tracao")){
                                        $perguntaSingular.valorPergunta = "Qual é o carro cujo " + $perguntaSingular.tipo + " é " + $perguntaSingular.valor + " ?"; 
                                     }else{
                                        if($perguntaSingular.op.equals("maior") || $perguntaSingular.op.equals("menor")){
                                            $perguntaSingular.valorPergunta = "Qual é o carro cujo " + $perguntaSingular.tipo + " é " + $perguntaSingular.op + " que " + $perguntaSingular.primeiro + " ?";
                                        }
                                        if($perguntaSingular.op.equals("entre")){
                                            $perguntaSingular.valorPergunta = "Qual é o carro cujo " + $perguntaSingular.tipo + " é " + $perguntaSingular.op + " " + $perguntaSingular.primeiro + " e " + $perguntaSingular.primeiro + " ?";
                                        }
                                        if($perguntaSingular.op.equals("igual")){
                                            $perguntaSingular.valorPergunta = "Qual é o carro cujo " + $perguntaSingular.tipo + " é " + $perguntaSingular.op + " a " + $perguntaSingular.primeiro + " ?";
                                        }
                                     }
                                  }else if($perguntaSingular.valorOperadorSingular.equals("Quanto")){
                                        $perguntaSingular.valorPergunta = "Quanto custa um veículo cujo " + $perguntaSingular.tipo + " seja " + $perguntaSingular.valor + " ?"; 
                                  }
                                   else if($perguntaSingular.valorOperadorSingular.equals("Que")){
                                        if($perguntaSingular.tipo.equals("segmento") || $perguntaSingular.tipo.equals("marca") || $perguntaSingular.tipo.equals("modelo") || $perguntaSingular.tipo.equals("combustivel") || $perguntaSingular.tipo.equals("cor") || $perguntaSingular.tipo.equals("caixa") || $perguntaSingular.tipo.equals("portas") || $perguntaSingular.tipo.equals("tracao")){
                                            $perguntaSingular.valorPergunta = "Que veículo tem como " + $perguntaSingular.tipo + " o valor de " + $perguntaSingular.valor + " ?"; 
                                        }else{
                                            if($perguntaSingular.op.equals("maior") || $perguntaSingular.op.equals("menor")){
                                                $perguntaSingular.valorPergunta = "Que veículo tem como " + $perguntaSingular.tipo + " um valor " + $perguntaSingular.op + " que " + $perguntaSingular.primeiro + " ?";
                                            }
                                            if($perguntaSingular.op.equals("entre")){
                                                $perguntaSingular.valorPergunta = "Que veículo tem como " + $perguntaSingular.tipo + " um valor " + $perguntaSingular.op + " " + $perguntaSingular.primeiro + " e " + $perguntaSingular.primeiro + " ?";
                                            }
                                            if($perguntaSingular.op.equals("igual")){
                                                $perguntaSingular.valorPergunta = "Que veículo tem como " + $perguntaSingular.tipo + " um valor " + $perguntaSingular.op + " a " + $perguntaSingular.primeiro + " ?";
                                            }
                                        }
                                  }    
                                 } 
                                }
                    ')' ')'
                 ;

perguntaPlural[HashMap<Integer,Carro>listaVeiculos] returns [String valorOperadorPlural, String tipo, String valor, String op, int primeiro, int segundo, HashMap<Integer,Carro> listaRespostas, String valorPergunta, int continuar]
@init{
    $perguntaPlural.continuar = 0;
    $perguntaPlural.listaRespostas = new HashMap<Integer,Carro>();
}
               : '(' operadorPlural {
                                     $perguntaPlural.valorOperadorPlural = $operadorPlural.valorOperadorPlural;
                                     if($perguntaPlural.valorOperadorPlural.equals("Quais")){
                                        $perguntaPlural.valorPergunta = "Quais são os veículos cujo " ;
                                     }
                                     else if($perguntaPlural.valorOperadorPlural.equals("Quantos")){
                                        $perguntaPlural.valorPergunta = "Quantos veículos tem como " ;
                                     }
                                     else{$perguntaPlural.continuar = 1;}
                                    }
                                    
                  ',' '[' '(' 
                  palavraChave {
                                 $perguntaPlural.tipo = $palavraChave.tipo;
                                 $perguntaPlural.valor = $palavraChave.valor;
                                 $perguntaPlural.op = $palavraChave.op;
                                 $perguntaPlural.primeiro = $palavraChave.primeiro;
                                 $perguntaPlural.segundo = $palavraChave.segundo;
                                 
                                 if($perguntaPlural.tipo.equals("erroTipo")){$perguntaPlural.valorPergunta = "Erro: Pergunta não é válida!"; $perguntaPlural.continuar = 1;}
                                 else{ 
                                    for(Integer i : $perguntaPlural.listaVeiculos.keySet()){
                                    Carro car = $perguntaPlural.listaVeiculos.get(i);
                                    if($perguntaPlural.tipo.equals("segmento")){
                                        if(car.getSegmento().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("marca")){
                                        if(car.getMarca().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("modelo")){
                                        if(car.getModelo().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("versao")){
                                        if(car.getVersao().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("combustivel")){
                                        if(car.getCombustivel().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("cor")){
                                        if(car.getCaracteristica().getCor().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("caixa")){
                                        if(car.getCaracteristica().getCaixa().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("portas")){
                                        if(car.getCaracteristica().getPortas().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("tracao")){
                                        if(car.getCaracteristica().getTraccao().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("cilindrada")){
                                        if($perguntaPlural.op.equals("maior")){
                                            if(car.getCilindrada() > $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("menor")){
                                            if(car.getCilindrada() < $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("igual")){
                                            if(car.getCilindrada() == $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("entre")){
                                            if(car.getCilindrada() > $perguntaPlural.primeiro && car.getCilindrada() < $perguntaPlural.segundo){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaPlural.tipo.equals("preco")){
                                        if($perguntaPlural.op.equals("maior")){
                                            if(car.getPreco() > $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("menor")){
                                            if(car.getPreco() < $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("igual")){
                                            if(car.getPreco() == $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("entre")){
                                            if(car.getPreco() > $perguntaPlural.primeiro && car.getPreco() < $perguntaPlural.segundo){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaPlural.tipo.equals("ano")){
                                        if($perguntaPlural.op.equals("maior")){
                                            if(car.getAno() > $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("menor")){
                                            if(car.getAno() < $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("igual")){
                                            if(car.getAno() == $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("entre")){
                                            if(car.getAno() > $perguntaPlural.primeiro && car.getAno() < $perguntaPlural.segundo){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaPlural.tipo.equals("potencia")){
                                        if($perguntaPlural.op.equals("maior")){
                                            if(car.getPotencia() > $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("menor")){
                                            if(car.getPotencia() < $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("igual")){
                                            if(car.getPotencia() == $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("entre")){
                                            if(car.getPotencia() > $perguntaPlural.primeiro && car.getPotencia() < $perguntaPlural.segundo){
                                                $perguntaPlural.listaRespostas.put(i,car);
                                            }
                                        } 
                                    }
                                  }


                                    if($perguntaPlural.tipo.equals("segmento") || $perguntaPlural.tipo.equals("marca") || $perguntaPlural.tipo.equals("modelo") || $perguntaPlural.tipo.equals("combustivel") || $perguntaPlural.tipo.equals("cor") || $perguntaPlural.tipo.equals("caixa") || $perguntaPlural.tipo.equals("portas") || $perguntaPlural.tipo.equals("tracao")){
                                            if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo + " é " + $perguntaPlural.valor;}
                                            if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo +  " o valor de  " + $perguntaPlural.valor;}
                                        }else{
                                            if($perguntaPlural.op.equals("maior") || $perguntaPlural.op.equals("menor")){
                                                if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo + " é " + $perguntaPlural.op + " que " + $perguntaPlural.primeiro;}
                                                if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo +  " um valor " + $perguntaPlural.op  + " que " + $perguntaPlural.primeiro ;}
                                            }
                                            if($perguntaPlural.op.equals("entre")){
                                                if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo + " é um valor " + $perguntaPlural.op + " " + $perguntaPlural.primeiro + " e " + $perguntaPlural.segundo;}
                                                if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo +  " um valor " + $perguntaPlural.op  + " " + $perguntaPlural.primeiro + " e " + $perguntaPlural.segundo ;}
                                            }
                                            if($perguntaPlural.op.equals("igual")){
                                                if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo + " é um valor" + $perguntaPlural.op + " a " + $perguntaPlural.primeiro ;}
                                                if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo +  " um valor " + $perguntaPlural.op  + " a " + $perguntaPlural.primeiro;}  
                                            }
                                        }
                                    
                                    }
                                }
                               
                  ')' (',' '(' palavraChave {
                                 
                                 if($perguntaPlural.continuar == 0){
                                    
                                    $perguntaPlural.tipo = $palavraChave.tipo;
                                    $perguntaPlural.valor = $palavraChave.valor;
                                    $perguntaPlural.op = $palavraChave.op;
                                    $perguntaPlural.primeiro = $palavraChave.primeiro;
                                    $perguntaPlural.segundo = $palavraChave.segundo;
                                  
                                    if($perguntaPlural.tipo.equals("erroTipo")){$perguntaPlural.valorPergunta = "Erro: Pergunta não é válida!"; $perguntaPlural.continuar = 1;}
                                    else{
                                    
                                    for(Integer i : $perguntaPlural.listaRespostas.keySet()){
                                     Carro car = $perguntaPlural.listaRespostas.get(i);
                                     if($perguntaPlural.tipo.equals("segmento")){
                                         if(!(car.getSegmento().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("marca")){
                                         if(!(car.getMarca().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("modelo")){
                                         if(!(car.getModelo().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("versao")){
                                         if(!(car.getVersao().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("combustivel")){
                                         if(!(car.getCombustivel().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("cor")){
                                         if(!(car.getCaracteristica().getCor().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("caixa")){
                                         if(!(car.getCaracteristica().getCaixa().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("portas")){
                                         if(!(car.getCaracteristica().getPortas().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("tracao")){
                                         if(!(car.getCaracteristica().getTraccao().equals($perguntaPlural.valor))){
                                             $perguntaPlural.listaRespostas.remove(i,car);
                                         }
                                     }
                                     if($perguntaPlural.tipo.equals("cilindrada")){
                                         if($perguntaPlural.op.equals("maior")){
                                             if(!(car.getCilindrada() > $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("menor")){
                                             if(!(car.getCilindrada() < $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("igual")){
                                             if(!(car.getCilindrada() == $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("entre")){
                                             if(!(car.getCilindrada() > $perguntaPlural.primeiro && car.getCilindrada() < $perguntaPlural.segundo)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         } 
                                     }
                                     if($perguntaPlural.tipo.equals("preco")){
                                         if($perguntaPlural.op.equals("maior")){
                                             if(!(car.getPreco() > $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("menor")){
                                             if(!(car.getPreco() < $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("igual")){
                                             if(!(car.getPreco() == $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("entre")){
                                             if(!(car.getPreco() > $perguntaPlural.primeiro && car.getPreco() < $perguntaPlural.segundo)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         } 
                                     }
                                     if($perguntaPlural.tipo.equals("ano")){
                                         if($perguntaPlural.op.equals("maior")){
                                             if(!(car.getAno() > $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("menor")){
                                             if(!(car.getAno() < $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("igual")){
                                             if(!(car.getAno() == $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("entre")){
                                             if(!(car.getAno() > $perguntaPlural.primeiro && car.getAno() < $perguntaPlural.segundo)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         } 
                                     }
                                     if($perguntaPlural.tipo.equals("potencia")){
                                         if($perguntaPlural.op.equals("maior")){
                                             if(!(car.getPotencia() > $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("menor")){
                                             if(!(car.getPotencia() < $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("igual")){
                                             if(!(car.getPotencia() == $perguntaPlural.primeiro)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         }
                                         else if ($perguntaPlural.op.equals("entre")){
                                             if(!(car.getPotencia() > $perguntaPlural.primeiro && car.getPotencia() < $perguntaPlural.segundo)){
                                                 $perguntaPlural.listaRespostas.remove(i,car);
                                             }
                                         } 
                                     }
                                   }


                                     if($perguntaPlural.tipo.equals("segmento") || $perguntaPlural.tipo.equals("marca") || $perguntaPlural.tipo.equals("modelo") || $perguntaPlural.tipo.equals("combustivel") || $perguntaPlural.tipo.equals("cor") || $perguntaPlural.tipo.equals("caixa") || $perguntaPlural.tipo.equals("portas") || $perguntaPlural.tipo.equals("tracao")){
                                             if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " , e ainda  cujo " + $perguntaPlural.tipo + " é " + $perguntaPlural.valor;}
                                             if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " , e ainda tem como " + $perguntaPlural.tipo +  " o valor de  " + $perguntaPlural.valor;}
                                         }else{
                                             if($perguntaPlural.op.equals("maior") || $perguntaPlural.op.equals("menor")){
                                                 if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " , e ainda  cujo " + $perguntaPlural.tipo + " é " + $perguntaPlural.op + " que " + $perguntaPlural.primeiro;}
                                                 if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " , e ainda tem como " + $perguntaPlural.tipo +  " um valor " + $perguntaPlural.op  + " que " + $perguntaPlural.primeiro;}
                                             }
                                             if($perguntaPlural.op.equals("entre")){
                                                 if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " , e ainda  cujo " + $perguntaPlural.tipo + " é um valor " + $perguntaPlural.op + " " + $perguntaPlural.primeiro + " e " + $perguntaPlural.segundo;}
                                                 if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " , e ainda tem como " + $perguntaPlural.tipo +  " um valor " + $perguntaPlural.op  + " " + $perguntaPlural.primeiro + " e " + $perguntaPlural.segundo ;}
                                             }
                                             if($perguntaPlural.op.equals("igual")){
                                                 if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta +  " , e ainda  cujo " + $perguntaPlural.tipo + " é um valor " + $perguntaPlural.op + " a " + $perguntaPlural.primeiro ;}
                                                 if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " , e ainda tem como " + $perguntaPlural.tipo +  " um valor " + $perguntaPlural.op  + " a " + $perguntaPlural.primeiro;}  
                                             }
                                         }
                                    }
                                 
                                }
                               }
                  ')')+ 
                  ']' ')' {$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " ?";}
               ;
                 
operadorSingular returns [String valorOperadorSingular]
                 : 'Qual' {$operadorSingular.valorOperadorSingular = "Qual";}
                 | 'Quanto' {$operadorSingular.valorOperadorSingular = "Quanto";}
                 | 'Que' {$operadorSingular.valorOperadorSingular = "Que";}
                 | outraPal {$operadorSingular.valorOperadorSingular = "erroOperadorSingular";}
                 ;

operadorPlural returns [String valorOperadorPlural]
               : 'Quais' {$operadorPlural.valorOperadorPlural = "Quais";}
               | 'Quantos' {$operadorPlural.valorOperadorPlural = "Quantos";}
               | outraPal {$operadorPlural.valorOperadorPlural = "erroOperadorPlural";}
               ;

palavraChave returns [String tipo, String valor, String op, int primeiro, int segundo]
             : 'segmento' ',' segmento {
                                        $palavraChave.tipo = "segmento"; 
                                        $palavraChave.valor = $segmento.valorSegmento; 
                                        $palavraChave.op = "vazio"; 
                                        $palavraChave.primeiro = -1; 
                                        $palavraChave.segundo = -2;
                                        if($palavraChave.valor.equals("erroSegmento")){
                                          $palavraChave.tipo = "erroSegmento";
                                          $palavraChave.valor = "vazio";
                                        }
                                       }
             | 'marca' ',' marca {
                                  $palavraChave.tipo = "marca"; 
                                  $palavraChave.valor = $marca.valorMarca; 
                                  $palavraChave.op = "vazio"; 
                                  $palavraChave.primeiro = -1; 
                                  $palavraChave.segundo = -2;
                                  if($palavraChave.valor.equals("erroMarca")){
                                     $palavraChave.tipo = "erroMarca";
                                     $palavraChave.valor = "vazio";
                                  }
                                 }
             | 'modelo' ',' descobreModelo {
                                    $palavraChave.tipo = "modelo"; 
                                    $palavraChave.valor = $descobreModelo.valorModelo; 
                                    $palavraChave.op = "vazio"; 
                                    $palavraChave.primeiro = -1; 
                                    $palavraChave.segundo = -2;
                                    if($palavraChave.valor.equals("erroModelo")){
                                      $palavraChave.tipo = "erroModelo";
                                      $palavraChave.valor = "vazio";
                                    }
                                   }
             | 'cilindrada' ',' opcoes {
                                        $palavraChave.tipo = "cilindrada"; 
                                        $palavraChave.valor = "vazio" ; 
                                        $palavraChave.op = $opcoes.op; 
                                        $palavraChave.primeiro = $opcoes.primeiro; 
                                        $palavraChave.segundo = $opcoes.segundo;
                                       }
             | 'combustivel' ',' descobreCombustivel {
                                              $palavraChave.tipo = "combustivel"; 
                                              $palavraChave.valor = $descobreCombustivel.valorCombustivel; 
                                              $palavraChave.op = "vazio"; 
                                              $palavraChave.primeiro = -1; 
                                              $palavraChave.segundo = -2;
                                              if($palavraChave.valor.equals("erroCombustivel")){
                                                $palavraChave.tipo = "erroCombustivel";
                                                $palavraChave.valor = "vazio";
                                              }
                                             }
             | 'preco' ',' opcoes {
                                   $palavraChave.tipo = "preco"; 
                                   $palavraChave.valor = "vazio" ; 
                                   $palavraChave.op = $opcoes.op; 
                                   $palavraChave.primeiro = $opcoes.primeiro; 
                                   $palavraChave.segundo = $opcoes.segundo;
                                  }
             | 'ano' ',' opcoes {
                                 $palavraChave.tipo = "ano"; 
                                 $palavraChave.valor = "vazio" ; 
                                 $palavraChave.op = $opcoes.op; 
                                 $palavraChave.primeiro = $opcoes.primeiro; 
                                 $palavraChave.segundo = $opcoes.segundo;
                                }
             | 'potencia' ',' opcoes {
                                      $palavraChave.tipo = "potencia";
                                      $palavraChave.valor = "vazio" ; 
                                      $palavraChave.op = $opcoes.op; 
                                      $palavraChave.primeiro = $opcoes.primeiro; 
                                      $palavraChave.segundo = $opcoes.segundo;
                                     }
             | 'cor' ',' cor {
                              $palavraChave.tipo = "cor";
                              $palavraChave.valor = $cor.valorCor; 
                              $palavraChave.op = "vazio"; 
                              $palavraChave.primeiro = -1; 
                              $palavraChave.segundo = -2;
                              if($palavraChave.valor.equals("erroCor")){
                                $palavraChave.tipo = "erroCor";
                                $palavraChave.valor = "vazio";
                              }
                             }
             | 'caixa' ',' caixa {
                                  $palavraChave.tipo = "caixa"; 
                                  $palavraChave.valor = $caixa.valorCaixa; 
                                  $palavraChave.op = "vazio"; 
                                  $palavraChave.primeiro = -1; 
                                  $palavraChave.segundo = -2;
                                  if($palavraChave.valor.equals("erroCaixa")){
                                     $palavraChave.tipo = "erroCaixa";
                                     $palavraChave.valor = "vazio";
                                  }
                                 }
             | 'portas' ',' portas {
                                    $palavraChave.tipo = "portas"; 
                                    $palavraChave.valor = $portas.valorPortas; 
                                    $palavraChave.op = "vazio"; 
                                    $palavraChave.primeiro = -1; 
                                    $palavraChave.segundo = -2;
                                    if($palavraChave.valor.equals("erroPortas")){
                                       $palavraChave.tipo = "erroPortas";
                                       $palavraChave.valor = "vazio";
                                    }
                                   }
             | 'tracao' ',' tracao {
                                    $palavraChave.tipo = "tracao"; 
                                    $palavraChave.valor = $tracao.valorTracao; 
                                    $palavraChave.op = "vazio"; 
                                    $palavraChave.primeiro = -1; 
                                    $palavraChave.segundo = -2;
                                    if($palavraChave.valor.equals("erroTracao")){
                                      $palavraChave.tipo = "erroTracao";
                                      $palavraChave.valor = "vazio";
                                    }
                                   }
             | outraPal ',' outraPal {
                                      $palavraChave.tipo = "erroTipo";
                                      $palavraChave.valor = "erroValor";
                                      $palavraChave.op = "vazio"; 
                                      $palavraChave.primeiro = -1; 
                                      $palavraChave.segundo = -2;
                                     }
             ;

opcoes returns [String op, int primeiro, int segundo]
       : '(' '>' ',' NUM {$opcoes.op = "maior"; $opcoes.primeiro = $NUM.int; $opcoes.segundo = -1;} ')'
       | '(' '<' ',' NUM {$opcoes.op = "menor"; $opcoes.primeiro = $NUM.int; $opcoes.segundo = -1;} ')'
       | '(' '-+' ',' NUM {$opcoes.primeiro = $NUM.int;} ',' NUM {$opcoes.segundo = $NUM.int; $opcoes.op = "entre";} ')'
       | '(' '=' ',' NUM {$opcoes.op = "igual"; $opcoes.primeiro = $NUM.int; $opcoes.segundo = -1;} ')'
       ;

descobreModelo returns [String valorModelo]
       : 'twingo' {$descobreModelo.valorModelo = "twingo";}
       | 'clio' {$descobreModelo.valorModelo = "clio";}
       | 'megane' {$descobreModelo.valorModelo = "megane";}
       | 'talisman' {$descobreModelo.valorModelo = "talisman";}
       | 'kangoo' {$descobreModelo.valorModelo = "kangoo";}
       | 'espace' {$descobreModelo.valorModelo = "espace";}
       | 'captur' {$descobreModelo.valorModelo = "captur";}
       | 'laguna' {$descobreModelo.valorModelo = "laguna";}
       | 'zoe' {$descobreModelo.valorModelo = "zoe";}
       | 'duster' {$descobreModelo.valorModelo = "duster";}
       | 'sandero' {$descobreModelo.valorModelo = "sandero";}
       | outraPal {$descobreModelo.valorModelo = "erroModelo";}
       ;

descobreCombustivel returns [String valorCombustivel]
            : 'gasolina' {$descobreCombustivel.valorCombustivel = "gasolina";}
            | 'gasoleo' {$descobreCombustivel.valorCombustivel = "gasoleo";}
            | 'eletrico' {$descobreCombustivel.valorCombustivel = "eletrico";}
            | 'hibrido' {$descobreCombustivel.valorCombustivel = "hibrido";}
            | OUTRAPAL {$descobreCombustivel.valorCombustivel = "erroCombustivel";}
            ;

outraPal : (PAL|CHAR|NUM)+
         ;

NUM : ('0'..'9')+
    ;

PAL : [a-zA-Z]+
    ;

CHAR : [.;-]
     ;

WS : [ \t\r\n]  -> skip
   ;



