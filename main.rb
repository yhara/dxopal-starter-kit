require 'dxopal'
include DXOpal
Image.register(:player, 'images/noschar.png') 
Image.register(:ringo, 'images/ringo.png')
Sound.register(:get, 'sounds/get.wav')
Window.load_resources do
  DX = 8
  DY = 8
  Window.bgcolor = [255, 255, 128]
  player_img = Image[:player].slice_tiles(4, 4)[0]
  x = Window.width / 2
  y = Window.height / 2

  Window.loop do
    if x < Input.mouse_x - DX
      x += DX; x = Window.width if x > Window.width
    elsif x > Input.mouse_x + DX
      x -= DX; x = 0 if x < 0
    end
    if y < Input.mouse_y - DY
      y += DY; y = Window.height if y > Window.height
    elsif y > Input.mouse_y + DY
      y -= DY; y = 0 if y < 0
    end

    Window.draw_font(0, 0, "FPS: #{Window.real_fps}", Font.default, color: C_BLACK)
    Window.draw(x, y, player_img)
  end
end
