require "weighted_selection/version"

module WeightedSelection
  require 'active_support'

  def self.choose(weighted)
    sum = weighted.inject(1) { |sum, item_and_weight| sum += item_and_weight[1] }
    target = rand(sum)
    weighted.each do |item, weight|
      return item if target <= weight
      target -= weight
    end
  end

end