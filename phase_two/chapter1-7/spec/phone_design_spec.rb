require 'phone_design'

RSpec.describe PhoneBook do
    context "with no entries" do
        it "has an empty list" do
            phone_book = PhoneBook.new
            expect(phone_book.list).to eq [] 
        end
    end

    context "given an entry with a number only" do
        it "stores the number" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("07800000000")
            expect(phone_book.list).to eq ["07800000000"]
        end
    end

    context "given an entry with a number in it" do
        it "stores the number" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("I was calling my friend 07800000000 the other day")
            expect(phone_book.list).to eq ["07800000000"]
        end
    end

    context "given an entry with two numbers in it" do
        it "stores both numbers" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My faves: 07800000000, 07900000000")
            expect(phone_book.list).to eq ["07800000000", "07900000000"]
        end
    end

    context "given an entry with no numbers" do
        it "stores nothing" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My faves:")
            expect(phone_book.list).to eq []
        end
    end

    context "given two entries" do
        it "stores all numbers" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend George: 07800000000")
            phone_book.extract_numbers("My friend Dave: 07700000000")
            phone_book.extract_numbers("My friend Sarah: 07900000000")
            expect(phone_book.list).to eq ["07800000000", "07700000000", "07900000000"]
        end
    end

    context "with too few digits provided" do
        it "does not store it" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend George: 0800000000")
            expect(phone_book.list).to eq []
        end
    end

    context "given an entry with duplicate numbers" do
        it "only stores the unique numbers" do
            phone_book = PhoneBook.new
            phone_book.extract_numbers("My friend George: 07800000000")
            phone_book.extract_numbers("My mate George: 07800000000")
            expect(phone_book.list).to eq ["07800000000"]
        end
    end

end