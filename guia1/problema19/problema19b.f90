
program problema19b
implicit none
integer, parameter      :: pr=kind(1.d0)
real(pr)         :: a
a = 2.05_pr
if (a*100._pr == 205._pr) then
write(*,*) "2.05*100 = 205 "

else
write(*,*) "2.05*100 /= 205 "
endif

write(*,*) "la operacion da" , a*100._pr

end program problema19b

!En doble precision da mal por que toma muchos mas decimales y el numero nunca se redondea a 205 por eso lo toma como diferente 
