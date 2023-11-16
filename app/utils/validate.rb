def validate(value, min = 1, max = 1)
  number = value.to_i.nonzero? || min
  number = min if number < min
  [number, max].min
end
