class String
  def truncate(size = 5)
    self[0...size] == self ? self : "#{self[0...size]}..."
  end
end
