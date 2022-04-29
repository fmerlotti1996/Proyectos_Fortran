program p12

implicit none

integer(4)             ::   a, b, r, x

character(1)         ::  resto

character(50)       ::  resultado

write(*,*) "Ingrese un numero en base 10"
read(*,*)a

write(*,*) "ingrese la nueva base"
read(*,*)b

resultado =  "  "

do while (x  /= 0)

r = mod(a,b)

x = a / b

select case (r)

case   ( 10)
write( resto, '(A1)')  "A"
case    ( 11)
write(resto, '(A1)')  "B"
case    ( 12)
write(resto, '(A1)')  "C"
case   ( 13)
write(resto, '(A1)')  "D"
case   ( 14)
write(resto, '(A1)')  "E"
case   ( 15)
write(resto, '(A1)')  "F"
case   ( 16)
write(resto, '(A1)')  "G"
case default
write(resto, '(I1)')  r

end select

resultado  =  resto//resultado

a =  x

end do

write(*,*) "El resultado es:  "

write(*,'(A50)') resultado

end program p12


























