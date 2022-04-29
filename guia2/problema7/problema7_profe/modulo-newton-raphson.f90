 module newt_raph

 use  ISO
 use  precsn ! definicion de la precision global wp
 use  funciones

 contains
! !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

 subroutine newton (f, dfdx, x0, tol_x, tol_y, Nmax, unidad, x1, e_x, niter)

 implicit none


 real( kind = wp ), intent(IN)        :: tol_x , tol_y, x0

 real( kind = wp ), intent(OUT)    :: x1 , e_x
 real( kind = wp )                         :: x_anterior, f , dfdx , f0 , dfdx0 , e_y , f1

 integer, intent(IN)                       :: Nmax , unidad
 integer, intent(OUT)                   :: niter
 integer                                        :: i

 x_anterior = x0

 f0 = f(x_anterior)
 dfdx0 = dfdx(x_anterior)



 write(*,*)   " N             x_N              Error_x           Error_xrel          Error_y "


write(unidad,*)  " N          x_N              Error_x           Error_xrel          Error_y "


e_x =1._wp
e_y = abs(f0)



 do i =1 , Nmax

         x1 = x_anterior - 1.0_wp * f0/dfdx0
         f1 = f(x1)
         e_x = abs (x1-x_anterior)
         e_y = abs ( f1 )

         write (* , '( i4 ,4( x , ES19.12) ) ') i , x1 , e_x, e_x/abs(x1), e_y

         write ( unidad , '( i4 ,4( x , ES19.12) ) ') i , x1 , e_x, e_x/abs(x1), e_y

          x_anterior = x1
          f0 = f( x_anterior )
          dfdx0 = dfdx ( x_anterior )
          niter = i


          if ( e_y < tol_y .and. (e_x/abs(x1)) < tol_x ) then

       exit
     endif

 enddo
 write(*,*)

 end subroutine newton 

 end module newt_raph
