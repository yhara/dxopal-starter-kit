include DXOpal

x = 0
y = 150
dx = 2

image = Image.load('images/ringo.png')
sound = Sound.new('sounds/get.wav')

Window.loop do
  if x < 0 || x > Window.width
    dx = -dx
  end
  if Input.key_push?(K_SPACE)
    y += dx
    sound.play
  end
  x += dx

  Window.draw_circle(x, 100, 20, [128, 255, 255, 255])
  Window.draw_circle_fill(100, 100, 10, [10, 100, 30])

  Window.draw(x, y, image)
end
