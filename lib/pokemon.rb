class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id 
  
  def initialize(name:, type:, db:)
    @name = name
    @type = type 
    @db = db
    @id = id
  end
  
  def save 
  end 
  
  def self.find
  end 
  
end
