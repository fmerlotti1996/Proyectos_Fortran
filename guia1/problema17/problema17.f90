program problema17
implicit none
integer, parameter :: pr = kind(1.0)
real(pr)                  :: sum0,sum1
integer                  :: i


sum0 = 0._pr  ; sum1 = 1._pr
do i=1,10000
sum0 = sum0 + 1.e-8_pr
sum1 = sum1 + 1.e-8_pr
end do
sum0 = sum0 + 1._pr
write(*,*) sum0, sum1

end program problema17


! Al partir de valores pequenos, la representacion de
!punto flotante al no ser exacta  tiene en consideracion los valores 
!cercanos que tambien son chicos por eso si partimos de cero nos da mas exacto, ya que si partimos de 1
!, la representacion capta que el valor tiene que seguir siendo uno por sumarle algo muy chico 
