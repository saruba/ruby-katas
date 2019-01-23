##1st KATA: String Calculator Kata (via [Roy Osherove](http://osherove.com/tdd-kata-1/))

* Create a simple String calculator with a method int Add(string numbers). The method can take 0, 1 or 2 numbers, and will return their sum (for an empty string it will return 0). For example "" or "1" or "1,2"
  * Start with the simplest test case of an empty string and move to 1 and two numbers
  * Remember to solve things as simply as possible so that you force yourself to write tests you did
      not think about
  * Remember to refactor after each passing test
* Allow the Add method to handle an unknown amount of numbers
* Allow the Add method to handle new lines between numbers (instead of commas).
  * the following input is ok:  "1\n2,3"  (will equal 6)
  * the following input is NOT ok:  "1,\n" (not need to prove it - just clarifying)
* Support different delimiters. To change a delimiter, the beginning of the string will contain a separate line that looks like this: `[delimiter]\n[numbers...]`, for example `;\n1;2` should return three where the default delimiter is `;` .
  * he first line is optional. all existing scenarios should still be supported
* Calling Add with a negative number will throw an exception "negatives not allowed" - and the negative that was passed.
  * if there are multiple negatives, show all of them in the exception message


##2nd KATA: The FizzBuzz Kata
  - Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz"
    instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both
    three and five print "FizzBuzz".

### Including new implementation to The FizzBuzz Kata
  - Added a different implementation for FizzBuzz using Reactive extensions.
  - The changes are described at: http://blog.drorhelper.com/2015/02/fizzbuzz-tdd-kata-using-reactive.html
  - Pull Request by: https://github.com/dhelper (manually merged by @garora)
    

#### Steps:

  Lets divide this into different steps so, we can easily write and test this.
  - Print numbers from 1 to 100
  - Print "Fizz" instead of number which is divisible by 3
  - Print "Buzz" instead of number which is divisible by 5
  - Print "FizzBuzz" instead of number which is divisible by both 3 and 5

#### Make more test for accept numbers and provide results
  - Create a method to accept single number
  - Create test to verify supplied number within the range 1 to 100
  - Create test to verify number and return result Fizz or Buzz or FizzBuzz per above criteria


##3rd KATA: Game of Life :

  Your task is to write a program to calculate the next
  generation of Conway's game of life, given any starting
  position. You start with a two dimensional grid of cells,
  where each cell is either alive or dead. The grid is finite,
  and no life can exist off the edges. When calculating the
  next generation of the grid, follow these four rules:

  1. Any live cell with fewer than two live neighbours dies,
     as if caused by underpopulation.
  2. Any live cell with more than three live neighbours dies,
     as if by overcrowding.
  3. Any live cell with two or three live neighbours lives
     on to the next generation.
  4. Any dead cell with exactly three live neighbours becomes
     a live cell.

  Examples: * indicates live cell, . indicates dead cell

  Example input: (4 x 8 grid)
  4 8
  ........
  ....*...
  ...**...
  ........

  Example output:
  4 8
  ........
  ...**...
  ...**...
  ........


##4th KATA: Poker Hands

  A poker deck contains 52 cards - each card has a suit which
  is one of clubs, diamonds, hearts, or spades
  (denoted C, D, H, and S in the input data).

  Each card also has a value which is one of
  2, 3, 4, 5, 6, 7, 8, 9, 10, jack, queen, king, ace
  (denoted 2, 3, 4, 5, 6, 7, 8, 9, T, J, Q, K, A).

  For scoring purposes, the suits are unordered while the
  values are ordered as given above, with 2 being the lowest
  and ace the highest value.

  A poker hand consists of 5 cards dealt from the deck. Poker
  hands are ranked by the following partial order from lowest
  to highest.

  High Card: Hands which do not fit any higher category are
  ranked by the value of their highest card. If the highest
  cards have the same value, the hands are ranked by the next
  highest, and so on.

  Pair: 2 of the 5 cards in the hand have the same value.
  Hands which both contain a pair are ranked by the value of
  the cards forming the pair. If these values are the same,
  the hands are ranked by the values of the cards not
  forming the pair, in decreasing order.

  Two Pairs: The hand contains 2 different pairs. Hands
  which both contain 2 pairs are ranked by the value of
  their highest pair. Hands with the same highest pair
  are ranked by the value of their other pair. If these
  values are the same the hands are ranked by the value
  of the remaining card.

  Three of a Kind: Three of the cards in the hand have the
  same value. Hands which both contain three of a kind are
  ranked by the value of the 3 cards.

  Straight: Hand contains 5 cards with consecutive values.
  Hands which both contain a straight are ranked by their
  highest card.

  Flush: Hand contains 5 cards of the same suit. Hands which
  are both flushes are ranked using the rules for High Card.

  Full House: 3 cards of the same value, with the remaining 2
  cards forming a pair. Ranked by the value of the 3 cards.

  Four of a kind: 4 cards with the same value. Ranked by the
  value of the 4 cards.

  Straight flush: 5 cards of the same suit with consecutive
  values. Ranked by the highest card in the hand.

  Your job is to rank pairs of poker hands and to indicate
  which, if either, has a higher rank.

  Examples:
  Input: Black: 2H 3D 5S 9C KD White: 2C 3H 4S 8C AH
  Output: White wins - high card: Ace

  Input: Black: 2H 4S 4C 3D 4H White: 2S 8S AS QS 3S
  Output: White wins - flush

  Input: Black: 2H 3D 5S 9C KD White: 2C 3H 4S 8C KH
  Output: Black wins - high card: 9

  Input: Black: 2H 3D 5S 9C KD White: 2D 3H 5C 9S KH
  Output: Tie

