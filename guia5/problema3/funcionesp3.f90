MODULE funcionesp3

    USE precisiones
    
    IMPLICIT NONE
    
    CONTAINS
    
    FUNCTION f(x)
    
    REAL(pr)                 :: f
    REAL(pr),INTENT(in)      :: x
    
    f=exp(-x)
    
    END FUNCTION f
    
    END MODULE funcionesp3
