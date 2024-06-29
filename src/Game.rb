#!/usr/bin/env ruby

### Text-Based-City Builder Game
# This is a text-based city building game.

# require_relative 'City'
require_relative 'Player'
# require_relative 'Events'
require_relative 'Utils'

# Game class
class Game
  def initialize
    @system_save_file = 'save.dat'  # Save file
    @system_debug = false           # Debug mode
    @player = nil                   # Player object
    @city = nil                     # City object
  end

  def start
    clear_screen
    create_save
  end

  def create_save
    # verify if the save file exists, then ask the user if they want to overwrite it
    if File.exist?(@system_save_file)
      puts 'Save file already exists. Do you want to overwrite it? (y/n)\n >'
      input = gets.chomp

      return if input != 'y'

      File.delete(@system_save_file)
    end
    File.open(@system_save_file, 'w') { |file| file.write('') }
    throw_info('Save file created.')

    # create the player and city objects
    @player = Player.new
    @city = City.new
  end
end
