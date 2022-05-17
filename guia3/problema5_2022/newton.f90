MODULE newton_interpol
    USE precisiones
    
    IMPLICIT NONE
    
    CONTAINS
    
    SUBROUTINE newton(n,x,y,x_0,p)
    IMPLICIT NONE
    INTEGER,INTENT(in)                       :: n
    REAL(pr),DIMENSION(0:n),INTENT(in)       :: x,y
    REAL(pr),INTENT(in)                      :: x_0
    REAL(pr),INTENT(out)                     :: p
    REAL(pr),DIMENSION(0:n,0:n)              :: f
    INTEGER                                  :: i,j
    REAL(pr)                                 :: factor, suma 
    
        DO j=0,n
            f(0,j)=y(j)
        END DO
    
        DO i=1,n
            DO j=0,n-i
               f(i,j) = (f(i-1,j+1) - f(i-1,j))/(x(j+i)-x(j))
            END DO
        END DO
    
    factor = 1._pr 

    suma = f(0,0)
    
    do i =1,n
        factor = factor*(x_0-x(i-1))

        suma = suma + f(i,0)*factor

    end do

    p = suma 

    END SUBROUTINE
    
    END MODULE newton_interpol
    