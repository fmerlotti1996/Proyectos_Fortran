MODULE funciones
USE precisiones
IMPLICIT NONE

CONTAINS

! FUNCTION f(x)
! REAL(pr)                :: f
! REAL(pr),INTENT(in)     :: x
!
! f=log(1._pr + x)
! !f=sqrt(1+x)
!
! END FUNCTION f


!
! function f(x)
! real(pr)                :: f
! real(pr),intent(in)     :: x
!
! f=cos(x)
! end function f


FUNCTION f(x)
REAL(pr)                :: f
REAL(pr),INTENT(in)     :: x

! f=cos(3._pr*x)*exp(2._pr*x)
f=log(x)
END FUNCTION f
!
! function q(x)
! real(np)                :: q
! real(np),intent(in)     :: x
!
! q=1._np/(1._np+25._np*x*x)
!
! end function

END MODULE
