      program charTesting
      
      implicit none
      
      character (len = 10) :: c
      character :: d
      integer :: n
      
      c = 'Ez mar tobb mint 10'
      
      !print *, c
      !print *, len('A big hello from Mr. Bean') 
      !print *, 'Hello', ', here is the Monthy Python crew!'
      !print *, c//'yoyoyo'
      !print *, index(c, 'm')

      !do n = 35, 92
      !	d = achar(n)
      !	print *, n, ' ', d
      !enddo
      
      if (lgt('b', 'a')) then
      	print *, 'Ez igen'
      end if
      
      if (llt('A', 'a')) then
      	print *, 'ez is igen'
      end if
      
      if (llt('a', 'b')) then
      	print *, 'na ez az igazi'
      end if
            
      end program charTesting