# What will the following code print? Why? Don't run it until you've attempted to answer.

def count_sheep
  5.times do |sheep| #do...end is a block to times, so our last line for determining return is times!
    puts sheep
  end
end

puts count_sheep #outputs the return value

#Prints sheep sheep sheep sheep /n nil
#5.times is distructive, puts returns nil

#WRONG
#Prints 0 1 2 3 4 5 #5 is the return value!!

=begin
We're using Integer#times within the count_sheep method to count from 0 to 4 (#times starts at 0). 
Therefore, it's no surprise that the output includes 0 through 4. What may be surprising, however, 
is the fact that the output includes 5. Where did that 5 come from? If you study #times in the Ruby 
docs, you'll know that after iterating 5 times, the block returns the initial integer. Which, in 
this case, is 5.

We can use this knowledge combined with what we learned from the previous exercises to determine why
5 was printed. When looking at count_sheep we can see that the #times block is the only code in the 
method. This means it's also the last line in the method. Since #times returns the initial integer, 
we now know that the return value of count_sheep is 5.
=end