# http://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80

def leibniz(iterations = 1000)
  num = 1.0
  pi = 0
  plus = true
  den = 1

  while den < iterations
    if plus 
      pi = pi + num/den
      plus = false
    else
      pi = pi - num/den
      plus = true
    end
    den = den + 2
  end

  pi*4
end