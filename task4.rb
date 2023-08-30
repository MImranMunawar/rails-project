#Write a program to print the first n
#natural numbers using a while loop.

def print_natural_numbers(n)
  i = 1
  while i <= n
    puts i
    i += 1
  end
end


 n = 5
puts print_natural_numbers(n)
