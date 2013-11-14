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

  message_history = Hash.new(message)

  gsub_args.each_with_index do |args, index|
    message_history[(index+1)] = message_history[index].send(:gsub, args[0], args[1])
  end

  puts message_history.values.last.reverse
end