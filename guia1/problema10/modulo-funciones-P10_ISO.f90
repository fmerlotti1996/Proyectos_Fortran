module funciones

 use ISO
 use precsn
 use constantes

contains

! *********************************************************

 function x(t)

 implicit none

 real(kind=wp), intent (in) :: t

 real(kind=wp) :: x

 x = x0 + v0x * t
 
 end function
 ! *********************************************************

 function y(t)

 implicit none

 real(kind=wp), intent (in) :: t

 real(kind=wp) :: y

 y = y0 + v0y * t - 0.5_pr*g*t **2
 
 end function

 ! *********************************************************

 function vx(t)

 implicit none

 real(kind=pr), intent ( in ) :: t

 real(kind=pr) :: vx

 vx = v0x

 end function

 ! *********************************************************

 function vy(t)

 implicit none

 real(kind=pr), intent ( in ) :: t

 real(kind=pr) :: vy

 vy = v0y - g*t

 end function

 end module funciones
