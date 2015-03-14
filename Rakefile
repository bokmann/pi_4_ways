require 'rubygems'
require 'bundler'

Bundler.require(:default)

desc "Generates pi via monte carlo method"
task :monte_carlo, [:points] do |t, args|
  require File.expand_path('lib/monte_carlo.rb')
  
  points = (args[:points] || "10000").to_i
  
  pi = monte_carlo(points)
  
  puts pi
end

desc "Generates pi via leibniz method"

task :leibniz, [:itertations] do |t, args|
  require File.expand_path('lib/leibniz.rb')
  
  iterations = (args[:itertations] || "10000").to_i
  
  pi = leibniz(iterations) 
  
  puts pi
end

desc "Generates pi via spigot algorithm"
task :spigot do |t, args|
  require File.expand_path('lib/spigot.rb')
  
  spigot do |digit| 
    print digit; $stdout.flush
  end
  
end

desc "Generates pi via algebraic/geometric mean method"
task :agm, [:precision] do |t, args|
  require File.expand_path('lib/agm.rb')
  
  precision = (args[:precision] || "8192").to_i
  pi = agm(precision)
  
  puts pi
end
