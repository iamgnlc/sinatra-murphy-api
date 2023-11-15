def validate(number)
  n = number.to_i.nonzero? || 1
  n > 50 ? 50 : n
end
