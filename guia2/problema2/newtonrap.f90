MODULE newtonrap

USE precisiones
USE funciones

IMPLICIT NONE

CONTAINS

SUBROUTINE  newtonrapshon(N,Nmax,p0,xtol,ytol,p_out,fp_out)

IMPLICIT NONE

INTEGER                  :: N,i 
REAL(pr)                 :: p,fp0,fd0,error_x,error_y
REAL(pr),INTENT(inout)   :: p0,xtol,ytol,Nmax
REAL(pr),INTENT(out)     :: p_out,fp_out 

OPEN(11,FILE='problema2a.dat',STATUS='replace')

12 FORMAT(A1,2X,4(A6,5X))
13 FORMAT(3X,I3,5X,3(E22.13,10X))

fp0=f(p0)
fd0=fd(p0)

WRITE(*,12) '#', 'N', 'p','fp' ,'Er_R(x)', 'Er_A(y)'
WRITE(11,12) '#', 'N', 'p','fp','Er_R(x)', 'Er_A(y)'

N=0._pr

    DO  i = 1,ceiling(Nmax)
            
            
            p=p0-fp0/fd0
            error_x=abs(p-p0)
            error_y=abs(f(p))

                WRITE(*,13) N,p,f(p),error_x/abs(p),error_y         
                WRITE(11,13) N,p,f(p),error_x/abs(p),error_y
                
            IF(error_x/abs(p)<xtol .and. error_y<ytol) exit 
                
            fp0=f(p)
            fd0=fd(p)
            p0=p
            
            !IF(N>Nmax) THEN
                   ! WRITE(*,*) 'se alcanzo el numero maximo de iteraciones'
                        !exit
           ! END IF
                
                N=N+1._pr
        
        
    END DO
    
p_out=p
fp_out=f(p)

CLOSE(11)

END SUBROUTINE

END MODULE
