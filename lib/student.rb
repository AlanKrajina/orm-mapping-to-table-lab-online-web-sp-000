class Student
  attr_accessor :name, :grade
  attr_reader :id
  
 def initialize(name,grade, id=nil)
 @name = name
 @grade = grade
 end
  
  def self.create_table
        sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade INTEGER
        )
        SQL
    DB[:conn].execute(sql) 
  end
  
  def self.drop_table
    PRAGMA foreign_keys = OFF;

    DROP TABLE students;
    UPDATE people
    SET address_id = NULL;
 
    PRAGMA foreign_keys = ON;
  end
  
end
