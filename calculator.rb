on = true
def get_num()
    puts "Input a number:"
    n1 = gets.chomp
    puts "Input another number:"
    n2 = gets.chomp
    num = [n1.to_f, n2.to_f]
    return num
end
while on == true
    25.times { print "-" }
    puts
    puts "Ruby Calculator"
    puts "Choose an operation: 1)add - 2)subtract - 3)multiply - 4)divide - 5)modular"
    op = gets.chomp
    case op
        when '1' 
            num = get_num()
            puts "#{num[0]} + #{num[1]} = #{num[0] + num[1]}"

        #subtraction
        when '2'
            num = get_num()
            puts "#{num[0]} - #{num[1]} = #{num[0] - num[1]}"

        #mult
        when '3'
            num = get_num()
            puts "#{num[0]} x #{num[1]} = #{num[0] * num[1]}"

        #div
        when '4'
            num = get_num()
            puts "#{num[0]} / #{num[1]} = #{num[0] / num[1]}"

        #mod
        when '5'
            puts "The modular value of #{num[0]} and #{num[1]} is: #{num[0] % num[1]}"
        else 
            puts "Invalid Option! Try Again."
        end
    keep = true
    while keep == true
        puts "Wanna calculate something else? 1)Yes - 2)No"
        off = gets.chomp
        if off == '1'
            keep = false
            puts "Let's calculate then!"
        elsif off == '2'
            on = false
            keep = false
            puts "Goodbye, then!"
        else
            puts "Invalid option! Try again!"
        end
    end
end