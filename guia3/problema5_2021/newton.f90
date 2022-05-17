MODULE newton_interpol
USE precisiones

IMPLICIT NONE

CONTAINS

SUBROUTINE newton(n,vecx0,vecy0,x,P)

INTEGER,INTENT(in)                   :: n
REAL(pr),DIMENSION(0:n),INTENT(in)   :: vecx0,vecy0
REAL(pr),INTENT(in)                  :: x
REAL(pr),INTENT(out)                 :: P
REAL(pr),DIMENSION(0:n)              :: vec_c
INTEGER                              :: i,j

    DO i=0,n
        vec_c(i)=vecy0(i)
    END DO

    DO j=1,n
        DO i=n,j,-1
            vec_c(i)=(vec_c(i)-vec_c(i-1))/(vecx0(i)-vecx0(i-j))
        END DO
    END DO

P=vec_c(n)

    DO i=n-1,0,-1
        P=P*(x-vecx0(i))+vec_c(i)
    END DO

END SUBROUTINE

END MODULE newton_interpol
