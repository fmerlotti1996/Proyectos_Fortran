module interpol_lagrange

use ISO 
use precisiones
use funciones

contains

subroutine lagrange(n,xi,yi,x,p)

implicit none
integer, intent (in):: n
integer :: i,k
real(pr), dimension(1:n), intent(in):: xi,yi
real(pr), intent (in):: x
real(pr), intent(out):: p
real(pr):: L

p = 0._pr


do i=1,n

    L = 1._pr

        do k=1,n


        if (k/=i) then
               
        L = L*(x-xi(k))/(xi(i)-xi(k))
        
        end if
        
        
        end do
        
    p=p+L*yi(i)
    
end do
        
end subroutine

end module