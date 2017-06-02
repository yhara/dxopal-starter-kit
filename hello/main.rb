include DXOpal

x = 0
y = 150
dx = 2

Image.register(:ringo, 'images/ringo.png')
Sound.register(:get, 'sounds/get.wav')

Window.load_resources do
  Window.loop do
    if x < 0 || x > Window.width
      dx = -dx
    end
    if Input.key_push?(K_SPACE)
      y += dx
      Sound[:get].play
    end
    x += dx

    Window.draw_circle(x, 100, 20, [128, 255, 255, 255])
    Window.draw_circle_fill(100, 100, 10, [10, 100, 30])

    Window.draw(x, y, Image[:ringo])
  end
end
