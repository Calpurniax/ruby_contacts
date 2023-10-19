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
            puts "n - to show one contact's number"
            puts "s - to show all the contacts"
            puts "d - to delete one contact"
            puts "g - to delete all contacts"
            puts "x - to exit the app"           
            input = gets.chomp
            case input
            when "a"
                print "New contact name: "
                inputName=gets.chomp
                print "new contact number: "
                inputNumber=gets.chomp
                newContact = {name: inputName, number: inputNumber}                
                @contacts.add_contact(newContact)
                puts "#{newContact} was added"
            when "n"
                print "Insert contact name: "
                name= gets.chomp                
                contactFound = @contacts.show_one(name)
                puts contactFound               
            when "s"
                @contacts.show_all
            when "d"
                print "Insert contact name to delete: "
                name = gets.chomp
                puts "are you sure you want to delete this item? y/n "
                confirmation = gets.chomp
                if confirmation== "y"
                    removedContact = @contacts.delete_contact(name)
                    puts "#{removedContact.name} was deleted"
                else puts "cancelled"
                end
            when "g"
                print "are you sure you want to delete all contacts? y/n "
                confirmation = gets.chomp
                if confirmation== "y"
                    @contacts.delete_all
                    puts "all contacts deleted"
                else
                    puts "cancelled"
                end
            when "x"
                break
            else puts "Unrecognized operation"
            end
        end
    end
end

contact_app = ContactApp.new
contact_app.run
