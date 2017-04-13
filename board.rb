
class Board

    ROWS_LENGTH = 7
    COLS_LENGTH = 7
    FOURINLINE = 4
    INITIAL_VALUE = 0

    def initialize
        @myBoard = Array.new( ROWS_LENGTH )

        for index in 0..ROWS_LENGTH-1
            @myBoard[index] = Array.new( COLS_LENGTH, INITIAL_VALUE)
        end

    end

    def AddToken(user, col)
        
        if user == INITIAL_VALUE then
            raise ArgumentError, 'Argument should not be zero'   
        end
        finish=false;
        row = 0 
        while !finish do     
                item = @myBoard[row]
                if item[col] == 0 then
                    item[col] = user
                    finish = true
                end
                if row < ROWS_LENGTH then 
                    row += 1 
                end
                if row == ROWS_LENGTH then
                    finish=true
                end
        end
        return row-1
    end

    def GetBoard
        @myBoard.dup #return a copy
    end

    def CheckIfThereIsWinner(playerId)    
        for row in 0..ROWS_LENGTH-1 do
            for col in 0..COLS_LENGTH-1 do
                if @myBoard[row][col] == playerId then
                    if Horintally(playerId, row,col) then
                        return true
                    elsif Vertically(playerId, row, col) then
                        return true
                    elsif Diagonally(playerId, row, col) then
                        return true
                    end
                end
            end
        end
    end


    def Vertically(playerId, row,column)
        if row + FOURINLINE > ROWS_LENGTH then
            return false
        end
      
        player=@myBoard[row][column]
        for index in 1..FOURINLINE-1 
            if @myBoard[row+index][column] != player then
                return false
            end
        end
        return true
    end

    def Horintally(playerId,row,column)
        if column + FOURINLINE > COLS_LENGTH then
            return false
        end
      
        player=@myBoard[row][column]
        for index in 1..FOURINLINE-1 
            if @myBoard[row][column+index] != player then
                return false
            end
        end
        return true
        
    end

    def DiagonallyUpRight(player,row,column)        
        if column + FOURINLINE < COLS_LENGTH  && row + FOURINLINE < ROWS_LENGTH  then                    
            for index in 1..FOURINLINE-1 
                if @myBoard[row+index][column+index] != player then
                    return false
                end
            end
            return true 
        end
        return false
    end

    def DiagonallyUpLeft(player,row,column)
        if column - FOURINLINE >= 0  && row + FOURINLINE < ROWS_LENGTH  then 
            for index in 1..FOURINLINE-1 
                if @myBoard[row+index][column-index] != player then
                    return false
                end
            end
            return true
        end
        return false
    end

    def DiagonallyDownRight(player,row,column)
        
        if column + FOURINLINE < COLS_LENGTH  && row - FOURINLINE >= 0  then    
            for index in 1..FOURINLINE-1 
                if @myBoard[row-index][column+index] != player then
                    return false
                end
            end
            return true
        end
        return false
    end

    def DiagonallyDownLeft(player,row,column)

        
        if column - FOURINLINE >=0  && row - FOURINLINE >= 0  then 
            for index in 1..FOURINLINE-1 
                if @myBoard[row-index][column-index] != player then
                    return false
                end
            end
            return true
        end
        return false

    end



    def Diagonally(playerId,row,column)
        
        if row < 0 || column <0 || row > ROWS_LENGTH || column > COLS_LENGTH then
            return false
        end
      
        player=@myBoard[row][column]

        if DiagonallyUpRight(player, row, column) then 
            return true
        end

        if DiagonallyUpLeft(player, row, column) then 
            return true
        end

        if DiagonallyDownRight(player, row, column) then 
            return true
        end

        if DiagonallyDownLeft(player, row, column) then 
            return true
        end

        return false
        
    end

     

end