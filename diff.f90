        real function diff(func,a,dx) result(z)
          implicit none
          real,external::func
          real,intent(in)::a,dx
          z=(func(a+dx)-func(a))/dx
          end function


