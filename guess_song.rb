class NewGame
  attr_accessor :song
  attr_accessor :guessed_letters
  


  def initialize(song)
    @song_to_guess = song
    @guessed_letters = []
  end
  
  def play
    each_letter = @song_to_guess.split("")
    puts "WELCOME TO GUESS THE SONG"
   
    3.times do
      puts "Enter a letter"
      @current_letter = gets.chomp
      @guessed_letters << @current_letter
    end

    puts guessed_letters
  end


end
