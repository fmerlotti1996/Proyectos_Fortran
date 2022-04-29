program p9

implicit none 

real(4) :: n1,n2,p1,p2
integer :: i,j

n1= 0.d0

p1 = 0.d0

do i=1,10000000,1

n1 = n1 + 1.d0

p1 = (1.d0/n1) + p1

end do

write(*,*)"el valor de la suma es",p1,n1

n2= 10000001.d0

p2 = 0.d0

do j=10000000,1,(-1)

n2 = n2 -1.d0

p2 = (1.d0/n2) + p2

end do

write(*,*)"el valor de la suma es",p2,n2

end program p9

