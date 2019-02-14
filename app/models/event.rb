require 'time'
class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :user
  validates :start_date, presence: true
  validates :duration, presence: true
  validates :title, presence: true, length: {in: 5..140}
  validates :description, presence: true, length: {in: 20..1000}
  validates :price, presence: true, length: {in: 1..1000}
  validates :location, presence: true
  
  def create_event
  	event = Event.new()
  	if :start_date < Date.now
  	  errors.add("Erreur, pas possible de modifier ou créer cet évenement")
  	elsif :duration % 5 != 0 || :duration < 0
  	  errors.add("Erreur, pas possible de créer un événement non divisible à 5")
  	elsif :price == 0
  	  errors.add("Erreur, pas d'événement gratuit pour le moment")
  	else 
      event.create?
  	end
  end
end
