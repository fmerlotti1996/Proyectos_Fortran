PROGRAM problema7

USE precisiones
USE newtonrap
USE funciones

IMPLICIT NONE
REAL(pr)        ::a,b,xtol,p,fp,p0,R,ytol      
INTEGER         ::Nmax                                             

        WRITE(*,*) 'ingrese el valor de p0'
        READ(*,*) p0
        WRITE(*,*) 'ingrese el numero maximo de iteraciones'
        READ(*,*) Nmax
        WRITE(*,*) 'ingrese la tolerancia en x'
        READ(*,*) xtol
        WRITE(*,*) 'ingrese la tolerancia en y'
        READ(*,*) ytol
        WRITE(*,*) 'ingrese el valor de R para la funcion'
        READ(*,*) R
    
        CALL newtonrapshon(p0,Nmax,xtol,ytol,p,fp,R)
        WRITE(*,*) 'El valor de R para la funcion ingresado es',R
        WRITE(*,*) 'El valor de p y f(p) es'
        WRITE(*,*) 'la raiz estimada p=',p, 'la funcion f(p)=' ,fp

END PROGRAM problema7
