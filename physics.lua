physics = {}

function physics.collision(x1,y1,w1,h1, x2,y2,w2,h2)
  return x1 < x2+w2 and
         x2 < x1+w1 and
         y1 < y2+h2 and
         y2 < y1+h1
end
function physics.update(dt)
       --Gravity
       player.velocity = player.velocity+player.acceleration 
       player.y = player.y+ player.velocity
       player.acceleration = 0.09

       --Stops the player from going below the ground
       if platform.y<= player.y +player.height then
         player.velocity = 0
         player.acceleration = 0
       end
       
       end