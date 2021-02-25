class Item
    attr_accessor :name

    @@all = []

    def initialize(params)
        @name = params
        @@all << self
    end

end