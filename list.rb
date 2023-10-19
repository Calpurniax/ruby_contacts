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

    def show_one(name)            
        index=@contacts.index {|contact| contact.name==name}    
        return @contacts[index]       
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

    def delete_contact(name)
        index=@contacts.index {|contact| contact.name==name}  
        @contacts.delete_at(index)
    end
    def delete_all
        @contacts.clear
    end
    
end
