#!/usr/bin/env ruby

# City class
class City
  def initialize
    @name = nil
    @population = 0
    @funds = 0
    @happiness = 50
    @npcs = []
    @education = 50
    @crime = 50
    @pollution = 50
    @unemployment = 50
  end

  def change_name(name)
    @name = name
  end

  def change_population(population)
    @population = population
  end

  def change_funds(funds)
    @funds = funds
  end

  def change_happiness(happiness)
    @happiness = happiness
  end

  def change_npcs(npcs)
    @npcs = npcs
  end

  def change_education(education)
    @education = education
  end

  def change_crime(crime)
    @crime = crime
  end

  def change_pollution(pollution)
    @pollution = pollution
  end

  def change_unemployment(unemployment)
    @unemployment = unemployment
  end

  def add_npc(npc)
    @npcs.push(npc)
  end

  def remove_npc(npc)
    @npcs.delete(npc)
  end
end
