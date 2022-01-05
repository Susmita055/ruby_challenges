class Deck
    attr_accessor :cards 

    def display
        puts "=" * 10
        self.cards.each do |card|
            puts "#{card.number} ,#{card.cardtype}"
    end
    puts "="* 10
    end





    def initialize
        @cards= []
        ranks = ["A","K","Q","J","10","9","8","7","6","5","4","3","2","1"]

        ranks.each do |rank|
            @cards.push(Card.new "diamond", rank)
            @cards.push(Card.new "heart",rank)
            @cards.push(Card.new "club",rank )
            @cards.push(Card.new "spade",rank)
        end
    end
    
    def shuffle
        return @cards.shuffle
    end

    def deal
        return @cards.shift
    end
end

    





class Card
    attr_accessor :cardtype , :number
    
    def initialize cardtype, number
     @cardtype = cardtype
     @number = number
    end
end

deck = Deck.new

puts "Shuffling Cards"
deck.shuffle
deck.display

puts "Dealing Cards"
deck.deal
deck.display



