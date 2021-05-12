puts "deleting all..."
Games.destroy_all
Console.destroy_all
Developer.destroy_all

puts "creating consoles..."
snes = Console.create(name: "SNES") 
sega_cd = Console.create(name: "Sega CD") 

puts "creating developers"
working_designs = Developer.create(company: "Working Designs")
squaresoft = Developer.create(company: "Squaresoft")
sega = Developer.create(company: "Sega")
enix = Developer.create(company: "Enix")

puts "creating games..."
final_fantasyiv = Games.create(title: "Final Fantasy IV", genre: "RPG", year: 1991, developer: squaresoft, console: snes)
final_fantasyv = Games.create(title: "Final Fantasy V", genre: "RPG",  year: 1992, developer: squaresoft , console: snes)
final_fantasyvi = Games.create(title: "Final Fantasy VI", genre: "RPG", year: 1994, developer: squaresoft , console: snes)
soul_blazer = Games.create(title: "Soul Blazer", genre: "Action RPG", year: 1992, developer: enix , console: snes)
illusion_of_gaia = Games.create(title: "Illusion of Gaia", genre: "Action RPG", year: 1993, developer: enix , console: snes)
lunar = Games.create(title: "Lunar: The Silver Star Story", genre: "RPG", year: 1993, developer: working_designs , console: sega_cd)
lunarii = Games.create(title: "Lunar 2: Eternal Blue", genre: "RPG", year: 1995, developer: working_designs , console: sega_cd)
popful_mail = Games.create(title: "Popful Mail", genre: "Action RPG", year: 1995, developer: working_designs , console: sega_cd)
dark_wizard = Games.create(title: "Dark Wizard", genre: "Strategy",  year: 1993, developer: sega , console: sega_cd)
shining_force_cd = Games.create(title: "Shining Force CD", genre: "Strategy", year: 1994, developer: sega , console: sega_cd)
vay = Games.create(title: "Vay", genre: "RPG",  year: 1993, developer: working_designs , console: sega_cd)





