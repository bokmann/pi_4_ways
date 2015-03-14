# http://en.wikipedia.org/wiki/AGM_method
# http://rosettacode.org/wiki/Arithmetic-geometric_mean/Calculate_Pi#Ruby
#
require 'flt'
def agm(precision)
  Flt::BinNum.Context.precision = precision
  a = n = 1
  g = 1 / Flt::BinNum(2).sqrt
  z = 0.25
  (0..17).each{
    x = [(a + g) * 0.5, (a * g).sqrt]
    var = x[0] - a
    z -= var * var * n
    n += n
    a = x[0]
    g = x[1]
    yield if block_given?
  }
  a * a / z
end