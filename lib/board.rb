class Board 

attr_accessor :cells

def initialize
  @cells = [" ", " ", " ", " ", " ", " ", " ", " "," "]
end


def cells=(cells)
  @cells = cells
end 

def cells
  @cells
end

def reset!
  @cells = [" ", " ", " ", " ", " ", " ", " ", " "," "]
end

def display
  puts (" #{@cells[0]} | #{@cells[1]} | #{@cells[2]} ")
  puts "-----------"
  puts (" #{@cells[3]} | #{@cells[4]} | #{@cells[5]} ")
  puts "-----------"
  puts (" #{@cells[6]} | #{@cells[7]} | #{@cells[8]} ")
end 

def position(positionlocation)
  positionint = positionlocation.to_i - 1
  @cells[positionint]
end 

def full?
  count = 0 
  @cells.each do |item|
    if item == "X" || item == "O"
      count = count + 1 
    end
  end
    if count == 9 
      true 
    else 
      false
    end
end 

def turn_count 
  count = 0 
  @cells.each do |item|
    if item == "X" || item == "O"
      count = count + 1 
    end
  end
  count
end 

def taken?(positionlocation)
  positionint = positionlocation.to_i - 1
    if @cells[positionint] == "X" || @cells[positionint] == "O"
      true
    else 
      false
    end
  end 

def valid_move?(positionlocation)
  positionint = positionlocation.to_i - 1
    if @cells[positionint] == " " && positionlocation.to_i <= 9 && positionlocation.to_i >= 1
      true
    else 
      false
    end
  end 

def update(position, player) 
  positionint = position.to_i - 1
  if valid_move?(position) == true 
    @cells[positionint] = player.token
  end  
end 



end