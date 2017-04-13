
class Board

    ROWS_LENGTH = 5
    COLS_LENGTH = 5

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
end