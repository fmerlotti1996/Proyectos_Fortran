Module ISO
! int8, int16, int32, int64
!    Parámetros de tipo Kind para especificar un tipo "INTEGER" con un tamaño de
! almacenamiento de 8, 16, 32 y 64 bits. Es negativo si una plataforma de
! destino no es compatible con el tipo particular. ( Fortran 2008 o posterior).

! real32, real64, real128
!    Parámetros de tipo Kind para especificar un tipo "REAL" con un tamaño de
! almacenamiento de 32, 64 y 128 bits. Es negativo si una plataforma de
! destino no es compatible con el tipo particular. ( Fortran 2008 o posterior).

use ISO_FORTRAN_ENV

implicit none

integer(kind = int8), parameter :: is = int8, id = int16, il = int32, ix = int64
integer(kind = int8), parameter :: rs = real32, rd = real64, rl = real128
! s : Short, d : Double, l : Large, x : eXtralarge


end module ISO
