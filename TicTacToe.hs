-- An Open space has an int of (1+index)
--Player Space (X or O)
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


data Space 
    = Open Int 
    | Player Char
    deriving Eq

    
-- Haskell can automatically make types part of Eq, Ord, Read, Show, Enum, 
-- and Bounded with the `deriving` keyword at the end of the type declaration
-- Show for types that can be converted to a string for display

-- The Eq typeclass is for types whose instances can 
-- be tested for equality with one another.
instance Show Space where
    show (Open q) = show q
    show (Player f) = [f]
-- To make a type a member of type class the instance keyword is used
--Instance shows how the behavior implements using the given data


-- When a Haskell program is executed, `main` is
-- called. It must return a value of type `IO a` for some type
main :: IO ()
main = undefined