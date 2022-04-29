program problema6

IMPLICIT NONE 

real(8)     :: a,b


WRITE(*,*)"INGRESE DOS NUMEROS REALES PARA SABER CUAL ES EL MAYOR DE ELLOS"
READ(*,*) a , b

IF (a < b ) THEN 

WRITE(*,*) "  A ES MENOR QUE B"

ELSE IF (  a > b) THEN 

WRITE(*,*) "  A ES MAYOR QUE B"

ELSE 

WRITE(*,*) "  A ES IGUAL A  B"

END IF

END PROGRAM problema6
