class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id 
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name
    @type = type 
    @db = db
  end

  def self.save(name, type, db)
   db.execute("INSERT INTO pokemon(name, type) VALUES(?, ?)", name, type)
  end
  
  def self.find 
    sql = <<-SQL
    SELECT *
    FROM pokemon
    WHERE name = ?
    SQL
    
    DB[:conn].execute(sql)
  end 
  
end
