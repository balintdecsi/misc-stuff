      program loopTesting
      
      implicit none
      
      integer :: n
      real :: nfact
      
      nfact = 1
      
      ! compute factorials
      do n = 1, 10
      	nfact = nfact * n
      	print *, n, ' ', nfact
      enddo
      
      n = 1
      
      do while (n < 10)
      	print *, n
      	n = n + 1
      enddo
      
      do n = 1, 20
      	if (n == 18) then
      		exit
      	end if
      	print *, 'n is '
      	if (n == 11) then
      		cycle
      	end if
      	print *, n
      end do
      
      stop
      
      print *, 'End'
             
      end program loopTesting
      	