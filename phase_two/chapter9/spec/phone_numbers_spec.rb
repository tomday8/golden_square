require 'phone_numbers'

RSpec.describe PhoneNumbers do
    xit "can scan an entry and return its phone numbers" do
        numbers_scan = PhoneNumbers.new
        entry = ("Some contents with a number 07800800800.")
        numbers_scan.check_for_number(entry)
        result = numbers_scan.list
        expect(result).to eq ["07800800800"]
    end

end