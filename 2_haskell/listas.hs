

lista :: [Int] -> Int
lista (x:xs) = x

lista2 :: [Int] -> [Int]
lista2 (x:xs) = xs

lista3 :: [Int] -> Int -> [Int]
lista3 a b = b:a

lista4 :: [String] -> String -> [String]
lista4 a b = b:a

--lista5 :: Char -> String -> String
--lista5 a b = b:a

lista6 :: [Integer]
lista6 = [1..10]

fun1 :: [Int] -> Int
fun1 [] = 0
fun1 (x:xs) = x + fun1 xs

fun2 :: [Int] -> Int
fun2 [] = 0
fun2 (_:xs) = 1 + fun2 xs

--main = print(lista4 ["enchiladas","tacos"]"pozole" )

main = print()

