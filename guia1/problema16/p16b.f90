program p16b
    implicit none


    integer, parameter :: pr=kind(1.d0)
    real (pr) ::  prod , pi
    integer(8)  :: i , n


    

    prod = 1._pr
 
write (*,*) '              lados        wallis'



  do i=1,1000000

    
    prod = prod*(4*i**2)/(1._pr*(4*i**2 - 1) )

    if (mod(i,10**5)==0) then
    
    write(*,*) i , prod
  
    end if
  
  end do

  pi = 2._pr*prod

  write(*,*) 'El valor de pi es : ' , pi

  
end program

