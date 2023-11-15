def validate(value, min = 1, max = 1)
  number = value.to_i.nonzero? || min
  number = number < min ? min : number
  number > max ? max : number
end
