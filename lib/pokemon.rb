class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id 
  
  def initialize(name)
    @id = id 
    @name = name
    @type = type 
    @db = db
  end

  def save
    sql = "INSERT INTO pokemon(name, type, db) VALUES(?, ?, ?)"
    DB[:conn].execute("sql, self.name, self.type, self.db")
  end
  
end
