# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split(/, | /).uniq
  end

end

email_addresses = "arel@test.com, arel@test.com test@avi.com, test@arel.com"
parser = EmailAddressParser.new(email_addresses)
puts parser.parse