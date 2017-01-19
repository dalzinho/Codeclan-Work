require_relative ('./Person')

class Medic < Person

  def heal()
    return "The patient's condition miraculously improves!"
  end
end