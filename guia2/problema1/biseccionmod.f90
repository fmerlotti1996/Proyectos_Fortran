
MODULE bisec

USE precisiones
USE funciones

IMPLICIT NONE

CONTAINS

SUBROUTINE  biseccion(a,b,xtol,ytol,p_out,fp_out,N,Nmax)

IMPLICIT NONE

REAL(pr), INTENT(inout)   :: a,b,xtol,ytol,Nmax  ! ESTAS SON LAS VARIABLES QUE ENTRAN Y SALEN DEL PROGRAMA PRINCIPAL
REAL(pr)                             :: fa,fb,fp,p,error_x,error_y

INTEGER                            :: i,N  !VARIABLE PARA CONTAR ITERACIONES

REAL(pr),INTENT(out)        :: p_out,fp_out ! VARIABLES DE SALIDA QUE VAN AL PROGRAMA PRINCIPAL 

OPEN(unit = 11, file ='datos_problema1.dat',status='replace')

12 FORMAT(A1,4x,A2,20x,A2,25x,A5,25x,A12,25x,A12)
13 FORMAT(4x,I3,5x,4(E20.12,5x))
 
fa  = f(a)
fb  = f(b)

Nmax = (log(b-a)-log(xtol))/log(2._pr)  

WRITE(11,12) '#','N','p','f(p)','Er(absoluto)','er(relativo)'

WRITE(*,12) '#','N','p','f(p)','Er(absoluto)','er(relativo)'

    IF(sign(1._pr,f(a))==sign(1._pr,f(b))) THEN
        
                WRITE(*,*) 'La funcion en los valores extremos del intervalo tiene el mismo signo. No se puede aplicar biseccion' 
            STOP
   END IF

N = 0._pr

    do i = 1,ceiling(Nmax)
    
        p = (a+b) / 2._pr
        fp = f(p)
    
        IF(sign(1._pr,fa)*sign(1._pr,fp)<0) THEN
            b=p
        ELSE IF (sign(1._pr,fb)*sign(1._pr,fp)<0) THEN
            a=p
        END IF
    
        error_x=(b-a)/2
        error_y=abs(fp)
        
        WRITE(*,13) N,p,fp, error_x, (b-a)/abs(b+a)
        
        WRITE(11,13) N,p,f(p), error_x, (b-a)/abs(b+a)

        IF(error_x < xtol .and. error_y < ytol ) EXIT    
    
        !IF(N>ceiling(Nmax)) THEN
           ! WRITE(*,*) 'se alcanzo el numero maximo de iteraciones'
               ! exit
       ! END IF
            
        N=N+1._pr
    
    END DO

p_out=p
fp_out=fp            
    
CLOSE(11)

END SUBROUTINE biseccion

END MODULE bisec    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    










