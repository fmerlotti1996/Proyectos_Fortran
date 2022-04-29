PROGRAM problema1

USE precisiones
!USE funciones
USE bisec


IMPLICIT NONE

REAL(pr)                ::a,b,xtol,ytol,fp,p,Nmax
INTEGER                 ::N


! Ahora  definimos las variables necesarias, tales como los intervalos donde se comienza el metodo y las tolerancias en 
!x e y, esto es si nos piden que el usuario lo ingrese por pantalla
!WRITE(*,*) 'ingrese el valor de a'
!READ(*,*)  a
!WRITE(*,*) 'ingrese el valor de b'
!READ(*,*)  b
!WRITE(*,*) 'ingrese la tolerancia en x'
!READ(*,*)  xtol
!WRITE(*,*) 'ingrese la tolerancia en y'
!READ(*,*)  ytol

!Ahora dejamos aclarado en caso de que queramos ingresar estas variables como input directo en el programa principal 
 a = 0._pr
 b = 2._pr
 xtol = 10e-5_pr
 ytol = 10e-5_pr
    
CALL biseccion (a,b,xtol,ytol,p,fp,N,Nmax)

WRITE (*,*) 'El valor de p y f(p) encontrado es'
WRITE (*,*) 'p=',p, 'f(p)=' ,fp

Write(*,*) " Cantidad de iteraciones necesarias para converger",N

Write(*,*) " Cantidad de iteraciones maximas posibles",ceiling(Nmax)

END PROGRAM problema1
