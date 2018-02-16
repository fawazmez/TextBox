-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by : Fawaz Mezher
-- Created on : Feb 2018
--
-- adding a text box
-----------------------------------------------------------------------------------------

-- show the text fawaz mezher
 local myText = display.newText( "Enter your name", 768, 200, native.systemFont, 100 )
-- text color
myText:setFillColor( 1, 0, 1 )
-- makes background white
display.setDefault( "background", 36, 28, 1 )
-- displaying the image on the screen
local answerTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
answerTextField.id = "answer textField"

local enterButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
enterButton.x = display.contentCenterX
enterButton.y = display.contentCenterY
enterButton.id = "enter button"
 
local function enterButtonTouch( event )
    -- it is not perfect, but we will make it better soon
    print( answerTextField.text )

    return true

end

enterButton:addEventListener( "touch", enterButtonTouch )