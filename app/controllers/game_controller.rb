class GameController < ApplicationController
  def user_plays_anything
    #params = ["move" => "rock"]

    @user_move = params["move"].capitalize

    @computer_move = ["rock", "paper", "scissors"].sample


    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    elsif @computer_move == "scissors"
      @outcome = "won"
    end

    if @user_move == "Flamethrower"
      @outcome = "won"
    end


    render("user_plays_anything.html.erb")
  end

  # def user_plays_paper
  #   @user_move = "Paper"
  #
  #   @computer_move = ["rock", "paper", "scissors"].sample
  #
  #   if @computer_move == "rock"
  #     @outcome = "won"
  #   elsif @computer_move == "paper"
  #     @outcome = "tied"
  #   elsif @computer_move == "scissors"
  #     @outcome = "lost"
  #   end
  #
  #   render("user_plays_anything.html.erb")
  # end
  #
  # def user_plays_scissors
  #   @user_move = "Scissors"
  #
  #   @computer_move = ["rock", "paper", "scissors"].sample
  #
  #   if @computer_move == "rock"
  #     @outcome = "lost"
  #   elsif @computer_move == "paper"
  #     @outcome = "won"
  #   elsif @computer_move == "scissors"
  #     @outcome = "tied"
  #   end
  #
  #   render("user_plays_anything.html.erb")
  # end
end
