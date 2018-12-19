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

sistema returns [int totalVeiculos, HashMap<Integer,Carro> listaVeiculos]
        : baseConhecimento {
                            $sistema.totalVeiculos = $baseConhecimento.totalVeiculos;
                            $sistema.listaVeiculos = $baseConhecimento.listaVeiculos;
                            for(Integer i : $sistema.listaVeiculos.keySet()){
                               System.out.println(i + "->" + $sistema.listaVeiculos.get(i).toString());
                            }
                           } 
          '---' perguntas[$sistema.listaVeiculos]
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


perguntas[HashMap<Integer,Carro>listaVeiculos] returns [String valorPergunta, String valorResposta]
          : (pergunta[$perguntas.listaVeiculos] '?')+
          ;

pergunta [HashMap<Integar,Carro>listaVeiculos] returns [HashMap<Integer,Carro>listaRespostas, String valorPergunta, String valorResposta]
@init{
    $pergunta.valorResposta = "\n";
}
        : perguntaSingular[$pergunta.listaVeiculos] {
                                                        $pergunta.listaRespostas = $perguntaSingular.listaRespostas;
                                                        $pergunta.valorPergunta = $perguntaSingular.valorPergunta;
                                                        
                                                        for(Integer i : $pergunta.listaRespostas.keySet()){
                                                            Carro car = $pergunta.listaRespostas.get(i);
                                                            $pergunta.valorResposta = $pergunta.valorResposta + car.toString + "\n" + "***" + "\n";
                                                        }
                                                        
                                                      }
         | perguntaPlural[$pergunta.listaVeiculos] {
                                                       $pergunta.listaRespostas = $perguntaPlural.listaRespostas;
                                                       $pergunta.valorPergunta = $perguntaPlural.valorPergunta;
                                                        
                                                        for(Integer i : $pergunta.listaRespostas.keySet()){
                                                            Carro car = $pergunta.listaRespostas.get(i);
                                                            $pergunta.valorResposta = $pergunta.valorResposta + car.toString + "\n" + "***" + "\n";
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
                                 
                                  for(Integer i : $perguntaSingular.listaVeiculos.keySet()){
                                    Carro car = $perguntaSingular.listaVeiculos.get(i);
                                    if($perguntaSingular.tipo.equals("segmento"){
                                        if(car.getSegmento().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("marca"){
                                        if(car.getMarca().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("modelo"){
                                        if(car.getModelo().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("versao"){
                                        if(car.getVersao().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("combustivel"){
                                        if(car.getCombustivel().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("cor"){
                                        if(car.getCaracteristica().getCor().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("caixa"){
                                        if(car.getCaracteristica().getCaixa().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("portas"){
                                        if(car.getCaracteristica().getPortas().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("tracao"){
                                        if(car.getCaracteristica().getTracao().equals($perguntaSingular.valor)){
                                            $perguntaSingular.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaSingular.tipo.equals("cilindrada"){
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
                                    if($perguntaSingular.tipo.equals("preco"){
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
                                    if($perguntaSingular.tipo.equals("ano"){
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
                                    if($perguntaSingular.tipo.equals("potencia"){
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
                                  
                                  if($perguntaSingular.valorOperadorSingular.equals("Qual"){
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
                                  }else if($perguntaSingular.valorOperadorSingular.equals("Quanto"){
                                        $perguntaSingular.valorPergunta = "Quanto custa um veículo cujo " + $perguntaSingular.tipo + " seja " + $perguntaSingular.valor + " ?"; 
                                  }
                                   else if($perguntaSingular.valorOperadorSingular.equals("Que"){
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
                    ')' ')'
                 ;

perguntaPlural[HashMap<Integer,Carro>listaVeiculos] returns [String valorOperadorPlural, String tipo, String valor, String op, int primeiro, int segundo, HashMap<Integer,Carro> listaRespostas, String valorPergunta]
@init{
    int total = 0;
    $perguntaPlural.listaRespostas = new HashMap<Integer,Carro>();
}
               : '(' operadorPlural {
                                     $perguntaPlural.valorOperadorPlural = $operadorPlural.valorOperadorPlural;
                                     if($perguntaPlural.valorOperadorPlural.equals("Quais"){
                                        $perguntaPlural.valorPergunta = "Quais são os veículos cujo " ;
                                     }
                                     if($perguntaPlural.valorOperadorPlural.equals("Quantos"){
                                        $perguntaPlural.valorPergunta = "Quantos veículos tem como " ;
                                     }
                                    }
                                    
                  ',' '[' ('(' 
                  palavraChave {
                                 $perguntaPlural.tipo = $palavraChave.tipo;
                                 $perguntaPlural.valor = $palavraChave.valor;
                                 $perguntaPlural.op = $palavraChave.op;
                                 $perguntaPlural.primeiro = $palavraChave.primeiro;
                                 $perguntaPlural.segundo = $palavraChave.segundo;
                                 
                                if(total == 0){
                                 
                                  for(Integer i : $perguntaPlural.listaVeiculos.keySet()){
                                    Carro car = $perguntaPlural.listaVeiculos.get(i);
                                    if($perguntaPlural.tipo.equals("segmento"){
                                        if(car.getSegmento().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("marca"){
                                        if(car.getMarca().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("modelo"){
                                        if(car.getModelo().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("versao"){
                                        if(car.getVersao().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("combustivel"){
                                        if(car.getCombustivel().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("cor"){
                                        if(car.getCaracteristica().getCor().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("caixa"){
                                        if(car.getCaracteristica().getCaixa().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("portas"){
                                        if(car.getCaracteristica().getPortas().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("tracao"){
                                        if(car.getCaracteristica().getTracao().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.put(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("cilindrada"){
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
                                    if($perguntaPlural.tipo.equals("preco"){
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
                                    if($perguntaPlural.tipo.equals("ano"){
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
                                    if($perguntaPlural.tipo.equals("potencia"){
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
                                                if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + $perguntaPlural.tipo + " é " + $perguntaPlural.op + " que " + $perguntaPlural.primeiro+;}
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
                                    
                                    total++;
                                }else{
                                    
                                   for(Integer i : $perguntaPlural.listaRespostas.keySet()){
                                    Carro car = $perguntaPlural.listaRespostas.get(i);
                                    if($perguntaPlural.tipo.equals("segmento"){
                                        if(!car.getSegmento().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("marca"){
                                        if(!car.getMarca().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("modelo"){
                                        if(!car.getModelo().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("versao"){
                                        if(!car.getVersao().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("combustivel"){
                                        if(!car.getCombustivel().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("cor"){
                                        if(!car.getCaracteristica().getCor().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("caixa"){
                                        if(!car.getCaracteristica().getCaixa().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("portas"){
                                        if(!car.getCaracteristica().getPortas().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("tracao"){
                                        if(!car.getCaracteristica().getTracao().equals($perguntaPlural.valor)){
                                            $perguntaPlural.listaRespostas.remove(i,car);
                                        }
                                    }
                                    if($perguntaPlural.tipo.equals("cilindrada"){
                                        if($perguntaPlural.op.equals("maior")){
                                            if(!car.getCilindrada() > $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("menor")){
                                            if(!car.getCilindrada() < $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("igual")){
                                            if(!car.getCilindrada() == $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("entre")){
                                            if(!car.getCilindrada() > $perguntaPlural.primeiro && car.getCilindrada() < $perguntaPlural.segundo){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaPlural.tipo.equals("preco"){
                                        if($perguntaPlural.op.equals("maior")){
                                            if(!car.getPreco() > $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("menor")){
                                            if(!car.getPreco() < $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("igual")){
                                            if(!car.getPreco() == $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("entre")){
                                            if(!car.getPreco() > $perguntaPlural.primeiro && car.getPreco() < $perguntaPlural.segundo){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaPlural.tipo.equals("ano"){
                                        if($perguntaPlural.op.equals("maior")){
                                            if(!car.getAno() > $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("menor")){
                                            if(!car.getAno() < $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("igual")){
                                            if(!car.getAno() == $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("entre")){
                                            if(!car.getAno() > $perguntaPlural.primeiro && car.getAno() < $perguntaPlural.segundo){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        } 
                                    }
                                    if($perguntaPlural.tipo.equals("potencia"){
                                        if($perguntaPlural.op.equals("maior")){
                                            if(!car.getPotencia() > $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("menor")){
                                            if(!car.getPotencia() < $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("igual")){
                                            if(!car.getPotencia() == $perguntaPlural.primeiro){
                                                $perguntaPlural.listaRespostas.remove(i,car);
                                            }
                                        }
                                        else if ($perguntaPlural.op.equals("entre")){
                                            if(!car.getPotencia() > $perguntaPlural.primeiro && car.getPotencia() < $perguntaPlural.segundo){
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
                                                if($perguntaPlural.valorOperadorPlural.equals("Quais")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta +  " , e ainda  cujo " + $perguntaPlural.tipo + " é um valor" + $perguntaPlural.op + " a " + $perguntaPlural.primeiro + " , e ainda ";}
                                                if($perguntaPlural.valorOperadorPlural.equals("Quantos")){$perguntaPlural.valorPergunta = $perguntaPlural.valorPergunta + " , e ainda tem como " + $perguntaPlural.tipo +  " um valor " + $perguntaPlural.op  + " a " + $perguntaPlural.primeiro + " , e ainda ";}  
                                            }
                                        }
                                }

                               }
                  ')' ',')+ 
                  ']' ')' {$perguntaPlural.valorOperadorPlural = $perguntaPlural.valorOperadorPlural + " ?";}
               ;
                 
operadorSingular returns [String valorOperadorSingular]
                 : 'Qual' {$operadorSingular.valorOperadorSingular = "Qual";}
                 | 'Quanto' {$operadorSingular.valorOperadorSingular = "Quanto";}
                 | 'Que' {$operadorSingular.valorOperadorSingular = "Que";}
                 ;

operadorPlural returns [String valorOperadorPlural]
               : 'Quais' {$operadorPlural.valorOperadorPlural = "Quais";}
               | 'Quantos' {$operadorPlural.valorOperadorPlural = "Quantos";}
               ;

palavraChave returns [String tipo, String valor, String op, int primeiro, int segundo]
             : 'segmento' ',' segmento {$palavraChave.tipo = "segmento"; $palavraChave.valor = $segmento.valorSegmento; $palavraChave.op = "vazio"; $palavraChave.primeiro = -1; $palavraChave.segundo = -2;}
             | 'marca' ',' marca {$palavraChave.tipo = "marca"; $palavraChave.valor = $marca.valorMarca; $palavraChave.op = "vazio"; $palavraChave.primeiro = -1; $palavraChave.segundo = -2;}
             | 'modelo' ',' modelo {$palavraChave.tipo = "modelo"; $palavraChave.valor = $modelo.valorModelo; $palavraChave.op = "vazio"; $palavraChave.primeiro = -1; $palavraChave.segundo = -2;}
             | 'cilindrada' ',' opcoes {$palavraChave.tipo = "cilindrada"; $palavraChave.valor = "vazio" ; $palavraChave.op = $opcoes.op; $palavraChave.primeiro = $opcoes.primeiro; $palavraChave.segundo = $opcoes.segundo;}
             | 'combustivel' ',' combustivel {$palavraChave.tipo = "combustivel"; $palavraChave.valor = $combustivel.valorCombustivel; $palavraChave.op = "vazio"; $palavraChave.primeiro = -1; $palavraChave.segundo = -2;}
             | 'preco' ',' opcoes {$palavraChave.tipo = "preco"; $palavraChave.valor = "vazio" ; $palavraChave.op = $opcoes.op; $palavraChave.primeiro = $opcoes.primeiro; $palavraChave.segundo = $opcoes.segundo;}
             | 'ano' ',' opcoes {$palavraChave.tipo = "ano"; $palavraChave.valor = "vazio" ; $palavraChave.op = $opcoes.op; $palavraChave.primeiro = $opcoes.primeiro; $palavraChave.segundo = $opcoes.segundo;}
             | 'potencia' ',' opcoes {$palavraChave.tipo = "potencia"; $palavraChave.valor = "vazio" ; $palavraChave.op = $opcoes.op; $palavraChave.primeiro = $opcoes.primeiro; $palavraChave.segundo = $opcoes.segundo;}
             | 'cor' ',' cor {$palavraChave.tipo = "cor"; $palavraChave.valor = $cor.valorCor; $palavraChave.op = "vazio"; $palavraChave.primeiro = -1; $palavraChave.segundo = -2;}
             | 'caixa' ',' caixa {$palavraChave.tipo = "caixa"; $palavraChave.valor = $caixa.valorCaixa; $palavraChave.op = "vazio"; $palavraChave.primeiro = -1; $palavraChave.segundo = -2;}
             | 'portas' ',' portas {$palavraChave.tipo = "portas"; $palavraChave.valor = $portas.valorPortas; $palavraChave.op = "vazio"; $palavraChave.primeiro = -1; $palavraChave.segundo = -2;}
             | 'tracao' ',' tracao {$palavraChave.tipo = "tracao"; $palavraChave.valor = $tracao.valorTracao; $palavraChave.op = "vazio"; $palavraChave.primeiro = -1; $palavraChave.segundo = -2;}
             ;

opcoes returns [String op, int primeiro, int segundo]
       : '(' '>' ',' NUM {$opcoes.op = "maior"; $opcoes.primeiro = $NUM.int; $opcoes.segundo = -1;} ')'
       | '(' '<' ',' NUM {$opcoes.op = "menor"; $opcoes.primeiro = $NUM.int; $opcoes.segundo = -1;} ')'
       | '(' '-+' ',' NUM {$opcoes.primeiro = $NUM.int;} ',' NUM {$opcoes.segundo = $NUM.int; $opcoes.op = "entre";} ')'
       | '(' '=' ',' NUM {$opcoes.op = "igual"; $opcoes.primeiro = $NUM.int; $opcoes.segundo = -1;} ')'
       ;



NUM : ('0'..'9')+
    ;

WS : [ \t\r\n]  -> skip
   ;



