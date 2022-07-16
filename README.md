
 Tic-Tac-Toe-Haskell
Resources and Technologies used :

Haskell Quick reference - IEEE VisWeek Tutorial 2008 (Adobe Acrobat)
hoogle.haskell.org 
haskell.org
Glasgow Haskell Complier https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/
https://downloads.haskell.org/~ghc/latest/docs/html/libraries/
Youtube
Stack OverFlow
The Haskell Tool Stack 
ZVON
wiki.haskell.org
learnyouahaskell.com
Visual Studio Code 
Github Desktop 
Github
Windows Powershell 
Terminal 
IO, GHCi, Prelude, Data.List (Operations on lists)






Resources and Technologies used 
Haskell Quick reference - IEEE VisWeek Tutorial 2008 (Adobe Acrobat) hoogle.haskell.org haskell.org Glasgow Haskell Complier https://downloads.haskell.org/~ghc/latest/docs/html/users_guide/ https://downloads.haskell.org/~ghc/latest/docs/html/libraries/ Youtube Stack OverFlow The Haskell Tool Stack ZVON wiki.haskell.org learnyouahaskell.com Visual Studio Code Github Desktop Github Windows Powershell Terminal IO, GHCi, Prelude, Data.List (Operations on lists)
 Mindset and learning process Prep questions and thoughts before starting the project: 
How is Haskell Different from C#? How can I learn the Haskell syntax in a way I can understand? What do other developers recommend when creating basic projects for Haskell? Research Haskell interactive environments, Libraries and Compliers. Remember JS and if there are any similarities. 
Prep questions and thoughts for starting the project: 
Do I understand what the project is its minimum criteria? What Technologies do I plan to use? The deconstruction process of the project What is Tic Tac Toe? How can I display the project? and in what way? Separate the components that are static and the component that are interactive The board would be static and the spaces would be interactive Would I have the board just be a simple list within a list that I can split? Would I have my Spaces contain numbers? or blank? 
The deconstruction process of the project rules and conditions: 
What is considered a player and an open space? How can the player tell if they won? or tied? What if the player inputs something that is not X or O? Understand what is needs to an input and output? input: Number output: Char displays 
Steps in the code: 
creating the main Declaring my Data Types - Space can be both a Player and an Open Show for types that can be converted to a string for display Eq for comparing the types instance will help when outputting to the termina So instead of out putting strings for my player and space it will output number for Open and a letter for Player making empty spaces on board and how to manipulate them explaining RemoveNth Lst = [1, 2, 3, 4, 5, 6, 7, 8, 9] splitAtNth Lst 5 ([1, 2, 3, 4, 5],[6 ,7 ,8, 9]) But now I have to drop the 5 to input the Player ([1, 2, 3, 4 ],[6 ,7 ,8, 9]) (have 2 lists (xs, ys) then join 1 list (space)) joinWithSpace (xs, ys) space = xs ++ [space] ++ ys example) if play chooses 3 Lst = [1, 2, 3, 4, 5, 6, 7, 8, 9] splitAtNth Lst 3 ([1, 2 ],[4, 5, 6 ,7 ,8, 9]) That 3 can now be a Player Is the space on the board Open? return true Are the space chosen by the play an open space? return true Locate the position of selected open space to see if it a valid choice creating the outlining for board creating the Players creating winning conditions/ Tied Loading up the Tic Tac Toe game reloading board if any inputs were made creating the list of open spaces
 Challenges and things I did not know about Haskell:
 The syntax of Haskell Types and Typeclasses Functions also have types - When writing functions, you can choose to give them an explicit type declaration. Polymorphic functions - The type declaration of head states that it takes a list of any type and returns one element of that type. A typeclass is a sort of interface that defines some behavior. If a type is a part of a typeclass, that means that it supports and implements the behavior the typeclass describes. The Eq typeclass provides an interface for testing for equality. Any type where it makes sense to test for equality between two values of that type should be a member of the Eq class. All standard Haskell types except for IO (the type for dealing with input and output) and functions are a part of the Eq typeclass. So if there's an Eq class constraint for a type variable in a function, it uses == or /= somewhere inside its definition. All the types we mentioned previously except for functions are part of Eq, so they can be tested for equality. Show can be presented as strings. All types covered so far except for functions are a part of Show. The most used function that deals with the Show typeclass is show. It takes a value whose type is a member of Show and presents it to us as a string. Understanding IO and GHCi IO action as a piece of code with some effect on the real world that waits to get executed. Because of this side effect, an IO action is not referentially transparent; therefore, execution order matters. It is the task of the main function of a Haskell program to properly sequence and execute all IO actions. Thus, when you write a function that returns IO a, what you are actually doing is writing a function that returns an action that eventually - when executed by main - performs the action and returns an a. Under the hood, the IO type wraps an effectual function together with a dummy state parameter. Each IO action takes this dummy state as input and provides it as output. Passing this dummy state parameter from one IO action to the next creates a data dependency and thus tells the Haskell compiler how to properly sequence all the IO actions. GHC is a state-of-the-art, open source, compiler and interactive environment for the functional language Haskell (The "i" in "GHCi" stands for "interactive", as opposed to compiling and producing an executable file.) GHC comes with several libraries![image](https://user-images.githubusercontent.com/62355285/179371777-5e4ebc99-d113-4cfd-839c-7b417651ef9a.png)

