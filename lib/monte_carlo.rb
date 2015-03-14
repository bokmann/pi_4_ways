# generates a random point on a 1x1 matrix and
# returns it's distance from 0,0
def distance
  Math.sqrt(rand**2 + rand**2)
end


def monte_carlo(x=100)
  inside = 0
  x.times do |count|
    inside +=1 if distance < 1
    yield count if block_given?
  end
   inside / x.to_f * 4
end













# gets the distance of x number of points, and
# keeps track of how many are less than 1 unit.
# computes that as a percentage of total, and
# multiplies by 4 to get ~pi.
# def compute_pi(x=100)
#   x.times.inject(0) do |count|
#      distance < 1 ? count+1 : count
#    end / x.to_f * 4
# end


