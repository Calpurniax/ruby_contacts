require "./contact.rb"
require "./list.rb"

class ContactApp
    attr_writer :contacts

    def initialize
        @contacts = List.new
    end

    def run
        puts "hi, welcome to the contact app"
        loop do
            puts "a - to add a contact"
            puts "s - to show all the contacts"
            puts "x - to exit the app"           
            input = gets.chomp
            case input
            when "a"
                print "New contact name: "
                inputName=gets.chomp
                print "new contact number: "
                inputNumber=gets.chomp
                newContact = {inputName => inputNumber}                
                @contacts.add_contact(newContact)
                puts "#{newContact} was added"
            when "s"
                @contacts.show_all
            when "x"
                break
            else puts "Unrecognized operation"
            end
        end
    end
end

contact_app = ContactApp.new
contact_app.run
