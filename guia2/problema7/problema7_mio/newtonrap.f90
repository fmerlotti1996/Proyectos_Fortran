MODULE newtonrap

USE precisiones
USE funciones

IMPLICIT NONE

 CONTAINS

SUBROUTINE newtonrapshon(p0,Nmax,xtol,ytol,p_out,fp_out,R)

IMPLICIT NONE

INTEGER                  :: N,i
REAL(pr)                 :: p,fp0,fd0,error_x,error_y

INTEGER,INTENT(in)       :: Nmax
REAL(pr),INTENT(inout)   :: p0,xtol,ytol,R
REAL(pr),INTENT(out)     :: p_out,fp_out 

OPEN(11,FILE='problema7_newtonrap.dat',STATUS='replace')

12 FORMAT(A1,3X,A1,14x,A1,30x,A10,29x,A7)
13 FORMAT(3X,I3,5X,3(E22.13,10X))

fp0=f(p0,R)
fd0=fd(p0)

WRITE(*,12) '#', 'N', 'p', 'Er_R(x)', 'Er_A(y)'
WRITE(11,12) '#', 'N', 'p', 'Er_R(x)', 'Er_A(y)'

N=0._pr

        DO i =1,Nmax
            
            
            p=p0-fp0/fd0
            error_x=abs(p-p0)
            error_y=abs(f(p,R))

                WRITE(*,13) N,p,error_x/abs(p),error_y         
                WRITE(11,13) N,p,error_x/abs(p),error_y
                
                IF(error_x/abs(p)<xtol .and. error_y<ytol) EXIT
                
            fp0=f(p,R)
            fd0=fd(p)
            p0=p
            
                !IF(N>Nmax) THEN
                    !WRITE(*,*) 'se alcanzo el numero maximo de iteraciones'
                        !exit
                !END IF
                
                N=N+1._pr
        
        
        ENDDO
        
p_out=p
fp_out=f(p,R)

CLOSE(11)

END SUBROUTINE

END MODULE
