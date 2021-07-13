      program testingInt
      
      implicit none
      
      ! 2-byte-long integer max value:
      integer(kind = 2) :: byteof2
      
      ! 4-byte-long integer max value
      integer(kind = 4) :: byteof4
      
      ! 8-byte-long integer max value:
      integer(kind = 8) :: byteof8
      
      ! default value:
      integer :: defbyte
      
      print *, huge(byteof2)
      print *, huge(byteof4)
      print *, huge(byteof8)
      print *, huge(defbyte)
      
      end program testingInt
      
     