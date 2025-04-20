-- Author: Augusto Lee
-- Date: April 20, 2025
-- Description: Main script for the game

-- Load required libraries and files
local gameState = require("states.gameState")

-- Initialize game variables
local currentState

-- LÖVE callback - Runs once at the start
function love.load()
    -- Set random seed based on time
    math.randomseed(os.time())
    
    -- Initialize the game state
    currentState = gameState.new()
    
    -- Set window properties
    love.window.setTitle("Fodinha")
    love.window.setMode(800, 600, {
        resizable = true,
        vsync = true
    })
end

-- LÖVE callback - Runs every frame to update game logic
function love.update(dt)
    -- dt is the time elapsed since last frame (in seconds)
    if currentState and currentState.update then
        currentState:update(dt)
    end
end

-- LÖVE callback - Runs every frame to draw the game
function love.draw()
    if currentState and currentState.draw then
        currentState:draw()
    end
end

-- LÖVE callback - Handles keyboard input
function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
    
    if currentState and currentState.keypressed then
        currentState:keypressed(key)
    end
end

-- LÖVE callback - Handles mouse input
function love.mousepressed(x, y, button)
    if currentState and currentState.mousepressed then
        currentState:mousepressed(x, y, button)
    end
end

