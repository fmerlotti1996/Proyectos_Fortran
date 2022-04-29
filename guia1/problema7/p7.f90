program p7 

implicit none 

integer  :: a

Write(*,*) "Escriba el numero"
Read(*,*)a

 if ((mod(a,2) == 0) .and. (mod(a,5) == 0)) then 

    write(*,*) "El numero es multiplo de 2 y de 5"

else if (mod(a,5) == 0) then
    
    write(*,*) "El numero es multiplo de 5"

else if (mod(a,2) == 0) then 

    write(*,*) "El numero es multiplo de 2"

else 

    write(*,*) "No es multiplo de 2 ni 5"

end if

end program p7

