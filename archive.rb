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
      puts "3. Delete a song"
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
      print "Press any key to go back to the menu"
      STDIN.getch
    end
  end

  def add_song
    puts "Enter the song:"
    new_song = gets.chomp.downcase
    puts "Enter the singer:"
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
    @repeated_song = 0
    puts "Enter song to delete: "
    @song_to_remove = gets.chomp.downcase

    @songs.each {|element|@repeated_song +=1 if element[:song] == @song_to_remove}
   
    if @repeated_song > 1
      puts "The song has a duplicate!!"
      puts
      @songs.each {|element| 
        if element[:song] == @song_to_remove
          puts "#{element[:song]}, #{element[:singer]}"
        end
      }
      puts
      print "Please enter the SINGER for the song you want to remove:"
      @song_by_singer = gets.chomp.downcase
      
      @songs.each {|element|
        if element[:singer] == @song_by_singer
          @songs.delete (element[:singer])
        end
      }
      #@songs.delete_if {|x| x[:song] == @song_to_remove}
    end
  end
end
