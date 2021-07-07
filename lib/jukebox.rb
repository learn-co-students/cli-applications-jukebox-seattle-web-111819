def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  i = 0
  while i < songs.length
    puts "#{i + 1}. #{songs[i]}"
    i += 1
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.strip
  if (1..songs.length).include?(choice.to_i)
    puts "Playing " + songs[choice.to_i - 1]
  elsif songs.include?(choice)
    puts "Playing " + songs[songs.index(choice)]
  else
    puts "Invalid input, please try again."
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  songlist = songs
  input = ""
  until input == "exit"
    puts "Please enter a command:"
    input = gets.strip
    help if input == "help"
    list(songs) if input == "list"
    play(songs) if input == "play"
  end
  exit_jukebox
end