PROGRAM passwd
    !  este programa lee la contrasenia 
    !  permite tres intentos  
    !  si no acierta se corta
    !     
    
    IMPLICIT NONE
    
    INTEGER, PARAMETER            :: np = KIND(1.d0)
    REAL(KIND=np)                 :: l, ap
    INTEGER                       :: n
    CHARACTER(3)                  :: password, contrasenia
    ! Parte ejecutoria
    
    password ="482"   
    
    WRITE(*,*) "Ingrese la contrasenia de tres dígitos"
    READ(*,*) contrasenia
    
    IF ( contrasenia .EQ. password ) THEN
    
    WRITE(*,*) "Correcto"
    
    ELSE   
    
    WRITE(*,*) "Lo siento, contrasenia equivocada, vuelva a intentar" 
    
    END IF
    
    READ(*,*) contrasenia
    
    IF ( contrasenia .EQ. password ) THEN
    
    WRITE(*,*) "Correcto"
    
    ELSE  
    
    WRITE(*,*) "Lo siento, contrasenia equivocada, vuelva a intentar, solo te queda un intento"
    
    END IF
    
    READ(*,*) contrasenia 
    
    IF ( contrasenia .EQ. password ) THEN
    
    WRITE(*,*) "Correcto"
    
    
    ELSE   
    
    
    WRITE(*,*) "Lo siento, contrasenia equivocada, ya no te quedan mas intentos" 
    
    END IF
    
    
    END PROGRAM Passwd 
       
        
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
