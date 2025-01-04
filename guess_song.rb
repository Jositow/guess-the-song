class NewGame
  attr_accessor :song
  attr_accessor :guessed_letters
  attr_accessor :allowed_guesses
  


  def initialize(song)
    @song_to_guess = song.split("")
    @guessed_letters = []
    @allowed_guesses = 7
    @word_holder = "*" * @song_to_guess.length
  end
  
  def play
    system ('clear')
    puts "WELCOME TO GUESS THE SONG"
    puts 
    while @allowed_guesses > 0 && @word_holder != @song_to_guess
      puts "You have #{@allowed_guesses} opportunities left"
      puts "Song to guess #{@word_holder}"
      puts "Enter a letter"
      @current_letter = gets.chomp
        
      if !guessed_letters.include?(@current_letter)
        @guessed_letters << @current_letter
        @song_to_guess.each_with_index {|i, index|
          @word_holder[index] = @song_to_guess[index] if @song_to_guess[index] == @current_letter 
        }
      else 
        puts "Letter already guessed"
      end
      @allowed_guesses -=1
    
    end
  end


end
