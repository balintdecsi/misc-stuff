      program numberTesting
      
      implicit none
      
      integer :: a, b, c, d
      real :: p, q, r
      real, parameter :: myAge = 22.66
      character(len = 40) :: message
      
      a = 16
      b = 2
      c = 4
      d = 120
      p = 45.32
      q = 4.0
      r = 32
      !myAge = 32.11
      message = 'Hello my old friend'
      
      print *, 'a/b: ', a / b
      print *, 'b/c: ', b / c
      print *, 'r/q: ', r / q
      print *, 'r/a: ', r / a
      print *, 'a/q: ', a / q
      print *, 'd/p: ', d / p
      print *, 'b*p: ', p * p
      print *, 'p/q: ', p / q
      print *, 'myAge*p: ', myAge * p
      
      end program numberTesting 