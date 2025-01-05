require_relative "./song"
require_relative "./guess_song"

class Archive
  def initialize
    @songs = []
  end

  def archive
    loop do
      puts
      puts "1. Add a song"
      puts "2. List of songs"
      puts "3. Delete a Song"
      puts "4. Guess the song (Game)"
      puts "5. Exit"
      puts
      print "Enter option: "
      @answer = gets.chomp.to_i
      puts "\n"
      case @answer
        when 1
          add_song
        when 2
          list_songs
        when 3
          delete_song
        when 4
          new_game
        when 5
          break
        else
          puts "Invalid input" 
          puts
      end
    end
  end
  
  def new_game
    random_song = @songs.sample
    unless @songs.empty? == true
      @game = NewGame.new(random_song[:song], random_song[:singer])  
      @game.play
    else
      puts "Enter a song to play the game!"
      puts
      print "Press any key to go back to menu"
      STDIN.getch
    end
  end

  def add_song
    puts "Enter the song:"
    new_song = gets.chomp.downcase
    puts "Enter the singer"
    singer = gets.chomp.downcase
    song = Song.new(new_song, singer)
    @songs << song.add
  end
  
  def list_songs
    puts "LIST OF ALL SONGS"
    puts
    @songs.each.with_index(1) {|song, index|
      puts "#{index} #{song[:song].capitalize}, #{song[:singer].capitalize}"
    }
    puts
  end

  def delete_song
    puts "Enter song to delete: "
    song_to_remove = gets.chomp.downcase
    @songs.delete_if {|x| x[:song] == song_to_remove}
    
  end
end
