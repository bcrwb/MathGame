class Player
attr_accessor :name, :score

def initialize(name, score)
@name = name
@score = score
end

def to_s
    "Name: #{@name}, Score: #{@score}"
end


end

