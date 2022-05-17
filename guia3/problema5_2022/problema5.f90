 PROGRAM problema5

USE precisiones
USE funciones
USE newton_interpol

IMPLICIT NONE

INTEGER,PARAMETER                    :: n=3  !n=2
REAL(pr),DIMENSION(0:n)              :: vecx,y
REAL(pr)                             :: x_0,p,delta
INTEGER                              :: i,Nmax=200

11 FORMAT(A1,10X,A3,25x,A6,25x,A6,25x,A6)
12 FORMAT(3X,2(E20.9,10X))
17 FORMAT(3X,4(E20.9,10X))

! OPEN(13, file='funcion_pares_a.dat', status='replace')
OPEN(14, file='funcion_pares_b.dat', status='replace')
! OPEN(15,file='newtonP5_a.dat')
OPEN(16,file='newtonP5_b.dat')

! WRITE(13,11) '#', 'xi', 'f(x)'
WRITE(14,11) '#', 'xi', 'f(x)'

! vecx=(/0._pr,0.3_pr,0.6_pr/)
vecx=(/1._pr,1.1_pr,1.3_pr,1.4_pr/) !valores iniciales del vector y puntos por los que debe pasar el polinomio interpolantes 

        DO i=0,n
            y(i)=f(vecx(i))  !Los valores iniciales del vecy son las                                                     funciones evaluadas en esos puntos
!               WRITE(13,12) vecx(i),vecy(i)
            WRITE(14,12) vecx(i),y(i)
        END DO

! WRITE(15,11) '#', 'x', 'P(x)','f(x)', 'E_abs'
WRITE(16,11) '#', 'x', 'P(x)','f(x)', 'E_abs'


delta=(vecx(n)-vecx(0))/(Nmax-1)  !Salto de paso en paso para evaluar el polinomio y que esten equiespaciados los puntos

        DO i=1,Nmax
            x_0=vecx(0)+(i-1)*delta
            CALL newton(n,vecx,y,x_0,p)
!             WRITE(15,17) x,Px,f(x),(f(x)-Px)
            WRITE(16,17) x_0,p,f(vecx(i)),(f(vecx(i))-p)
        END DO

! CLOSE(13)
CLOSE(14)
! CLOSE(15)
CLOSE(16)



END PROGRAM
