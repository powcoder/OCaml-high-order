https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder
https://powcoder.com
代写代考加微信 powcoder
Assignment Project Exam Help
Add WeChat powcoder


(* IMPORTANT
   Problems that do not satisfy requirements will have points deducted from
   your Gradescope score during manual grading.
   Requirements for the assignemnt.
   * You may NOT add or remove the 'rec' keyword.
   * Your helper functions may NOT use the 'rec' keyword.
   * You may not use ANY library functions.
   * You may not use list operators such as '@'.
   * The standard library will be disabled during grading, code
     dependent on library code will fail to compile. *)

type 'a myList =
  | Nil
  | Cons of 'a * 'a myList

(* Problem 1.
   Implement the filter higher-order function. *)


(* Problem 2.
   Implement the map higher-order function. *)


(* Problem 3.
   Implement the fold_left higher-order function. *)


(* Problem 4.
   Implement the fold_right higher order function. *)


(* Problem 5.
   Implement append in using fold_right. You may not use the 'rec' keyword. *)
let append (ls1 : 'a myList) (ls2 : 'a myList) : 'a myList = 


(* Problem 6.
   Implement a function 'concat' that when given a list of int myLists,
   appends them all together into a single myList.
   Examples:
   concat (Cons(Cons(1, Cons(2, Cons(3, Nil))), Cons(Cons(4, Cons(5, Cons(6, Nil))), Cons(Cons(7, Cons(8, Cons(9, Nil))), Nil))))
   = Cons (1, Cons (2, Cons (3, Cons (4, Cons (5, Cons (6, Cons (7, Cons (8, Cons (9, Nil)))))))))

   concat (Cons(Cons(1, Cons(2, Cons(3, Nil))), Cons(Nil, Cons(Cons(7, Cons(8, Cons(9, Nil))), Nil))))
   = Cons (1, Cons (2, Cons (3, Cons (7, Cons (8, Cons (9, Nil))))))
   Notes:
   * You may NOT use any functions from the OCaml List module.
   * You may NOT use the '@' operator. *)
