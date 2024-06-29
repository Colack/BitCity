#!/usr/bin/env ruby

# Player class
class Player
  def initialize
    @name = nil         # Player's name
    @purse = 0          # Player's money
    @happiness = 50     # Player's happiness
    @health = 50        # Player's health
    @energy = 50        # Player's energy
    @age = 18           # Player's age
    @job = nil          # Player's job
    @education = nil    # Player's education
    @skills = []        # Player's skills
    @items = []         # Player's items
  end

  def change_name(name)
    @name = name
  end

  def change_purse(purse)
    @purse = purse
  end

  def change_happiness(happiness)
    @happiness = happiness
  end

  def change_health(health)
    @health = health
  end

  def change_energy(energy)
    @energy = energy
  end

  def change_age(age)
    @age = age
  end

  def change_job(job)
    @job = job
  end

  def change_education(education)
    @education = education
  end

  def change_skills(skills)
    @skills = skills
  end

  def change_items(items)
    @items = items
  end
end
