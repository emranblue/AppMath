program main
      implicit none
      real::a,b,dx
      real,external::f
      real::trap_int,simp_int,simp_te_int,diff
      read(*,*)a,b,dx
      write(*,*)"with trapizoid",trap_int(f,a,b,dx)
      write(*,*)"with simpson",simp_int(f,a,b,dx)
      write(*,*)"with simpson three eight",simp_te_int(f,a,b,dx)
      write(*,*)"diff is ",diff(f,a,dx)
      end program



real function f(x)
      implicit none
      real::x
      f=x**2
end function
