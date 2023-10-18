class Contact
    attr_accessor :name, :number

    def initialize(data)
       self.name = data[:name]
       self.number = data[:number]
    end

    def to_s
        "#{@name}, phone number: #{@number}"
    end

end

