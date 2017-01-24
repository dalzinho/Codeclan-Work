require 'pg'

class SpaceBounty

attr_accessor :name, :last_known_location, :favourite_weapon, :danger_level, :id

  def initialize( options )
    @name = options['name']
    @last_known_location = options['last_known_location']
    @favourite_weapon = options['favourite_weapon']
    @danger_level = options['danger_level']
    @id = options['id'].to_i if options['id']
  end

  def save()
   db = PG.connect( {dbname: 'space_bounty', host: 'localhost'})
   sql = "INSERT INTO bounties (name, last_known_location, favourite_weapon, danger_level) VALUES ('#{@name}', '#{@last_known_location}', '#{@favourite_weapon}', #{@danger_level}) RETURNING *;"
   @id = db.exec(sql).first['id'].to_i
   db.close
  end

  def update()
    db = PG.connect( {dbname: 'space_bounty', host: 'localhost'})
    sql = "UPDATE bounties SET (name, last_known_location, favourite_weapon, danger_level) = ( '#{@first_name}', '#{@last_known_location}', '#{@favourite_weapon}', '#{@danger_level}') WHERE id = #{@id};"
    db.exec(sql)
    db.close  

  end

  def delete()
    db = PG.connect( {dbname: 'space_bounty', host: 'localhost'})
    sql = "DELETE FROM bounties WHERE id = #{@id};"
    db.exec(sql)
    db.close
  end

  # class methods

  def self.all()
    db = PG.connect ( {dbname: 'space_bounty', host: 'localhost'})
    sql = 'SELECT * FROM bounties;'
    all_bounties = db.exec(sql)
    db.close
    return all_bounties.map { |individual_bounty| SpaceBounty.new(individual_bounty)}
  end

  def self.delete_all()
    db = PG.connect ({dbname: 'space_bounty', host: 'localhost'})
    sql = "DELETE FROM bounties;"
    db.exec(sql)
    db.close
  end

end