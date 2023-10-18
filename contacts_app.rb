require "./contact.rb"
require "./list.rb"

class ContactApp
    attr_writer :contacts

    def initialize
        @contacts = List.new
    end

    def run
        puts "hi, welcome to the contact app"
    end
end

contact_app = ContactApp.new
contact_app.run
