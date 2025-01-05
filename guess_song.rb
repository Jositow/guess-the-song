
class NewGame
  attr_accessor :song
  attr_accessor :singer
  attr_accessor :guessed_letters
  attr_accessor :allowed_guesses

  


  def initialize(song, singer)
    @song_to_guess = song.split("")
    @singer = singer
    @guessed_letters = []
    @allowed_guesses = 7
    @word_holder = "*" * @song_to_guess.length
  end
  
  def play
    system ('clear')
    puts "WELCOME TO GUESS THE SONG GAME"
    puts "You have #{@allowed_guesses} chance to guess the song"
    puts "Hint: the singer is #{@singer}!"
    puts 
    while @allowed_guesses > 0
      puts 
      puts "Letters already guess => #{@guessed_letters.join(",")}"
      puts "#{@allowed_guesses} chances left"
      puts
      puts "Guess this song => #{@word_holder}"
      loop do
        print "Enter a letter: "
        @current_letter = gets.chomp
        if @current_letter.match(/^[a-zA-Z]$/)
          if guessed_letters.include?(@current_letter)
            puts "Letter already guessed, try again please."
          else break
          end
        else puts "invalid input"
        end
      end
      @guessed_letters << @current_letter

      if @song_to_guess.include?(@current_letter)
          puts "You're right!" 
          
          @song_to_guess.each_with_index {|i, index|
            @word_holder[index] = @song_to_guess[index] if @song_to_guess[index] == @current_letter
          }
          if @word_holder == @song_to_guess.join
            puts
            puts "YOU WON!"
            puts "The song was #{@word_holder.capitalize}!"
            puts "press enter to continue"
            gets.chomp
            break
          end
      elsif !@song_to_guess.include?(@current_letter)
        print "Wrong guess"
      end
  
      @allowed_guesses -=1
    end
  end
end
