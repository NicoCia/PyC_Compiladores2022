grammar miParser;

@header {
package com.example;
}

fragment LETRA : [A-Za-z] ;
fragment DIGITO : [0-9] ;

ID : (LETRA | ' ')(LETRA | DIGITO | ' ')* ;
NUMERO : DIGITO+ ;
OTRO : . ;


s : ID { System.out.println("ID ->" + $ID.getText() + "
<--"); } s
| NUMERO { System.out.println("NUMERO ->" + $NUMERO.
getText() + "<--"); } s
| OTRO { System.out.println("Otro ->" + $OTRO.getText()
+ "<--"); } s
| EOF
;