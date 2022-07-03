def between(a, b)
  init_arr = []
  unless (a.is_a?(Integer) || b.is_a?(Integer))
    return init_arr
  end

  (a..b).each do |digit|
    init_arr << digit
  end
  init_arr
end
