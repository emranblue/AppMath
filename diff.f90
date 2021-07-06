        real function diff_n(func,a,dx) result(z)
          implicit none
          real,external::func
          real,intent(in)::a,dx
          z=(func(a+dx)-func(a))/dx
          end function


          real function diff_te(f,a,dx) result(z)
            implicit none
            real,external::f
            real,intent(in)::a,dx
            z=(1/(2*dx))*(-3*f(a)+4*f(a+dx)-f(a+2*dx))
            end function

        real function diff_tm(f,a,dx) result(z)
          implicit none
          real,external::f
          real,intent(in)::a,dx
          z=(1/(2*dx))*(f(a+dx)-f(a-dx))
          end function

      real function diff_fm(f,a,dx) result(z)
        implicit none
        real,external::f
        real,intent(in)::a,dx
        z=(1/(12*dx))*(f(a-2*dx)-8*f(a-dx)+8*f(a+dx)-f(a+2*dx))
        end function

     real function diff_fe(f,a,dx) result(z)
        implicit none
        real,external::f
        real,intent(in)::a,dx
        z=(1/(12*dx))*(-25*f(a)+48*f(a+dx)-36*f(a+2*dx)+16*f(a+3*dx)-3*f(a+4*dx))
        end function


