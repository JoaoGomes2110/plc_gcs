/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

grammar SociedadeAnonimaGIC;

empresa : 'SA:' sociedadeAnonima ';' socios ';' funcionarios '.'
        ;

sociedadeAnonima : nomeEmpresa localizacao objectivo
                 ;
nomeEmpresa : 'Nome Empresa: ' TEXTO
            ;

localizacao : cidade '-' rua
            ;

cidade : 'Cidade:' TEXTO
       ;

rua : 'Rua:' TEXTO
    ;

objectivo: 'Objetivo: ' TEXTO '--' ramo
         ;

ramo: 'AGRICULTURA' | 'INDUSTRIA' | 'COMERCIO'
    ;

socios: (socio)+
      ;

socio: 'Socio:' nome '--' capital '--' cota '--' papel 
     ;

nome : TEXTO
     ;

capital: NUMERO '€'
       ;

cota: NUMERO '%'
    ;

papel: 'SOCIO' | 'ADMINISTRADOR'
     ;

funcionarios: (funcionario)+
            ;

funcionario: 'Funcionario:' nome '--' numeroMecanografico '--' dataNascimento '--' contactos '--' funcao '--' entrada
           ;

numeroMecanografico: 'F' NUMERO
                   ;

dataNascimento: NUMERO '/' NUMERO '/' NUMERO
              ;

contactos: (contacto)+
         ;

contacto: telemovel '&' (email)?
        ;

telemovel: 'TELEMOVEL:'  NUMERO | 'TELEFONE:' NUMERO  
         ;

email: 'EMAIL: ' TEXTO '@' TEXTO '.com'
     ;

funcao: 'GERENTE' | 'PRODUCAO' | 'ESCRITORIO' | 'ARMAZEM'
      ;

entrada: NUMERO '/' NUMERO '/' NUMERO
       ;

/* Definicao do Analisador LEXICO */

TEXTO: [a-zA-Z]+;

NUMERO: ('0'..'9')+ ; // [0-9]+

HORA: [0-9]?[0-9] ':' [0-9][0-9];

Separador: ('\r'? '\n' | ' ' | '\t')+  -> skip;
