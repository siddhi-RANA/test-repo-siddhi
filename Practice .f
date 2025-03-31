       Program ArithmeticOperations 
       implicit none
       ! Declare two integer variable A and B 
       integer :: A,B
       integer :: SUM, PRODUCT, POWER
       integer :: QUOTIENT
       integer :: file_unit 
       ! set values
       A = 56
       B = 56
       !SUM = A + B
       call PRINTSUM (A,B)  
       PRODUCT = A * B
       QUOTIENT = A / B
       POWER = A**B
      
       ! print the results 
       !print *, 'A+B =',SUM
       print *, 'A*B =',PRODUCT
       print *, 'A/B =',QUOTIENT
       print *, 'A**B =',POWER
       
       ! write result to a text file
       file_unit = 1
       open(unit=file_unit, file="results.txt",status="unknown")
       !write(file_unit, *) 'A+B =',SUM
       write(file_unit, *) 'A*B =',PRODUCT
       write(file_unit, *) 'A/B =',QUOTIENT
       write(file_unit, *) 'A**B =',POWER
       close(file_unit)
       
      END PROGRAM ArithmeticOperations
      
      subroutine PRINTSUM (X,Y)
      integer :: X , Y 
      integer :: SUM
      SUM = X+Y
      print *, "X+Y =",SUM
      end subroutine

      