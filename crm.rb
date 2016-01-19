attr_accessor :first_name, :last_name, :email, :note
attr_reader :id

class CRM
  def print_main_menu
    puts "1. Add a contact"
    puts "2. Modify a contact"
    puts "3. Display all contacts"
    puts "4. Display a contact"
    puts "5. Display contact attribute"
    puts "6. delete a contact"
    puts "7. Exit"
  end

  def main_menu
    choice = 0
    while true
    until choice == 7
    print_main_menu
    choice = gets.chomp.to_i
  end

    # While true
    # print_main_menu
    # choice = get.chomp.to_i
    # return if choice == 7
    # end

  end

  def choose_options(choice)
    case choice
    when 1 then add_contact
    when 2 then modify_a_contact
    when 3 then display_all_contacts
    when 4 then display_a_contact
    when 5 then display_contact_attribute
    when 6 then delete_a_contact
    when 7 then puts "Goodbye"
      Exit
    else "I'm sorry, I'm affraid you cant do that."
  end

  def add_contact
    puts "First Name"
    first_name = gets.chomp.to_s

    puts "Last Name"
    last_name = gets.chom.to_s

    puts "Email"
    email = gets.chomp.to_s

    puts "Note"
    note = gets.chome.to_s

    new_contact = Contact.create(first_name, last_name, email, note)
  end

  def display_all_contacts
    Contact.all.each do |contact|
    puts "#{contact.id} #{contact.full_name} #{contact.email} #{contact.note}"
  end
end
