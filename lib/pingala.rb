# frozen_string_literal: true

# Fibnonacci number witt iteration
def pingala(n)
  fibs = []
  fibs[0] = 0
  fibs[1] = 1 if n >= 1
  (2...n).each do |number|
    fibs[number] = fibs[number - 1] + fibs[number - 2]
  end
  p fibs
end
