class Client < ApplicationRecord
  has_many :pets, dependent: :destroy

  def to_s #Devolver el nombre del dueño
    return name
  end

  def pets_count #Metodo para contar la cantidad de mascotas
    self.pets.count
  end

end
