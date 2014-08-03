
module CombinationCalc

  module_function

  def assemble(pattern)
    recursive_search_for_combination({}, pattern).flatten
  end

  def print_table(pattern)
    hash = assemble(pattern)

    col_width = pattern.keys.each_with_object([]) do |key,array|
      max_length = (hash.map{ |h| h[key].to_s.length } + [key.length]).max
      max_length *= -1 unless hash.inject(true){ |j,h| j = j && h[key].is_a?(Integer) }
      array << [key, max_length]
    end

    row_formatter = "| " + col_width.map{ |col| "% #{col[1]}s" }.join(" | ") + " |"
    print row_formatter % pattern.keys + "\n"

    hash.each do |row|
      print (row_formatter % pattern.keys.map{|key| row[key]}) + "\n"
    end
    true
  end

  private
  module_function
  def recursive_search_for_combination(selected_hash, pattern)
    table = []
    current_key = (pattern.keys - selected_hash.keys).first
    if current_key
      pattern[current_key].map do |val|
        selected_hash[current_key] = val
        res = recursive_search_for_combination(selected_hash.dup, pattern)
        table << res if res
      end
    else
      table << selected_hash
    end
    return table
  end

end
