class Game

 WIN_COMBINATIONS = [[0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]]  
 
attr_accessor :board, :player_1, :player_2

def initialize(player_1=Players::Human.new("X"), player_2=Players::Human.new("O"), board=Board.new)
  @player_1 = player_1
  @player_2 = player_2
  @board = board
end

def board 
  @board
end

def board=(board)
  @board = []
end

def player_1=(player_1)
  @player_1 = player_1
end

def player_1
  @player_1
end 

def player_2=(player_2)
  @player_2 = player_2
end

def player_2
  @player_2
end 

def current_player 
  if @board.cells.count % 2 == 0
    @player_2
  else 
    @player_1
  end 
end 

def won? 
  @winningcombo = []
  WIN_COMBINATIONS.each do |possiblewiningcombo|
    possiblewiningcombo.each do |specifcnumber|
    @winningcomboforxcount = 0 
    @winningcomboforocount = 0
      if @board.cells[specifcnumber] == "X" 
        @winningcomboforxcount = @winningcomboforxcount + 1 
      elsif @board.cells[specifcnumber] == "O"
        @winningcomboforocount = @winningcomboforocount + 1
      else 
        nil
      end 
    end
    
    if @winningcomboforxcount == 3 || @winningcomboforocount == 3
      @winningcombo[0] << possiblewiningcombo
      @winningcombo
    end
  end
  if @winningcombo == ""
    false
  end
end


end


