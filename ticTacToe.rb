new_board  = "1 / 2 / 3\n4 / 5 / 6\n7 / 8 / 9"

array_A = []
array_B = []

turn = 1

first_row = [1,2,3]
sec_row = [4,5,6]
third_row = [7,8,9]
first_col = [1,4,7]
sec_col = [2,5,8]
third_col = [3,6,9]
first_dia = [1,5,9]
sec_dia = [3,5,7]

over = false

loop do
    puts "Current turn: #{turn}"
    puts "enter number:"
    player_choice = gets.chomp.to_i
    if turn.odd?      
        player_A = player_choice
        "Player A chose #{player_A}"
        array_A.push(player_A)
    elsif turn.even?
        player_B = player_choice
        "Player A chose #{player_B}"
        array_B.push(player_B)
    elsif turn == 9
        puts "Gameover!"
        break
    end
    turn += 1
    if (array_A & first_row) == first_row || 
        (array_A & sec_row) == sec_row ||
        (array_A & third_row) == third_row || 
        (array_A & first_col) == first_col || 
        (array_A & sec_col) == sec_col || 
        (array_A & third_col) == third_col || 
        (array_A & first_dia) == first_dia || 
        (array_A & first_row) == first_row || 
        (array_A & sec_dia) == sec_dia
        over = true
        puts "Player A wins!"
        break
    elsif (array_B & first_row) == first_row || 
        (array_B & sec_row) == sec_row ||
        (array_B & third_row) == third_row || 
        (array_B & first_col) == first_col || 
        (array_B & sec_col) == sec_col || 
        (array_B & third_col) == third_col || 
        (array_B & first_dia) == first_dia || 
        (array_B & first_row) == first_row || 
        (array_B & sec_dia) == sec_dia
        over = true
        puts "Player A wins!"
        break
    end
    break if over == true
end