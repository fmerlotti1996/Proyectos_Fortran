program p13
    implicit none

    integer :: i,j,k
    integer, parameter :: pr=kind(1.0)
    real(pr) :: a,b,rel_b,rel_c,sum0,sum1

    !Inciso a)

    a = 1000000._pr*0.1_pr
    
    write(*,*) 'El resultado de a) es',  a

    !--------------------------------------------------------------------------------!

    !Inciso b)

    b = 0._pr
    
    open(unit=10, file='Inciso_b.dat' , status='replace')
    write(10,100)
                100 format ('#',4X,'Indice',T23,'Error Parcial')

    do i = 1,1000000


     b = b + 0.1_pr

     if (mod(i,1000)==0) then

        write(10,110) i , b- (i*0.1_pr)
         110 format (1X,I10,4X,E20.9)

     end if

    end do


   close(unit=10)

   rel_b = (abs(a-b)/a)*100._pr

   
   write(*,*) 'El resultado de b) es' , b
   write(*,*) 'Error relativo del inciso b) es' , rel_b


   !--------------------------------------------------------------------------------!

   !Inciso c)

   sum0 = 0.
   sum1 = 0.

   open(unit=11, file='Inciso_c.dat' , status='replace')
    write(11,120)
                120 format ('#',4X,'Indice',T23,'Error Parcial')


   do j = 1,1000

    sum0 = sum0 + 0.1_pr

   end do

   
   do k = 1,1000

    sum1 = sum1 + sum0

    
        write(11,130) k*1000 , sum1 - (k*1000)*0.1_pr
                130 format (1X,I10,4X,E20.9)
    
   end do

   close(unit=11)

   rel_c = (abs(a-sum1)/a)*100._pr

   write(*,*) 'El resultado de c) es' , sum1
   write(*,*) 'El error relativo del inciso c) es', rel_c

end program   
