program p15
    implicit none

integer :: dia
integer :: dia_del_anio
integer :: i
integer :: dia_extra
integer :: mes
integer :: anio

write(*,*) 'Ingrese el mes actual (1-12), dia (1-31), y año en este orden'
read(*,*) mes, dia, anio

!Se fija si es año bisiesto y agrega el dia extra si es necesario
!En el calendario Gregoriano, los años bisiestos estan determinados por:
!1)Años divisibles por 400 son bisiestos
!2)Años divisibles por 100 pero no por 400 no son bisiestos
!3)Todos los años divisibles por 4 pero no por 100 son bisiestos
!4)Los casos restantes no son años bisiestos

if ( mod(anio,400)== 0) then

    dia_extra = 1

else if ( mod(anio,100) == 0) then 

    dia_extra = 0

else if ( mod(anio,4) == 0) then
    
    dia_extra = 1

else 
    
    dia_extra = 0

end if


!Calcula el dia del año

dia_del_anio = dia

do i=1,mes - 1

    select case (i)

    case (1,3,5,7,8,10,12)
           dia_del_anio = dia_del_anio + 31

    case (4,6,9,11)
           dia_del_anio = dia_del_anio + 30  

    case (2)
        dia_del_anio = dia_del_anio + 28 + dia_extra

    end select    

end do


write(*,*) 'dia = ', dia
write(*,*) 'mes = ', mes
write(*,*) 'año = ', anio
write(*,*) 'dia del año = ', dia_del_anio






end program    