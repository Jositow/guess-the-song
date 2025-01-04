class NewGame
  attr_accessor :song
  @guessed_letters = []

  def initialize(song)
    @song_to_guess = song
    
  end
  
  def play
    each_letter = @song_to_guess.split("")
    puts "WELCOME TO GUESS THE SONG"
    puts

    print each_letter
    
  end


end
