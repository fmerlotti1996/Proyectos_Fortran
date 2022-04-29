PROGRAM problema3

USE precisiones
USE newtonrap
USE bisec

IMPLICIT NONE
REAL(pr)        ::a,b,xtol,ytol,p,fp,error_est,p0,Nmax      
INTEGER         ::j,N                                                    

    WRITE(*,*) 'usted tiene dos opciones para resolver el problema'
    WRITE(*,*) '------'
    WRITE(*,*)'1.Biseccion'
    WRITE(*,*)'2.Newton-Rhapson'
    WRITE(*,*)'Escribir la opcion elegida'
    READ(*,*) j

IF(j==1) THEN

        WRITE(*,*) '----------usted eligio el metodos de la biseccion, a continuación ingrese los valores del intervalo-------'
        WRITE(*,*) ''
        
        WRITE(*,*) 'ingrese el valor de a'
        READ(*,*) a
        WRITE(*,*) 'ingrese el valor de b'
        READ(*,*) b
        WRITE(*,*) 'ingrese la tolerancia en x'
        READ(*,*) xtol
        WRITE(*,*) 'ingrese la tolerancia en y'
        READ(*,*) ytol
        
        CALL biseccion (a,b,xtol,ytol,p,fp,N,Nmax,error_est)

        WRITE(*,*) 'El valor de p y f(p) es'
        WRITE(*,*) 'la raiz estimada p=',p, 'la funcion f(p)=' ,fp
        WRITE(*,*) 'Con un error estimado de'
        WRITE(*,*) 'error_est=',error_est
        WRITE(*,*)" La cantidad de iteraciones que necesito el problema para converger fueron",N
        WRITE(*,*)"La mayor cantidad de iteraciones posibles era",ceiling(Nmax)
    
ELSE IF (j==2) THEN
    
        WRITE(*,*) '----------usted eligio el metodo de Newton, a continuación ingrese el valor estimado-------'
        WRITE(*,*) ''
        
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
         WRITE(*,*)" La cantidad de iteraciones que necesito el problema para converger fueron",N
        WRITE(*,*)"La mayor cantidad de iteraciones posibles era",ceiling(Nmax)
        
ELSE 
        WRITE(*,*)'Tiene que elegir entre las dos opciones mencionadas'

ENDIF

END PROGRAM problema3
