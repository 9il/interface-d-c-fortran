SUBROUTINE SIN(x)
IMPLICIT NONE
REAL*8, INTENT(INOUT) :: x
x = DSIN(x)
END SUBROUTINE SIN

SUBROUTINE COS(x)
IMPLICIT NONE
REAL*8, INTENT(INOUT) :: x
x = DCOS(x)
END SUBROUTINE COS

SUBROUTINE TAN(x)
IMPLICIT NONE
REAL*8, INTENT(INOUT) :: x
x = DTAN(x)
END SUBROUTINE TAN

SUBROUTINE ATAN(x)
IMPLICIT NONE
REAL*8, INTENT(INOUT) :: x
x = DATAN(x)
END SUBROUTINE ATAN
