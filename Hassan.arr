fun tegn-flagg(navn-flagg) -> Image:
  if navn-flagg ==  "norge":
  
var rectRed1=rectangle(60,60, "solid", "crimson")
var rectRed2=rectangle(120,60, "solid", "crimson")
var rectBlue1=rectangle(220, 20, "solid", "darkblue")
var rectBlue2=rectangle(20, 160, "solid", "darkblue")
var rectWhite1=rectangle(220, 40, "solid", "white")
var rectWhite2=rectangle(40, 160, "solid", "white")


put-image(
  rectRed1,30, 130,
  put-image(
    rectRed1,30, 30,
    put-image(
      rectRed2,160, 30,
      put-image(
        rectRed2,160, 130,
        put-image(
          rectBlue1,110, 80,
          put-image(
            rectBlue2,80,80,
            put-image(
              rectWhite1,110,80,
              put-image(
                rectWhite2,80,80,
 
               empty-scene(220, 160)))))))))


  else if navn-flagg == "danmark":
var redDan=rectangle(370, 280, "solid", "crimson")
var whiteDan1 =rectangle(40, 280, "solid", "white") 
var whiteDan2 = rectangle(370,40, "solid", "white")

put-image(whiteDan2, 185, 140,
put-image(whiteDan1, 140, 140,
put-image( redDan, 185, 140,
  
      empty-scene(370, 280))))


  else if navn-flagg == "sverige":
var blueswe= rectangle(160, 100, "solid", "blue")
var yellowswe1= rectangle( 20, 100, "solid", "yellow")
var yellowswe2= rectangle( 160, 20, "solid", "yellow")

put-image( yellowswe1, 60, 50,
put-image( yellowswe2, 80, 50,
put-image( blueswe, 80, 50,  
  

      empty-scene(160, 100))))


  else if navn-flagg == "finland":
var whitefin= rectangle(180, 110, "solid" , "white")
var bluefin1= rectangle(30, 110, "solid" , "darkblue")
var bluefin2= rectangle(180, 30, "solid" , "darkblue")

put-image( bluefin1,65, 55,
  put-image( bluefin2,90,55 ,
    put-image( whitefin, 90, 55,  
 
      empty-scene(180, 110))))

  else if navn-flagg == "island":
var blueice= rectangle(250, 180, "solid" , "darkblue")
var redice1= rectangle(20, 180, "solid" , "red")
var redice2= rectangle(250, 20, "solid" , "red")
var whiteice1= rectangle(40, 180, "solid" , "white")
var whiteice2= rectangle(250, 40, "solid" , "white")

put-image(redice1,90, 90,
put-image(redice2,125, 90,
put-image(whiteice1,90, 90,
put-image(whiteice2,125, 90,    
put-image(blueice,125, 90,


       
       empty-scene(250, 180))))))
  else if navn-flagg == "feroyene":
var whitefor= rectangle( 220, 160, "solid" , "white")
var redfor1= rectangle( 20, 160, "solid" , "red")
var redfor2= rectangle( 220, 20, "solid" , "red")
var bluefor1= rectangle( 40, 160, "solid" , "darkblue")
var bluefor2= rectangle( 220, 40, "solid" , "darkblue")

put-image(redfor1, 80,80,
put-image(redfor2, 110, 80,
put-image(bluefor1, 80, 80,
put-image(bluefor2, 110, 80,  
        put-image(whitefor, 110, 80,
 


          empty-scene(220, 160))))))


  end
end