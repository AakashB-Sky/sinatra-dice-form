require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/process_roll/:dice/:sides") do
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
