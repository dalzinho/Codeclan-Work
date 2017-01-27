require_relative("../db/sql_runner")

class User

  attr_reader :id
  attr_accessor :name

  def initialize( options )
    @id = options['id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO users (name) VALUES ('#{ @name }') RETURNING id"
    user = SqlRunner.run( sql ).first
    @id = user['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM users"
    users = User.get_many(sql)
    return users
  end

  def self.delete_all() 
    sql = "DELETE FROM users"
    SqlRunner.run(sql)
  end

  def self.get_many(sql)
    users = SqlRunner.run(sql)
    result = users.map {|user| User.new(user)}
    return result
  end

  def locations()
    sql = "SELECT l.* FROM locations l INNER JOIN visits ON visits.location_id = l.id WHERE visits.user_id = #{@id};"
    return Location.get_many(sql)
  end

end