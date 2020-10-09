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
    sql = "INSERT INTO pokemon(name, type, db) VALUES(?, ?, ?)"
    DB[:conn].execute(sql, self.name, self.type, self.db)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end 
  
  def self.find
    
  end 
  
end
