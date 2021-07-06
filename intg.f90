        real function trap_int(func,a,b,dx) result(z)
          implicit none
          real,intent(in)::a,b,dx
          real,external::func
          integer::n,i
          n=int((b-a)/dx)
          z=func(a)+func(b)
          do i=1,n-1
            z=z+2*func(a+i*dx)
          end do
          z=z*(dx/2)
          end function


          real function simp_int(func,a,b,dx) result(z)
            implicit none
            real,intent(in)::a,b,dx
            real,external::func
            integer::n,i
            n=int((b-a)/dx)
            z=func(a)+func(b)
            do i=1,n-1
            if (mod(i,2)==1)then
            z=z+4*func(a+i*dx)
          else
            z=z+2*func(a+i*dx)
          end if
          end do
          z=(dx/3)*z
          end function

       real function simp_te_int(func,a,b,dx) result(z)
         implicit none
         real,intent(in)::a,b,dx
         real,external::func
         integer::n,i
         n=int((b-a)/dx)
         z=func(a)+func(b)
         do i=1,n-1
         if (mod(i,3)==0) then
           z=z+2*func(a+i*dx)
         else
           z=z+3*func(a+i*dx)
         end if
         end do
         z=((3*dx)/8)*z
         end function
