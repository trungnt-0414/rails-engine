# frozen_string_literal: true

module Samurai
  class Ability
    include CanCan::Ability

    class_attribute :abilities
    self.abilities = Set.new

    class << self
      abilities = Set.new

      def register_ability ability
        abilities.add(ability)
      end

      def remove_ability ability
        abilities.delete(ability)
      end
    end

    def initialize user
      Rails.logger.info self.abilities.inspect

      if user.admin?
        can :manage, :all
      else
        can :read, :dashboard
      end

      Ability.abilities.each do |klass|
        ability = klass.send(:new, user)
        @rules = rules + ability.send(:rules)
      end
    end
  end
end
