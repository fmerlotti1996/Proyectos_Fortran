 module funciones

 use  ISO
 use  precsn    ! definicion de la precision global wp
! use constantes

 contains
! ***********************************************************
 function fb1(x)
 
 implicit none
 real( kind = wp ) , intent(in) :: x, M
 real( kind = wp )     :: fb1

 fb1 = x**3 - M

 end function
! ***********************************************************************
 function  dfb1dx ( x )

 implicit  none

 real( kind = wp ) , intent(in) :: x
 real( kind = wp )   :: dfb1dx

 
 dfb1dx = 3._wp * x**2

 end function
!*************************************************************************


f!unction  fb2 ( x )


i!mplicit none

!real( kind = wp ) ,intent(in) :: x
!real( kind = wp )  :: fb2


!fb2 = x - M /(x**2)

!end function

! **********************************************************************


!function dfb2dx ( x )

!implicit none

!real( kind = wp ) , intent (in) :: x
!real( kind = wp ) :: dfb2dx


!dfb2dx = 1._wp  + M * 2._wp/(x**3)

!end function


! **********************************************************************

 end module funciones
