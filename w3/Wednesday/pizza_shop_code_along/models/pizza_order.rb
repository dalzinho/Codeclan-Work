require('pg')
require './db/sql_runner'

class PizzaOrder

  attr_accessor :topping, :quantity, :customer_id

  def initialize( options )

    @customer_id = options['customer_id'].to_i if options['customer_id']
    @topping = options['topping']
    @quantity = options['quantity'].to_i
    @order_id = options['order_id'].to_i if options['order_id']
  end

  def save()
    sql = "INSERT INTO pizza_orders ( topping, quantity, customer_id) VALUES ('#{@topping}', #{@quantity}, #{@customer_id}) RETURNING *;"
    result = SqlRunner.run(sql)
    @order_id = result.first["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM pizza_orders;"
    orders = SqlRunner.run(sql)
    return orders.map { |order| PizzaOrder.new( order )}
  end

  def self.delete_all()
    sql = "DELETE FROM pizza_orders;"
    SqlRunner.run(sql)
  end

  def delete()
    sql = "DELETE FROM pizza_orders WHERE id = '#{@id}';"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE pizza_orders SET (topping, quantity, customer_id) = ('#{@topping}', #{@quantity}, #{customer_id}) WHERE id = #{@order_id};"
    SqlRunner.run(sql)
  end

  def customer()
    sql = "SELECT * FROM pizza_orders WHERE id = #{@order_id};"
    customer = SqlRunner.run(sql).first
    result = Customer.new(customer)
    return result
  end

end