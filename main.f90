program main
      implicit none
      real::a,b,dx
      real,external::f
      real::trap_int,simp_int,simp_te_int,diff_n,diff_te,diff_tm,diff_fe,diff_fm
      read(*,*)a,b,dx
      write(*,*)"with trapizoid",trap_int(f,a,b,dx)
      write(*,*)"with simpson",simp_int(f,a,b,dx)
      write(*,*)"with simpson three eight",simp_te_int(f,a,b,dx)
      write(*,*)"diff n is ",diff_n(f,a,dx)
      write(*,*)"diff te is ",diff_te(f,a,dx)
      write(*,*)"diff tm is ",diff_tm(f,a,dx)
      write(*,*)"diff fe is ",diff_fe(f,a,dx)
      write(*,*)"diff fm is ",diff_fm(f,a,dx)
      end program



real function f(x)
      implicit none
      real::x
      f=x**2-x+1
end function
