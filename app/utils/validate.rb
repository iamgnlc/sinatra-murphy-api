def validate(number)
  number = number.to_i.nonzero? || 1
  number = number > 50 ? 50 : number
end