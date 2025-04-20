-- constants.lua
-- Game constants and configurations for Fodinha

local Constants = {
    -- Card configuration
    SUITS = {
        {name = "Diamonds", symbol = "♦", value = 1},  -- Lowest suit
        {name = "Spades", symbol = "♠", value = 2},
        {name = "Hearts", symbol = "♥", value = 3},
        {name = "Clubs", symbol = "♣", value = 4}      -- Highest suit
    },
    
    -- Modified Fodinha card ranking (from lowest to highest)
    RANKS = {
        {name = "4", value = 1},
        {name = "5", value = 2},
        {name = "6", value = 3},
        {name = "7", value = 4},
        {name = "Q", value = 5},
        {name = "J", value = 6},
        {name = "K", value = 7},
        {name = "A", value = 8},
        {name = "2", value = 9},
        {name = "3", value = 10}
    },
    
    -- Game configuration
    MIN_PLAYERS = 3,
    MAX_PLAYERS = 7,
    STARTING_LIVES = 7,
    
    -- Deal pattern for rounds
    DEAL_PATTERN = {1, 2, 3, 4, 5, 4, 3, 2, 1},
    
    -- Game states
    STATES = {
        DEAL = "deal",
        BID = "bid",
        PLAY = "play",
        END_ROUND = "end_round",
        GAME_OVER = "game_over"
    },
    
    -- Colors
    COLORS = {
        TEXT = {1, 1, 1, 1},               -- White
        TEXT_HIGHLIGHT = {1, 0.8, 0, 1},   -- Golden
        BACKGROUND = {0.1, 0.3, 0.2, 1},   -- Dark green
        CARD = {1, 1, 1, 1},               -- White
        CARD_BACK = {0.2, 0.2, 0.8, 1},    -- Blue
        RED_SUIT = {0.8, 0.1, 0.1, 1},     -- Red (for Hearts and Diamonds)
        BLACK_SUIT = {0.1, 0.1, 0.1, 1},   -- Black (for Clubs and Spades)
        TRUMP = {1, 0.7, 0, 1},            -- Orange (highlight for trump suit)
        BUTTON = {0.3, 0.5, 0.3, 1},       -- Green
        BUTTON_HOVER = {0.4, 0.6, 0.4, 1}, -- Lighter green
        LIVES = {0.7, 0.1, 0.1, 1}         -- Red for lives indicator
    },
    
    -- UI settings
    UI = {
        CARD_WIDTH = 80,
        CARD_HEIGHT = 120,
        CARD_RADIUS = 5,  -- Corner radius
        HAND_SPACING = 20, -- Space between cards in hand
        BUTTON_HEIGHT = 40,
        BUTTON_PADDING = 10,
        FONT_SIZE = 16,
        TITLE_FONT_SIZE = 24,
        CARD_FONT_SIZE = 20,
        PLAYER_SPACING = 150  -- Space between player areas
    }
}

return Constants