class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id 
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name
    @type = type 
    @db = db
  end
  
  def save 
    sql = "INSERT INTO pokemon(name, type, db) VALUES("
  end 
  
  def self.find
  end 
  
end