let concat (lss : 'a myList myList) : 'a myList = 


(* Problem 7.
   When given a list ls of type 'a myList, and a function f of
   type 'a -> 'b myList, flatMap maps f across all elements of
   ls uniformly and flattens the result into a 'b myList.
   Example:
   flatMap (Cons(1, Cons(2, Nil))) (fun x -> Cons(x, Cons(x+1, Nil)))
      = Cons (1, Cons (2, Cons (2, Cons (3, Nil))))

   flatMap (Cons(4, Cons(6, Cons(8, Nil)))) factor = Cons(2, Cons(2, Cons(2, Cons(3, Cons(2, Cons(2, Cons(2, Nil))))))) *)
let flatMap (ls : 'a myList) (f : 'a -> 'b myList) : 'b myList = 
   fold_right (fun x y -> append (f x) y) ls Nil

(* Problem 8.
   Implement a function 'even_index', when given an int myList, output an int myList to record the position of even numbers.
   Note that the index starts from 1.
   Examples:
   even_index Nil = Nil
   even_index (Cons(2, Cons(4, Cons(6, Nil)))) = Cons (1, Cons (2, Cons (3, Nil)))
   even_index (Cons(1, Cons(2, Cons(3, Cons(4,  Nil))))) = Cons (2, Cons (4, Nil))
*)


let even_index (ls : int myList) : int myList = 
   
(* Problem 9.
   Implement a function 'vaild_par', when given a string myList which only contains "(" and ")",
   return Some true if the parenthesis myList is in a vaild format.
   Note that valid parentheses means all the parentheses are matched and
   the matched parentheses are in the correct order​.
   i.e., every opening parenthesis has a corresponding closing parenthesis.
   i.e., an opening parenthesis should come before the closing parenthesis.
   return None if the myList is Nil and return Some false if the parenthesis myList isn't in a vaild format

   Examples:
   valid_par Nil = None
   valid_par (Cons("(", Cons(")", Nil))) = Some true
   valid_par (Cons(")", Cons ("(", Cons ("(", Cons (")", Nil))))) = Some false
   valid_par (Cons("(", Cons ("(", Cons (")", Cons ("(", Cons("(", Cons (")", Cons (")", Cons (")", Nil))))))))) = Some true
*)
let valid_par (ls : string myList) : bool option = failwith "TODO"

(* Problem 10.
   Implement a function 'i_matrix', when given a matrix which has int myList myList type,
   return Some true if the matrix is an identity matrix
   return None if the matrix is Nil
   return Some false if the matrix is not an identity matrix.
   Examples:
   i_matrix Nil = None
   i_matrix (Cons(Cons(1, Cons(0, Cons(0, Nil))), Cons(Cons(0, Cons(1, Cons(0, Nil))), Cons(Cons(0, Cons(0, Cons(1, Nil))), Nil)))) = Some true;;
   i_matrix (Cons(Cons(1, Cons(0, Cons(0, Cons (0, Nil)))), Cons(Cons(0, Cons(1, Cons(0, Cons(0, Nil)))), Cons(Cons(0, Cons(0, Cons(1, Cons(0, Nil)))), Nil)))) = Some false;;
*)
let i_matrix (matrix : int myList myList) : bool option = failwith "TODO"

(* Problem 11.

   A list could be used as a dictionary that maps values to values. We will use lists
      of type (string * int) myList as dictionaries to map strings to ints. We can implement
      a 'find_key' function that when given a dictionary and a key (string type), outputs
      the value associated to the key (int type) tagged with Some if said key exists within
      the dictionary. If the searched for key does not exist in the dictionary, output None.
      Examples:
      find_key (Cons(("a", 1), Cons(("b", 2), Cons(("c", 3), Nil)))) "b" = Some 2
      find_key (Cons(("a", 1), Cons(("b", 2), Cons(("c", 3), Nil)))) "c" = Some 3
      find_key (Cons(("a", 1), Cons(("b", 2), Cons(("c", 3), Nil)))) "d" = None
      find_key (Cons(("a", 1), Cons(("b", 2), Cons(("c", 3), Cons(("b", 4), Nil))))) "b" = Some 2
      Notes:
      * If the myList contains duplicate key entries, output the value associated to the "leftmost"
        entry.*)
let find_key (dict : (string * int) myList) (key : string) : int option =
  failwith "TODO"

(* Problem 12.
   Implement a function 'to_freq', that when given a string myList, output a list of
    type (string * int) myList such that each string is associated with its frequency in
    the original input.
    Examples:
    to_freq (Cons("a", Cons("a", Cons("b", Cons("c", Cons("b", Cons("a", Nil))))))) =
    Cons (("a", 3), Cons (("c", 1), Cons (("b", 2), Nil)))

    to_freq (Cons("jack", Cons("Jack", Cons("JACK", Nil)))) =
    Cons (("JACK", 1), Cons (("jack", 1), Cons (("Jack", 1), Nil)))

    Notes:
    * You do not need to consider the order of entries in the output.
    * There should be no entries with repeated strings in your output.
      An output such as Cons(("a", 1), Cons(("a", 2), Nil)) is not accpeted.
    * Strings are case sensitive. "jack", "Jack" and "JACK" are considered different
      and their frequencies are counted independently.*)
let to_freq (ls : string myList) : (string * int) myList = failwith "TODO"

(* Problem 13.
   Implement a function 'win_chance',
   given 2 myLists ls1 and ls2, represent that two lists of cards which player1 and player2 hold,
   In this card game, play1 and play2 don't know each other's cards and randomly pick one card
   from their card myLists ls1 and ls2,
   the function 'win_chance' outputs the all possibilities that play1 can win in the form of
   a myList of tuples.
   Note that there could be upto 13 different kinds of cards in the ls1 and ls2 which are
   "Ace" = 1, "2" = 2, "3" = 3, "4" = 4, "5" = 5, "6" = 6, "7" = 7, "8" = 8, "9" = 9, "10" = 10,
   "Jack" = 11, "Queen" = 12, "King" = 13
   The rule to win the game: "Ace" > "King" > "Queen" > "Jack" > "10" > "9" > "8" > "7" > "6" > "5" >
   "4" > "3" > "2"
   Note that if two cards picked are equal, then it's a tie game.
   Examples:
     win_chance (Cons(1, Cons(1, Nil))) (Cons(2, Cons(11, Nil))) =
     Cons ((1, 2), Cons ((1, 11), Cons ((1, 2), Cons ((1, 11), Nil))))
     Explanation : we have four ways to random select card from ls1 and ls2 in total
     (1, 2) -> "Ace" > "2" -> player1 win,
     (1, 11) -> "Ace" > "Jack" -> player1 win,
     (1, 2) -> "Ace" > "2" -> player1 win,
     (1, 11) -> "Ace" > "Jack" -> player1 win

     win_chance (Cons(1, Cons(2, Nil))) (Cons(3, Cons(4, Nil))) = Cons ((1, 3), Cons ((1, 4), Nil))

     win_chance (Cons(7, Cons(11, Cons(2, Nil)))) (Cons(1, Cons(9, Cons(7, Nil)))) =
     Cons ((11, 9), Cons ((11, 7), Nil))
     Explanation : we have 9 ways to random select card from ls1 and ls2 in total
     (7, 1) -> "7" < "Ace" -> player1 lose,
     (7, 9) -> "7" < "9" -> player1 lose,
     (7, 7) -> "7" = "7" -> tie game,
     (11, 1) -> "11" < "Ace" -> player1 lose,
     (11, 9) -> "11" > "9" -> player1 win,
     (11, 7) -> "11" > "7" -> player1 win,
     (2, 1) -> "2" < "Ace" -> player1 lose,
     (2, 9) -> "2" < "9" -> player1 lose,
     (2, 7) -> "2" < "7" -> player1 lose

     win_chance (Cons(6, Cons(13, Cons(1, Nil)))) (Cons(7, Nil)) = Cons ((13, 7), Cons ((1, 7), Nil))

     The lengths of ls1 and ls2 are guaranteed to be at least 1 *)
let win_chance (ls1 : int myList) (ls2 : int myList) : (int * int) myList =
  failwith "TODO"

(* Problem 14.
    Given an element x and a myList ls, insert x into all possible positions
    in ls. Collect all results as a nested myList output.
    Examples:
    insert 4 (Cons(1, Cons(2, Cons(3, Nil)))) =
    Cons (Cons (4, Cons (1, Cons (2, Cons (3, Nil)))),
      Cons (Cons (1, Cons (4, Cons (2, Cons (3, Nil)))),
        Cons (Cons (1, Cons (2, Cons (4, Cons (3, Nil)))),
          Cons (Cons (1, Cons (2, Cons (3, Cons (4, Nil)))), Nil))))

    insert 1 (Cons(4, Cons(3, Cons(2, Nil)))) =
    Cons (Cons (1, Cons (4, Cons (3, Cons (2, Nil)))),
      Cons (Cons (4, Cons (1, Cons (3, Cons (2, Nil)))),
        Cons (Cons (4, Cons (3, Cons (1, Cons (2, Nil)))),
          Cons (Cons (4, Cons (3, Cons (2, Cons (1, Nil)))), Nil))))

    insert 1 Nil = Cons (Cons (1, Nil), Nil) *)
let insert (x : 'a) (ls : 'a myList) : 'a myList myList = 
   fold_left (f x ls -> map(fun x ->Cons h x))

(* Problem 15.
   Given a myList ls, generate all possible permutations of ls.
   Collect these permutations a nested myList output. The order
   of generated permutations does not matter.
   Examples:
   perm Nil = Cons (Nil, Nil)
   perm (Cons(1, Nil)) = Cons (Cons (1, Nil), Nil)
   perm (Cons(1, Cons(2,Nil))) = Cons (Cons (1, Cons (2, Nil)), Cons (Cons (2, Cons (1, Nil)), Nil))
   perm (Cons(1, Cons(2, Cons(3,Nil)))) =
    Cons (Cons (1, Cons (2, Cons (3, Nil))),
    Cons (Cons (2, Cons (1, Cons (3, Nil))),
      Cons (Cons (2, Cons (3, Cons (1, Nil))),
      Cons (Cons (1, Cons (3, Cons (2, Nil))),
        Cons (Cons (3, Cons (1, Cons (2, Nil))),
        Cons (Cons (3, Cons (2, Cons (1, Nil))), Nil)))))) *)
let perm (ls : int myList) : int myList myList = failwith "TODO"
