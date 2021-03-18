class Pet < ApplicationRecord
  has_many :histories, dependent: :destroy
  
  def to_s #Devolver el nombre de la mascota
    return name
  end

  def histories_count #Metodo para contar la cantidad de veces que ha visitado al vet
    self.histories.count
  end

  def average_weight #Metodo del promedio de los pesos de la mascota
    # self.histories.pluck(:weight).sum / self.histories_count Otra forma de hacer lo mismo de abajo
    self.histories.sum(:weight) / self.histories_count 
  end

  def average_height #Metodo del promedio de las alturas de la mascota
    self.histories.sum(:height) / self.histories_count
  end

  def max_weight
    self.histories.maximum(:weight)
  end

  def max_height
    self.histories.maximum(:height)
  end
end
