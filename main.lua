-----------------------------------------------------------------------------------------
--
-- how to calculate the area of a square
-- Made by Davin Rousseau
-- Made on Feb.20th/2019
-----------------------------------------------------------------------------------------
display.setDefault( "background", 0, 255/255, 0 )

local AText = display.newText( "a", 100, 330, native.systemFont, 20 )
AText:setFillColor( 1, 0, 0 )

local BText = display.newText( "b", 100, 380, native.systemFont, 20)
BText:setFillColor( 1, 0, 0 )

local CText = display.newText( "c", 100, 430, native.systemFont, 20 )
CText:setFillColor( 1, 0, 0 )

local AOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 100, 100, 50 )
AOfTrapezoidTextField.id = "a textField"

local BOfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 150, 100, 50 )
BOfTrapezoidTextField.id = "b textField"

local COfTrapezoidTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 100, 50 )
COfTrapezoidTextField.id = "c textField"


local areaOfTrapezoidTextField = display.newText( "the area of the trapezoid is", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 20 )
areaOfTrapezoidTextField.id = "area textField"
areaOfTrapezoidTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "Assets/calculate-button-hi.png", 150, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local lengthOfTrapezoid
    local areaOfTrapezoid
 
    AOfTrapezoid = AOfTrapezoidTextField.text
    BOfTrapezoid = BOfTrapezoidTextField.text
    COfTrapezoid = COfTrapezoidTextField.text

    areaOfTrapezoid = ((AOfTrapezoid + BOfTrapezoid)/2) *COfTrapezoid
  
    areaOfTrapezoidTextField.text = "The area of the trapezzoid is " .. areaOfTrapezoid

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )