require "D:/ruby/Sal"

@@allBooks = []

module BOOKS
class Book

include Sal

  @@id=0

  attr_accessor :name
  
  attr_accessor :price

  def initialize(p,n)

    @name = n

    @price = p

    @@id+=1

    @@allBooks.push(@name)

  end

 #function for testing whether price entered is zero or not 

  def prompt_price()

     puts "enter price"

     p = Integer(readline.chomp)

     throw :recive if p==0

     @price = p

     catch :recive do

        prompt_price()

     end

     puts "price is #{@price}"

  end
  
  
end

end 

module EDITIONS
class Edition < BOOKS::Book

     @edition_num

     def initialize(e,p,n)
        if p==0                    #raise exception is price is zero
          raise "exception : zero price"
        end
        @edition_num = e
        super(p,n)
     end
     
end

end
def search(usr_bname)
    
    @@allBooks.each do |b| 
    
    if b == usr_bname

      return "your book is found"

    end

  end
      return "your is book is not dere!!"
end


ch = "y"

# interface for entering edition's 

while ch == "y" do

  puts "Enter edition no"
  ed_no = Integer(gets.chomp)
  puts "Enter price "
  pri =   Integer(gets.chomp)
  puts "Enter name of book"
  nam = gets.chomp 
  
  e = EDITIONS::Edition.new(ed_no,pri,nam)

  puts "calling final sales price for given book object"

  puts e.final_sale_price

  
  puts "Do you want to enter more books ?? (y/n)"
  ch = gets.chomp
end


def printall_books
    @@allBooks.each do 
    |b| puts b                   
    end
end

puts "Books in inventory"
#printing all 
printall_books


#searching interface for user

ch = "y"

while ch == "y" do

  puts "which book you want to search ?"

  b = gets.chomp

  puts search(b)

  puts "Do you want to search more books ?? (y/n)"
  ch = gets.chomp
end


#namespacing demo

puts "namespace access"
puts Sal::SALE_TAX_PERCENT 

