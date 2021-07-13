      program kindChecking
      
      implicit none
      
      integer :: i
      real :: r
      character :: c
      logical :: l
      
      print *, 'int ', kind(i)
      print *, 'real ', kind(r)
      print *, 'char ', kind(c)
      print *, 'logical ', kind(l)
      
      end program kindChecking