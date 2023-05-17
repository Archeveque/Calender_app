class EventController < ApplicationController
  def new

  end
  def create
    puts "$" * 60
    puts "Voici le message de l'URL :"
    puts  params
    puts "$" * 60
    author = current_user
    @event= Event.create(user: author,title:params["title"],content:params["content"],location:params["location"],price:params["price"] )
    puts @event
    puts author 
    puts params["title"]
    puts params["content"]
    puts params["location"]
    puts params["price"]
    if @event.save
       puts "saved"
       redirect_to"/event/view"
    else
      puts "non valide"
      redirect_to"/event/new"
    end
  end
end
