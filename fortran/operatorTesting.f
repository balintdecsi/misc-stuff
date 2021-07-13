      program operatorTesting
      
      implicit none
      
      integer :: A, B
      logical :: check, chick
      
      A = 7
      B = 3
      
      check = (A == B)
      chick = (A /= B)
      print *, "Check is ", check
      print *, "Chick is ", chick
      
      end program operatorTesting
      
      