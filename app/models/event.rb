class Event < ApplicationRecord
  has_many :attendants
  has_many :users, through: :attendants
  belongs_to :user
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :title, presence: true, length: {in: 5..140}
  validates :description, presence: true, length: {in: 20..1000}
  validates :price, presence: true, length: {in: 1..1000}
  validates :location, presence: true
  def create_event
	event = Event.new(params)
	if params[:start_date] < Time.now
	  puts "Erreur, pas possible de modifier ou créer cet évenement"
	elsif params[:duration] % 5 != 0 || params[:duration] < 0
	  puts "Erreur, pas possible de créer un événement non divisible à 5"
	elsif params[:price] == 0
	  puts "Erreur, pas d'événement gratuit pour le moment"
	elsif event.create?
	  puts "Utilisateur bien créé !"
	end
  end
end
