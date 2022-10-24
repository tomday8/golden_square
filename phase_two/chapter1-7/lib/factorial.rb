def factorial(n)
    product = 1
   #p "at the start product is #{product}"
    while n > 1
     # p "loop starts, n is #{n}"
     binding.irb
      
     # p "we multiply product: #{product} by n: #{n}"
      product *= n
      n -= 1
     # p "n -1 means n is now #{n}"
      #p "we get new product: #{product}"
    end
    product
  end

puts factorial(5)