# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_list
    def initialize(email_list)
        @email_list = email_list
    end
    def parse
        email_array = @email_list.include?(",") ? @email_list.split(",").collect(&:split) : @email_list.split
        email_array.flatten.uniq
    end
end