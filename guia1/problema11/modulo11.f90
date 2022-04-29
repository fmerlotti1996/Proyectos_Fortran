module producto

    contains

    subroutine sub1 (n,v,m,p)
    implicit none
    integer, intent(in) :: n
    integer, dimension (n), intent(in) :: v
    integer, dimension (n,n), intent(in) :: m
    integer, dimension (n), intent(out) :: p

    p=matmul(v,m)

    end subroutine

end module producto    