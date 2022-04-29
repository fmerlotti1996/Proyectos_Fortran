program problema19a
implicit none
integer, parameter   :: pr=kind(1.d0)
! pr puede ser simple o doble
if (19.08_pr + 2.01_pr == 21.09_pr) then
write(*,*) "19.08 + 2.01 = 21.09"

else
write(*,*) "19.08 + 2.01 /= 21.09"
endif
write(*,*) " la operacion da",19.08_pr + 2.01_pr

end program problema19a
!En doble precision da mal por que toma muchos mas decimales y el numero nunca se redondea a 21.09 por eso lo toma como diferente 
