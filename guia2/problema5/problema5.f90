PROGRAM problema5

USE precisiones
USE newtonrap

IMPLICIT NONE
REAL(pr)        ::a,b,xtol,ytol,p,fp,error_est,p0,Nmax      
INTEGER         ::j,N                                                   
        
        WRITE(*,*) 'ingrese el valor de p0'
        READ(*,*) p0
        WRITE(*,*) 'ingrese el numero maximo de iteraciones'
        READ(*,*) Nmax
        WRITE(*,*) 'ingrese la tolerancia en x'
        READ(*,*) xtol
        WRITE(*,*) 'ingrese la tolerancia en y'
        READ(*,*) ytol
    
        CALL newtonrapshon(p0,xtol,ytol,p,fp,N,Nmax,error_est)

        WRITE(*,*) 'El valor de p y f(p) es'
        WRITE(*,*) 'la raiz estimada p=',p, 'la funcion f(p)=' ,fp
        WRITE(*,*) 'Con un error estimado de'
        WRITE(*,*) 'error_est=',error_est
        WRITE(*,*) "para converger el problema necesito estas iteraciones",N
        WRITE(*,*)"La cantidad maxima de iteraciones posibles eran",Nmax


END PROGRAM problema5
