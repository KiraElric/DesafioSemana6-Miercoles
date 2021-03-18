class Pet < ApplicationRecord
  has_many :histories, dependent: :destroy
  
  def to_s #Devolver el nombre de la mascota
    return name
  end
end
