#!/usr/bin/env ruby

### Text-Based-City Builder Game
# This is a text-based city building game.

# Requirements
require_relative 'Render'
require_relative 'City'
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
    @version = '0.0.1'              # Game version
  end

  def start
    clear_screen

    render_title
  end

  def render_title
    render_figlet('Game Name', 'big')
    puts "\nVersion: #{@version}\n"
    puts "By @colack\n\n"
    render_box('1. New Game')
    render_box('2. Load Game')
    render_box('3. Exit')

    print '> '
    input = gets.chomp

    title_screen_options(input)
  end

  def title_screen_options(input)
    while input != '3'
      case input
      when '1'
        create_save
        break
      when '2'

        break
      else
        input = reject_input
      end
    end
  end

  def reject_input
    puts 'Invalid option. Please try again.'
    print '> '
    gets.chomp
  end

  def create_save
    # verify if the save file exists, then ask the user if they want to overwrite it
    if File.exist?(@system_save_file)
      puts "Save file already exists. Do you want to overwrite it? (y/n)\n\n"
      print '> '
      input = gets.chomp

      return if input != 'y'

      File.delete(@system_save_file)
    end
    File.open(@system_save_file, 'w') { |file| file.write('') }
    throw_info('Save file created.')

    # create the player and city objects
    @player = Player.new
    @city = City.new

    # save the game
    save

    # start the game
    start_game
  end

  def load_save
    if File.exist?(@system_save_file)
      save_file = File.open(@system_save_file, 'r')
      save_data = save_file.read
      save_file.close

      player_data = save_data.split('PLAYER')[1]
      city_data = save_data.split('CITY')[1]

      @player = Player.new
      @city = City.new

      @player.load(player_data)
      @city.load(city_data)
    else
      throw_error('Save file not found.')
    end
  end

  def save
    save_data = "PLAYER\n#{@player}\nCITY\n#{@city}"
    File.open(@system_save_file, 'w') { |file| file.write(save_data) }
    throw_info('Game Saved')
  end

  def start_game
    # This is assuming that the player is starting a new game

  end
end
