require_relative '../models/address_book'

class MenuController
    attr_reader :address_book

    def initialize
        @address_book = AddressBook.new
    end

    def main_menu

        puts "Main Menu - #{address_book.entries.count} entries"
        puts "1 - View All Entries"
        puts "2 - Create an entry"
        puts "3 - Search for an entry"
        puts "4 - Import entries from a CSV"
        puts "5 - Exit"
        print "enter your selection: "

        selection = gets.to_i
        
        case selection
            when 1
                system "clear"
                view_all_entries
                main_menu
            when 2
                systsem "clear"
                create_entry
                main_menu
            when 3
                system "clear"
                search_entries
                main_menu
            when 4
                system "clear"
                read_csv
                main_menu
            when 5
                puts "Good-Bye!"
                exit(0)
            else
                system "Clear"
                puts "Sorry, that is not a valid input"
                main_menu
            end
        end

        def view_all_entries
        end

        def create_entry
        end

        def search_entries
        end

        def read_csv
            
    end
end