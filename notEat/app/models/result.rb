class Result < ActiveRecord::Base

  references :food, :reason

end
