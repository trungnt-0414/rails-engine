module Samurai
  module Tasks
    class Task < ApplicationRecord
      belongs_to :user
    end
  end
end
