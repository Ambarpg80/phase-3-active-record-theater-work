class Audition < ActiveRecord::Base
  belongs_to :role


  def role
    Role.find_by(:character_name)
  end

  def callback
    call = self.find_by(:hired)
    !call
  end

end