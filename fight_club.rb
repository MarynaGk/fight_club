class Player
  attr_reader :name
  attr_accessor :health, :power, :opponent_power#, :weapon

  @opponent_power = 0

  def initialize name, health = rand(200), power = rand(25)#, weapon
    @name = name
    @health = health
    @power = power
  end

  def hit power
    @health -= power
  end

  def hit
    @opponent_power = @power
    puts "Player #{@name} hits! Player's power: #{@opponent_power}"
  end

  def get_hit
    @health -= @opponent_power.to_i
    puts "Player #{@name} health after the hit:#{@health}"
    puts "________________________________________________"
  end

  def alive?
    if self.health.to_i > 0
      true
    else
      puts "Player #{@name} is dead!"
    end
  end

  def show_result
    puts "#{@name} : #{@health}"
  end

end


player1 = Player.new "A"
player2 = Player.new "B"
while true
  player1.hit
  player2.get_hit
  if !player2.alive?
    break
  end
  player2.hit
  player1.get_hit
  if !player1.alive?
    break
  end
end