##5th KATA: Reversi :

  Reversi is a board game for two players. The board contains
  8x8 squares. The players place Black or White counters onto
  the board, one counter per square. More information can be
  found on Wikipedia en.wikipedia.org/wiki/Reversi?. Your task
  is to write a program that takes a current board position
  together with information about whose turn it is, and returns
  a list of the legal moves for that player. A move is only legal
  if it results in at least one of the opponent's counters being
  flipped.

  Example input: (the final B indicates it is Black's turn)
  ........
  ........
  ........
  ...BW...
  ...WB...
  ........
  ........
  ........
  B

  Example output: (each zero indicates a legal move for Black)
  ........
  ........
  ....0...
  ...BW0..
  ..0WB...
  ...0....
  ........
  ........
  B

##6th KATA: Yehtzee :

  The game of yahtzee is a simple dice game. Each player rolls five
  six-sided dice. They can re-roll some or all of the dice up to three
  times (including the original roll).

  For example, suppose a players rolls
    3,4,5,5,2
  They hold the two fives and re-roll the other three dice (3,4,2)
    5,1,5,5,3
  They hold the three fives and re-roll the other two dice (1,3)
    5,6,5,5,2

  The player then places the roll in a category, such as ones, twos, fives,
  pair, two pairs etc (see below). If the roll is compatible with the category,
  the player gets a score for the roll according to the rules. If the roll is not
  compatible with the category, the player scores zero for the roll.

  For example, suppose a player scores 5,6,5,5,2 in the fives category they
  would score 15 (three fives). The score for that go is then added to their
  total and the category cannot be used again in the remaining goes for that game.
  A full game consists of one go for each category. Thus, for their last go in
  a game, a player must choose their only remaining category.

  Your task is to score a GIVEN roll in a GIVEN category.
  You do NOT have to program the random dice rolling.
  The game is NOT played by letting the computer choose the highest scoring
  category for a given roll.


 ####Yahzee Categories and Scoring Rules
     ===================================

  Chance:
    The player scores the sum of all dice, no matter what they read.
    For example,
     1,1,3,3,6 placed on "chance" scores 14 (1+1+3+3+6)
     4,5,5,6,1 placed on "chance" scores 21 (4+5+5+6+1)

  Yahtzee:
    If all dice have the same number, the player scores 50 points.
    For example,
     1,1,1,1,1 placed on "yahtzee" scores 50
     1,1,1,2,1 placed on "yahtzee" scores 0

  Ones, Twos, Threes, Fours, Fives, Sixes:
    The player scores the sum of the dice that reads one,
    two, three, four, five or six, respectively.
    For example,
     1,1,2,4,4 placed on "fours" scores 8 (4+4)
     2,3,2,5,1 placed on "twos" scores 4  (2+2)
     3,3,3,4,5 placed on "ones" scores 0

  Pair:
    The player scores the sum of the two highest matching dice.
    For example, when placed on "pair"
     3,3,3,4,4 scores 8 (4+4)
     1,1,6,2,6 scores 12 (6+6)
     3,3,3,4,1 scores 0
     3,3,3,3,1 scores 0

  Two pairs:
    If there are two pairs of dice with the same number, the
    player scores the sum of these dice.
    For example, when placed on "two pairs"
     1,1,2,3,3 scores 8 (1+1+3+3)
     1,1,2,3,4 scores 0
     1,1,2,2,2 scores 0

  Three of a kind:
    If there are three dice with the same number, the player
    scores the sum of these dice.
    For example, when placed on "three of a kind"
    3,3,3,4,5 scores 9 (3+3+3)
    3,3,4,5,6 scores 0
    3,3,3,3,1 scores 0

  Four of a kind:
    If there are four dice with the same number, the player
    scores the sum of these dice.
    For example, when placed on "four of a kind"
    2,2,2,2,5 scores 8 (2+2+2+2)
    2,2,2,5,5 scores 0
    2,2,2,2,2 scores 0

  Small straight:
    When placed on "small straight", if the dice read
    1,2,3,4,5, the player scores 15 (the sum of all the dice.

  Large straight:
    When placed on "large straight", if the dice read
    2,3,4,5,6, the player scores 20 (the sum of all the dice).

  Full house:
    If the dice are two of a kind and three of a kind, the
    player scores the sum of all the dice.
    For example, when placed on "full house"
    1,1,2,2,2 scores 8 (1+1+2+2+2)
    2,2,3,3,4 scores 0
    4,4,4,4,4 scores 0
