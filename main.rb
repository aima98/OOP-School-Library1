require './menu'

def main
  puts "\nWelcome to School Library App!\n"

  menu = Menu.new
  menu.display_list_of_options
end

main
