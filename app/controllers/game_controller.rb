class GameController < ApplicationController
  def user_plays_rock

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Rock"
      @result = " tied"
      @label = "label-warning"
    elsif @computer_move == "Paper"
      @result = " lost"
      @label = "label-danger"
    elsif @computer_move == "Scissors"
      @result = " won"
      @label = "label-success"
    end

    render("game/play_rock.html.erb")
  end

  def user_plays_paper

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Paper"
      @result = " tied"
      @label = "label-warning"
    elsif @computer_move == "Rock"
      @result = " won" 
      @label = "label-success"
    elsif @computer_move == "Scissors"
      @result = " lost"
      @label = "label-danger"
    end

    render("game/play_paper.html.erb")
  end

  def user_plays_scissors

    @computer_move = ["Rock", "Paper", "Scissors"].sample

    if @computer_move == "Scissors"
      @result = " tied"
      @label = "label-warning"
    elsif @computer_move == "Rock"
      @result = " lost"
      @label = "label-danger"
    elsif @computer_move == "Paper"
      @result = " won"
      @label = "label-success"
    end

    render("game/play_scissors.html.erb")
  end

end
