require_relative './stack'

# your code here
class MyQueue
    def initialize
        @s1 = Stack.new
        @s2 = Stack.new
    end

    def add (value)
        @s1.push( value)
    end

    def remove
        until @s1.empty? do
            @s2.push(@s1.pop)
        end
        hold_value = @s2.pop
        until @s2.empty? do
            @s1.push(@s2.pop)
        end
        hold_value
    end

    def peek
        until @s1.empty? do
            @s2.push(@s1.pop)
        end
        @s2.peek
    end
end