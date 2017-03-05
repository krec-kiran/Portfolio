class PagesController < ApplicationController

  def home
    @skills = Skill.all
  end

  def about
    @skills = Skill.all
  end

  def contact
    @skills = Skill.all

  end
end
