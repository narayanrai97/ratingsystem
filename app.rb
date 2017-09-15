def search
    print "Item category: "
    category = gets.chomp

    items = Book.where("category like ?", "%#{title}%")

    if items.length == 0
        puts "Item not found"
    else
        items.each do |book|
            puts ""
            puts "Title: #{item.title}"
            puts "Description: #{item.description}"
            puts "Year: #{item.genre}"

        end
    end
end

puts "Welcome To Rating System"

puts "1) Rate an Item"
puts "2) Search an Item"
puts ""
print "> "

option = gets.chomp

if option == '1'
    puts "Add Item"
    add
elsif option == '2'
    # puts "Search Item"
    search
else
    puts "Wrong option"
end