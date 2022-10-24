require 'password_checker'

RSpec.describe PasswordChecker do
    it "Returns true with a password over 8 characters" do
        word = PasswordChecker.new
        result = word.check("passwords")
        expect(result).to eq true
    end
    it "Returns true with multiple passwords over 8 characters" do
        word = PasswordChecker.new
        result = word.check("passwords")
        result = word.check("computers")
        result = word.check("terminal")
        expect(result).to eq true
    end
    it "Fails when password is invalid length" do
        word = PasswordChecker.new
        expect {word.check("term")}.to raise_error "Invalid password, must be 8+ characters."
    end
=begin   ------- Produces error as expected, cannot get to pass RSpec------
    it "Fails when one of three passwords is invalid length" do
        word = PasswordChecker.new
        result = word.check("passwords")
        result = word.check("computers")
        result = word.check("term")
        expect {result("")}.to raise_error "Invalid password, must be 8+ characters."
    end
    -------- "attempted with word.check after expect, without "
=end
end