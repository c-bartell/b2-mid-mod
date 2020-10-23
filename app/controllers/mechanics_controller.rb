class MechanicsController < ApplicationController
  def index
    @mechanics = Mechanic.all
  end
end
