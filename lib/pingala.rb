# frozen_string_literal: true

# Fibnonacci number with iteration
def pingala(n)
  fibs = []
  fibs[0] = 0
  fibs[1] = 1 if n >= 1
  (2...n).each do |number|
    fibs[number] = fibs[number - 1] + fibs[number - 2]
  end
  p fibs
end

# Fibonacci number with recursion, simple answer
def pingala_recursion(n)
  n <= 1 ? n : pingala_recursion(n - 1) + pingala_recursion(n - 2)
end

# Fibonacci number with recursion, array answer
def pingala_rec_array(n)
  (return n.zero? ? [0] : [0, 1]) if n <= 1

  fibs = pingala_rec_array(n - 1)
  fibs << fibs[-2] + fibs[-1]
end
