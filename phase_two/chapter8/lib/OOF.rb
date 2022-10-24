#Object Oriented Fun Session

class Pokemon
    def initialize(name)
        @hungry = true
        @name = name
        @element = ""
    end

    def eat(food)
        if food.name[0] == "B"
            @hungry = false
            return " It is #{@hungry} I am hungry"
        else
            "I only like food beginning with B."
        end
    end

    def get_element
        return @element
    end
end

class Food
    def initialize(name)
        @name = name
    end

    attr_accessor :name  #Need to know what is going on here. attr_reader is same as def name, return @name, end (getter) >> attr_accessor allows to write as well (getter and setter)
end

class FirePokemon < Pokemon
    def initialize(name)
        super
        @element = :fire
    end

    def attack(opponent)
        if opponent.get_element == :grass
            return "#{@name} used Fire! It was super effective."
        else
            return "Minor hit."
        end
    end
end

class WaterPokemon < Pokemon
    def initialize(name)
        super
        @element = :water
    end

    def attack(opponent)
        if opponent.get_element == :fire
            return "#{@name} used Water Blast. It was a critical hit."
        else
            return "Minor hit."
        end
    end
end

class GrassPokemon < Pokemon
    def initialize(name)
        super
        @element = :grass
    end

    def attack(opponent)
        if opponent.get_element == :water
            return "#{@name} used Leaf Power. It was really cool."
        else
            return "Minor hit."
        end
    end
end

#Relatioinships between classes, sub classes.

#SubClass is inheriting from another class (SuperClass).
#It will have access to all the original methods plus its own new ones.

#The sub class will override any methods with the same name