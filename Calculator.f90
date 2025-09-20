program calculator
  implicit none
  real :: a, b, result
  character(1) :: op

  print *, '=== Kalkulator Sederhana ==='
  print *, 'Masukkan angka pertama:'
  read *, a
  print *, 'Masukkan operator (+, -, *, /):'
  read *, op
  print *, 'Masukkan angka kedua:'
  read *, b

  select case(op)
    case('+')
      result = a + b
    case('-')
      result = a - b
    case('*')
      result = a * b
    case('/')
      if (b /= 0.0) then
        result = a / b
      else
        print *, 'Error: Pembagian dengan nol!'
        stop
      end if
    case default
      print *, 'Operator tidak dikenali.'
      stop
  end select

  print *, 'Hasil: ', result

end program calculator
