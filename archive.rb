class Archive
  def initialize
    @songs = ["hola"]
  end

  def archive
    puts "1. Add a song"
    puts "2. Delete a song"
    puts "3. Guess the song"
    puts "4. Exit"
    @answer = gets.chomp
    if @answer.to_i == 1
     add_song
     puts "Aloja... #{@songs}"
    end

  end

  def add_song
    puts @songs
  end
end
