program test
implicit none
real(kind(1.)) :: x, y,s
integer :: i,j
i = 6; j = 3; x = 4.; y = 8.
call sum(i,x,s)
write(*,’(F4.1,” + ”,F4.1,” = ”,F5.1)’) real(i),x,s

contains
subroutine sum(z,w,ss)
implicit none
real(kind(1.)), INTENT(IN) :: z, w
real(kind(1.)), INTENT(OUT) :: ss
ss = z + w
end subroutine sum

end program test
