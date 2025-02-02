require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:index)
end

get("/process_roll") do
  # define variables
  @dice = params.fetch("dice").to_i
  @sides = params.fetch("sides").to_i
  @rolls = Array.new

  # roll the dice
  @dice.times do
    roll = rand(1..@sides)
    @rolls.push(roll)
  end

  erb(:process_roll)
end
