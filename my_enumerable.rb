# frozen_string_literal: true

# Module for enumerable functions
module MyEnumerable
  def all?
    each { |elt| return false unless yield elt }
    true
  end

  def any?
    each { |elt| return true if yield elt }
    false
  end

  def filter?
    array = []
    each { |i| array.push(i) if yield i }
    array
  end
end
