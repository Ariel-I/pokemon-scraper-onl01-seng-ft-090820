class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id 
  
  def initialize(id:, name:, type:, db:)
    @id = id 
    @name = name
    @type = type 
    @db = db
  end
  
  def self.save 
    sql = "INSERT INTO pokemon(name, type, db) VALUES(?, ?, ?)"
    DB[:conn].execute(sql, self.name, self.type, self.db)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemon")[0][0]
  end 
  
  def self.find
    sql = <<-SQL
      SELECT *
      FROM students
    SQL
 
    DB[:conn].execute(sql).map do |row|
      self.new_from_db(row)
    end.first
  end 
  
end
