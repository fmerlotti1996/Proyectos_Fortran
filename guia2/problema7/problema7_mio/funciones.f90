module funciones

 use  ISO
 use  precisiones    ! definicion de la precision global wp

 contains
! ***********************************************************
 function f(x,R)
 
 implicit none
 real( kind = pr ) , intent(in) :: x, R
 real( kind = pr )     :: f

 f= x**3 - R

 end function
! ***********************************************************************
 function fd(x)

 implicit  none

 real( kind = pr ) , intent(in) :: x
 real( kind = pr )   :: fd
 
 fd = 3._pr * x**2

 end function
 
 end module funciones
