require "./contact.rb"

class List 
    attr_writer :contacts

    def initialize()
        @contacts = Array.new()
    end

    def add_contact(hash)
        contact = Contact.new(hash)
        @contacts.push(contact)
    end
    
    def show_all
        if @contacts.length >0
            @contacts.each_index do |index|
                puts index.to_s + " - " + @contacts[index].to_s
            end
        else
            puts "nobody to show"
        end
    end
end
# list =List.new
# list.add_contact(name:"sofia", number:"66666666")
# list.show_all