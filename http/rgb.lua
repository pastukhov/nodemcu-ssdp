red = 9
green = 10
blue = 3


local function rgbinit()
      print("Setting up pwm")
      pwm.setup(red,1023,0)
      pwm.setup(green,1023,0)
      pwm.setup(blue,1023,0)
      pwm.start(red)
      pwm.start(green)
      pwm.start(blue)
      isInit = true
end


local function led(r,g,b)
  if isInit then
     if r then pwm.setduty(red,r) end
     if g then pwm.setduty(green,g) end
     if b then pwm.setduty(blue,b) end
  else
     rgbinit()
     if r then pwm.setduty(red,r) end
     if g then pwm.setduty(green,g) end
     if b then pwm.setduty(blue,b) end
  end
end



return function (connection, args)
   print('The color is ', args.r,args.g,args.b)
    led(args.r,args.g,args.b)
   connection:send("HTTP/1.0 200 OK\r\nContent-Type: application/json\r\nCache-Control: private, no-store\r\n\r\n")
   connection:send('{"error":0, "message":"OK", "heap":'..node.heap()..'}')
end


