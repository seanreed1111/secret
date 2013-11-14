message = "The quick brown fox jumped over the lazy dog"

def encode(message)

  gsub_args = [
    [/a/, "BZZZ"],
    [/e/, "FZZZ"],
    [/i/, "TRZZZ"],
    [/o/, "KRZZZ"],
    [/u/, "PRZZZ"],
    [/ /, "YRZZZ"]
   ]

  history = Hash.new(message)

  gsub_args.each_with_index do |args, i|
    history[(i+1)] = history[i].send(:gsub, args[0], args[1])
  end

  puts history.values.last.reverse
end