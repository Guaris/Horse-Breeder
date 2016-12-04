function love.load()
  x = 0
  y = 450

  name = 'Bela'
  hp = 8
  mp = 8
  spd = 5

  horse = love.graphics.newImage("horse_r.jpg")
end

function love.update(dt)

  -- controls for bela
  if love.keyboard.isDown("d") then
    horse = love.graphics.newImage("horse_r.jpg")
    x = x + 2
  end
  if love.keyboard.isDown("a") then
    horse = love.graphics.newImage("horse_l.jpg")
    x = x - 2
  end

  -- bind hotkeys
  function love.keyreleased(key)
    if key == "q" then
      love.event.quit()
    end
    if key == "h" then
      hp = hp + 1
    end
  end

end

function love.draw()

  -- release version
  love.graphics.setColor(255,0,0)
  love.graphics.print("Competitive Horse Breeding Sim 2017 Pre-Release 0.02", 200)

  -- background color
  love.graphics.setBackgroundColor(255, 255, 255)

  -- display stats
  love.graphics.setColor(0,0,0)
  love.graphics.print(name, 6, 0)
  love.graphics.print("HP " ..  hp,  6, 12)
  love.graphics.print("MP " .. mp, 6, 24)
  love.graphics.print("SPD " .. spd, 6, 36)

  -- draw bela
  love.graphics.setColor(255,255,255)
  love.graphics.draw(horse,x,y)

  -- draw grass
  love.graphics.setColor(0,200,0)
  love.graphics.rectangle('fill', 0, 530, 800, 600)

  -- draw sun
  love.graphics.setColor(255,255,0)
  love.graphics.circle('fill', 800, 0, 100)

end

function lovequit()

end
