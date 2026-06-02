-- UI
local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "My Super Hub", -- window title
    Icon = "door-open", -- lucide icon or "rbxassetid://" or URL. optional
    Author = "by .ftgs and .ftgs", -- window subtitle. optional
    Folder = "MySuperHub", -- folder to save keys and images
    
    Size = UDim2.fromOffset(580, 460), -- window size
    MinSize = Vector2.new(560, 350), -- minimal window size
    MaxSize = Vector2.new(850, 560), -- maximum window size
    Transparent = true, -- window transparency
    Theme = "Dark", -- library theme
    Resizable = true, -- the ability to rezize window
    SideBarWidth = 200, -- sidebar (tabs) width
    HideSearchBar = false, -- hide search bar
    ScrollBarEnabled = true, -- scrollbars that are located to the right of the scroll frame
 
    BackgroundImageTransparency = 0.42, -- background image transparency
    Background = "", -- rbxassetid
    
    User = { -- user information located at the bottom left
        Enabled = true, -- can be toggled with Window.User:Enable() or Window.User:Disable()
        Anonymous = true, -- can be toggled with Window.User:SetAnonymous(true) --(true or false)
        Callback = function() -- callback on click. optional. it can be removed
            print("clicked to the 'user icon'")
        end,
    },
    
    KeySystem = { -- key system from this library
        --  ↓ DEPRECATED
        -- Key = { "1234", "5678" },
 
        -- ✓ use this instead:
        KeyValidator = function(enteredKey)
            if enteredKey == "1234" then
                return true -- this means the key is correct
            end
            return false -- this is if the key is not correct 
        end,
 
        Note = "Example Key System.",
        
        Thumbnail = { -- the image which is located on the left. optional. it can be removed
            Image = "rbxassetid://1234",
            Title = "Thumbnail example", -- optional. it can be removed
        },
        URL = "YOUR LINK TO GET KEY (Discord, Linkvertise, Pastebin, etc.)", -- link to get the key
        
        SaveKey = true, -- automatically save and load the key.
    },
})
