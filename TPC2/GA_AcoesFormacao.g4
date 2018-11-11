
grammar GA_AcoesFormacao;

acoes returns[int totalAcoes,int id,int nAlunos,boolean formado,boolean passou, String erro, int dur, int ndias, int totalHoras, int nsemanas]   
    @init{
       $acoes.totalAcoes = 0;
       $acoes.id = 0;
       $acoes.passou = false;
       $acoes.formado = false;
       $acoes.erro = "";
       $acoes.dur = 0;
       $acoes.ndias = 0;
       $acoes.totalHoras = 0;
       $acoes.nsemanas = 0;
      }
    @after{
           System.out.println("####################### RESUMO #####################################");
           System.out.println("Total de Acções de Formação: " + $acoes.totalAcoes);
        }
        : (acao{$acoes.totalAcoes++;
                $acoes.nAlunos = $acao.nAlunos;
                $acoes.id++;
                System.out.println("####################### FORMAÇÃO #####################################");
                System.out.println("ID: " + $acoes.id);
                System.out.println("Total de Alunos: " + $acoes.nAlunos);
                $acoes.passou = $acao.passou;
                $acoes.formado = $acao.formado;
                if($acoes.passou){
                   $acoes.erro = $acoes.erro + "ERRO: A formação tem mais alunos que o permitido. ";    
                 }
                if($acoes.formado){
                   $acoes.erro = $acoes.erro + "ERRO: O formador não tem o diploma válido.";
                }
                
                $acoes.ndias = $acao.ndias;
                $acoes.dur = $acao.dur;
                $acoes.totalHoras = $acao.totalHoras;
                $acoes.nsemanas = $acao.nsemanas;
                
               System.out.println("Total de dias:  " + $acoes.ndias);
               System.out.println("Duração total: " + $acoes.dur + " horas");
               System.out.println("Horas/semana: " + $acoes.totalHoras + " horas/semana");
               System.out.println("Duração da formação em semanas: " + $acoes.nsemanas + "semana(s)");
                
                
               System.out.println($acoes.erro);
               } '.')+
        ;

acao returns[int nAlunos,int diferenca,boolean teorout,boolean passou,boolean mestre,boolean licenciado,boolean formado, int dur, int ndias, int totalHoras, int nsemanas]
    @init{
      $acao.teorout = false;
      $acao.mestre = false;
      $acao.licenciado = false;
      $acao.dur = 0;
      $acao.ndias = 0;
      $acao.totalHoras = 0;
      $acao.nsemanas = 0;
     }
    : cabec  tema  duracao  horario  custo formador alunos
      {
       $acao.nAlunos = $alunos.nAlunos;
       $acao.teorout = $tema.teorout;
       $acao.licenciado = $formador.licenciado;
       $acao.mestre = $formador.mestre;
       if($acao.teorout == false){
           if($acao.nAlunos > 5){
                $acao.passou = true;
           }
       }
       else{
           if(!($acao.mestre || $acao.licenciado)){
                $acao.formado = true;
           } 
       }
       
       $acao.dur = $duracao.totalDur;
       $acao.ndias = $horario.ndias;
       $acao.totalHoras = $horario.horasDia;
       $acao.nsemanas = $acao.dur/$acao.totalHoras;
      }
          ;
cabec     : 'FORMACAO:' sigla '-' descricao
          ;
 
sigla     : IDENT
          ;
 
tema  returns[boolean teorout]    
          : 'TEMA:' descricao   tipo 
            {
             $tema.teorout = $tipo.teorout;
            } 
          ;
 
descricao : TEXTO
          ;
 
tipo returns [boolean teorout]
          : 'TIPO:' teor {$tipo.teorout = $teor.teorout;}
          | 'TIPO:' prat {$tipo.teorout = $prat.teorout;}
          ;
 
teor returns [boolean teorout] 
          : 'TEORICO' {$teor.teorout = true;}  topicos   bibliografia
          ;
 
topicos   :    descricaoTopico (';'  descricaoTopico)*
          ;
 
descricaoTopico : 'TOPICOS:' TEXTO
                ;
 
bibliografia    :'BIBLIOGRAFIA:' (titulo obra)+
                ;  
 
titulo          : 'TITULO:' TEXTO
                ;
 
obra            : 'OBRA:' TEXTO
                ;
 
prat  returns[boolean teorout]         
                : 'PRATICO' {$prat.teorout = false;}   recursos
                ;
 
recursos        : descricaoRecurso (';'  descricaoRecurso)*
                ;
 
 
descricaoRecurso : 'RECURSOS:' TEXTO
                 ;
 
duracao returns[int totalDur]
@init{
      $duracao.totalDur = 0;
}    
                 : 'DURACAO:' NUMERO 'h'{
                     $duracao.totalDur = $NUMERO.int;
                 } 
                 ;
 
horario returns [int ndias,int horasDia]
@init{
      $horario.ndias = 0;
      $horario.horasDia = 0;
}
                 : 'HORARIO:' (dia '--' HORA{
                                             String[] inicio = ($HORA.text).split(":");
                                             int horas_inicio = Integer.parseInt(inicio[0]);
                                             int minutos_inicio = Integer.parseInt(inicio[1]);
                                             } '--'  HORA {
                    $horario.ndias++;
                    String[] fim = ($HORA.text).split(":");
                    int horas_fim = Integer.parseInt(fim[0]);
                    int minutos_fim = Integer.parseInt(fim[1]);
                                     
                    int max_min = -1;
                    
                    if(minutos_fim>minutos_inicio){max_min = minutos_fim;}
                    if(minutos_fim<minutos_inicio){max_min = minutos_inicio;}
                    
                    
                    if(max_min == -1){
                          $horario.horasDia += horas_fim - horas_inicio;                                 
                    }else{
                          int conversao;
                          if(max_min>minutos_inicio){
                             conversao = (max_min-minutos_inicio)/60;
                          }else{
                             conversao = (max_min-minutos_fim)/60;
                          }
                          $horario.horasDia += conversao;
                          $horario.horasDia += horas_fim-horas_inicio;
                    }
                 })+
                 ;
 
dia              : '2f'| '3f'| '4f'| '5f'| '6f'| 'sab'
                 ;
 
 
custo            : 'CUSTO:' NUMERO
                 ;
 
alunos returns [int nAlunos]            
                 : aluno{$alunos.nAlunos=1;} (';' aluno{$alunos.nAlunos++;})*
                 ;
 
aluno            : 'ALUNO:' pessoa
                 ;
 
formador returns[boolean mestre, boolean licenciado] 
                 : 'FORMADOR:'  pessoa ','  diploma{
                                                    $formador.mestre = $diploma.mestre;
                                                    $formador.licenciado = $diploma.licenciado;
                                                   }
                 ;
pessoa           : nome ','  morada ',' cartaoC
                 ;
 
nome             : TEXTO
                 ;
 
morada           : TEXTO
                 ;
 
cartaoC          : TEXTO
                 ;
 
diploma returns [boolean mestre,boolean licenciado]         
                 : 'tecnico'|'bacharel'|'licenciado' {$diploma.licenciado = true; $diploma.mestre = false;}|'mestre' {$diploma.mestre = true; $diploma.licenciado = false;}
                 ;
 
 
 
 
/* Definicao do Analisador LEXICO */
IDENT : LETRA(LETRA|[0-9-_/])* ;
 
fragment LETRA : [a-zA-ZáéíóúÁÉÍÓÚÃãÕõâêôÂÊÔÀÈÌÒÙàèìòùÇç] ;
 
TEXTO:    (('\''|'\"') ~('\''|'\"')* ('\''|'\"'));
 
NUMERO: ('0'..'9')+ ; // [0-9]+
 
HORA: [0-2]?[0-9] ':' [0-5][0-9];
 
Separador: ('\r'? '\n' | ' ' | '\t')+  -> skip;