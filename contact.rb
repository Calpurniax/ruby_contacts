class Contact
    attr_accessor :name, :number

    def initialize(hash)
       self.name = hash[:name]
       self.number = hash[:number]
    end
    def to_s
        @name +", phone number: " + @number
    end
end

