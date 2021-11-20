-- An Open space has an int of (1+index)
--Player Space (X or O)
-- Game input Char that is a number that is a single digit then output Char 
{-
[Space 1, Space 2, Space 3, 
 Space 4, Space 5, Space 6,
 Space 7, Space 8, Space 9]
-}


-- data means that we're defining a new data type.
-- The part before the = denotes the type, which is Space.
-- The parts after the = are value constructors. 
-- They specify the different values that this type can have. 
--The | is read as or
-- Space can be an Int or a Char
-- declaring my types

data Space 
    = Open Int 
    | Player Char
    deriving Eq
-- Haskell can automatically make types part of Eq, Ord, Read, Show, Enum, 
-- and Bounded with the `deriving` keyword at the end of the type declaration
-- Show for types that can be converted to a string for display

-- The Eq typeclass is for types whose instances can 
-- be tested for equality with one another.

-- Define show for Spaces so it displays components
-- ex) Terminal show $ Open 1 
instance Show Space where
    show (Open q) = show q
    show (Player f) = [f]
-- Once I have my components made I need to think about the board and what will load to the terminal 
-- Also the board needs to know what is a Player
-- I need to create a function for the Board that take inputs but only if a space is available
-- Need to generate a new board to the terminal 
-- Also check to see if Player X or O won to end the game
-- Input from Player needs to be an Char and nothing else 

-- remove the Nth number (index being N-1) from a list
removeNth :: Int -> [a] -> ([a], [a])
removeNth index lst = (left, right)
    where
        (left, ys) = splitAt (index - 1) lst
        right = drop 1 ys
-- Given board, space, and index to place a space in , place space
--at the position N (index being N - 1)
--This is to place X, O on the board
placeSpace :: [a] -> a -> Int -> [a]
placeSpace board space index = xs ++ [space] ++ ys
        where (xs, ys) = removeNth index board 
        --xs is the rest of the list on the left
        --ys is the rest of the list on the right
        --Returns true if Space choosen is an open space
spaceIsOpen :: Space -> Bool
spaceIsOpen (Open _) = True
spaceIsOpen _       = False
-- Return true if the index on the board is open (index is N -1)
openSpace :: [Space] -> Int -> Bool
openSpace board index
    | length board <  i      = False
    | spaceIsOpen $ board !! i = True
    | otherwise              = False
    where i = index - 1 
-- To make a type a member of type class the instance keyword is used
--Instance shows how the behavior implements using the given data
 --getSpacePosition is a list of Spaces 
    --making sure the spaces are valid spaces that the player can choose
getSpacePosition :: [Space] -> IO Int
getSpacePosition board = do
    putStrLn "Enter an open position (1 - 9):"
        -- do notation chains actions together
        -- left arrow converts and IO action to a regular value ... so what is right store it to the left
    input <- getChar 
        --if input is a single digit, return int if not input again
            --is this space taken up already
    if input `elem` ['1' .. '9'] && openSpace board (read [input])
        then return $ (read [input])
        else getSpacePosition board


               
-- :: means to tell the complier this expression should be type . . .  type signature
-- ->  -> function with 2 args types that result in IO
runTicTacToe :: [Space] -> Char -> IO ()
runTicTacToe board playerChr = undefined
-- When a Haskell program is executed, `main` is
-- called. It must return a value of type `IO a` for some type
main :: IO ()
main = undefined