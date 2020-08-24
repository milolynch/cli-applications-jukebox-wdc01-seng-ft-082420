def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def exit_jukebox
  puts "Goodbye"
end

def list(songs)
  songs.each_with_index { |song, index|
    puts "#{index+1}. #{song}"
  }
end

def play(songs)
  order = [1,2,3,4,5,6,7,8,9]
  puts "Please enter a song name or number"
  song_n_n = gets.strip
  if order.include?(song_n_n.to_i) == true
    puts "int"
  elsif songs.include?(song_n_n) == true
    puts "string"
  else
    puts "Invalid input, please try again"
  end
end

play(songs)
