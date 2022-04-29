program p11
    use producto

    
    implicit none

    integer :: i
    integer :: n !Número de elementos
    integer, dimension (:), allocatable :: v  !Vector
    integer, dimension (:,:), allocatable :: m !Matriz
    integer, dimension (:), allocatable :: p !Producto de vector matriz

    write(*,*)'Ingrese el número de elementos:'
    read(*,*) n

    allocate (v(n))
    allocate (m(n,n))
    allocate (p(n))

    ! Inicializamos el vector y la matriz

    v(1:n:2)=3.
    v(2:n:2)=2.

    m=0

    do i=1,n

        m(i,i)=3
        m(i,i+1:n)=1

    end do    

call sub1 (n,v,m,p)

write(*,*) 'vector resultante:'
write(*,*) p

deallocate(v)
deallocate(m)
deallocate(p)

end program p11

