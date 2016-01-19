
  class Contact
    attr_accessor :first_name, :last_name, :email, :note
    attr_reader :id

    @@contacts = []
    @@id = 1

    def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

    contact = Contact.new(
    'Mustafa', 'Halil', 'behind_the_mask93@hotmail.com',
    'Such a cool dude')

    def self.create(first_name, last_name, email, note)
      new_contact = Contact.new(first_name, last_name, email, note)
      @@contacts << new_contact
      new_contact
  end

    def self.all
    @@all
  end

  def self.find(id)
    contact = @@all.find{|contact| contact.id == id}
  end

    def self.get(id)
      @@get
    end

    def self.delete_all
      @@delete_all
    end

    def full_name
      @@full_name
    end

    def update(attribute, value)
      @@update
    end

    def delete
      @@delete
  end

end
