PROGRAM problema2

USE precisiones
USE newtonrap

IMPLICIT NONE

REAL(pr)                ::p0,xtol,ytol,fp,p,Nmax
INTEGER               ::N

WRITE(*,*) 'ingrese el valor de estimación de la raiz'
READ(*,*)  p0
WRITE(*,*) 'ingrese el valor el numero maximo de iteraciones '
READ(*,*)  Nmax
WRITE(*,*) 'ingrese la tolerancia en x'
READ(*,*)  xtol
WRITE(*,*) 'ingrese la tolerancia en y'
READ(*,*)  ytol

CALL newtonrapshon(N,Nmax,p0,xtol,ytol,p,fp)

WRITE (*,*) 'El valor de p y f(p) encontrado es'
WRITE (*,*) 'p=',abs(p), 'f(p)=' ,fp

WRITE (*,*) " las iteraciones necesarias para converger al resultado fueron",N
WRITE (*,*) "Las iteraciones maximas posibles eran",Nmax

END PROGRAM problema2
