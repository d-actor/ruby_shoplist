
@items = [ apples = {:name => 'Apples', :cost => '$3'}, bananas = {:name => 'Bananas', :cost => '$4'}, oranges = {:name => 'Oranges', :cost => '$2'}]
@shopping = []


def main_menu
  puts "---SHOPPING LIST---"
  puts "1) Add an item"
  puts "2) Remove an item"
  puts "3) Display current list"
  puts "4) Exit"
  puts "Selection: "
  selection = gets.chomp
  selection.to_i
end

def add_item
  puts "Select an item to add: "
  puts @items.collect { |p| "#{p[:name]}"}
  item = gets.chomp
  puts "Add #{item} to the current list?"
  answer = gets.chomp
  case answer
    when "YES", "yes", "Yes", "Y", "y"
      @shopping << { :name }
      @items.delete(item)
      puts "#{item} has been added to the list."
    else
      puts "#{item} was not added."
  end
end

def del_item
  puts @shopping.join("\n")
  puts "Select a list item to delete: "
  item = gets.chomp
  puts "Delete #{item} from the current list?"
  answer = gets.chomp
  case answer
    when "YES", "yes", "Yes", "Y", "y"
      @shopping.delete(item)
      @items << item
      puts "#{item} has been deleted from the list."
    else
      puts "#{item} was not deleted"
  end
end

def display_list
  puts "Your shopping list is: "
  puts @shopping.collect { |p| "#{p[:name]}: #{p[:cost]}"}
end

while true
  case main_menu
    when 1
      add_item
    when 2
      del_item
    when 3
      display_list
    when 4
      puts "Thank you! Here is your list: "
      puts @shopping.join("\n")
      exit
    else
      puts "Please make a valid selection: "
      main_menu
  end
end
