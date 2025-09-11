import System.IO

-- Declaración de funciones
fAbs :: Int -> Int
fAbs x = abs x

fCeil :: Float -> Int
fCeil x = ceiling x

fSucc :: Int -> Int
fSucc x = succ x

fMin :: Int -> Int -> Int
fMin x y = min x y

fMax :: Int -> Int -> Int
fMax x y = max x y

fDiv :: Int -> Int -> Int
fDiv x y = div x y

fMod :: Int -> Int -> Int
fMod x y = mod x y

fEven :: Int -> Bool
fEven x = even x

fFloor :: Float -> Int
fFloor x = floor x

fGcd :: Int -> Int -> Int
fGcd x y = gcd x y

fNot :: Bool -> Bool
fNot x = not x

fOdd :: Int -> Bool
fOdd x = odd x

fSign :: Int -> Int
fSign x = signum x

fSnd :: (Int, Int) -> Int
fSnd (x, y) = y

-- Funciones auxiliares para leer
leerInt :: IO Int
leerInt = readLn

leerFloat :: IO Float
leerFloat = readLn

leerBool :: IO Bool
leerBool = readLn  -- escribir true o False en consola

-- Mostrar menú
menu :: IO ()
menu = do
    putStrLn "\n=== MENU DE FUNCIONES EN HASKELL ==="
    putStrLn "0. Salir"
    putStrLn "1. fAbs (valor absoluto)"
    putStrLn "2. fCeil (entero superior)"
    putStrLn "3. fSucc (siguiente valor)"
    putStrLn "4. fMin (mínimo de dos valores)"
    putStrLn "5. fMax (máximo de dos valores)"
    putStrLn "6. fDiv (división entera)"
    putStrLn "7. fMod (módulo)"
    putStrLn "8. fEven (es par?)"
    putStrLn "9. fFloor (entero inferior)"
    putStrLn "10. fGcd (máximo común divisor)"
    putStrLn "11. fNot (negación booleana)"
    putStrLn "12. fOdd (es impar?)"
    putStrLn "13. fSign (signo del número)"
    putStrLn "14. fSnd (segundo numero)"
    putStr "Selecciona una opción: "

-- Bucle principal
main :: IO ()
main = do
    menu
    opcion <- leerInt
    if opcion == 0
        then putStrLn "Saliendo del programa..."
        else do
            case opcion of
                1 -> do
                    putStr "Ingresa un número: "
                    n <- leerInt
                    print (fAbs n)

                2 -> do
                    putStr "Ingresa un número: "
                    n <- leerFloat
                    print (fCeil n)

                3 -> do
                    putStr "Ingresa un número: "
                    n <- leerInt
                    print (fSucc n)

                4 -> do
                    putStr "Ingresa dos números: "
                    x <- leerInt
                    y <- leerInt
                    print (fMin x y)

                5 -> do
                    putStr "Ingresa dos números: "
                    x <- leerInt
                    y <- leerInt
                    print (fMax x y)

                6 -> do
                    putStr "Ingresa dos números: "
                    x <- leerInt
                    y <- leerInt
                    print (fDiv x y)

                7 -> do
                    putStr "Ingresa dos números: "
                    x <- leerInt
                    y <- leerInt
                    print (fMod x y)

                8 -> do
                    putStr "Ingresa un número: "
                    n <- leerInt
                    print (fEven n)

                9 -> do
                    putStr "Ingresa un número: "
                    n <- leerFloat
                    print (fFloor n)

                10 -> do
                    putStr "Ingresa dos números: "
                    x <- leerInt
                    y <- leerInt
                    print (fGcd x y)

                11 -> do
                    putStr "Ingresa un booleano (True/False): "
                    b <- leerBool
                    print (fNot b)

                12 -> do
                    putStr "Ingresa un número: "
                    n <- leerInt
                    print (fOdd n)

                13 -> do
                    putStr "Ingresa un número: "
                    n <- leerInt
                    print (fSign n)

                14 -> do
                    putStr "Ingresa el primer número: "
                    x <- leerInt
                    putStr "Ingresa el segundo número: "
                    y <- leerInt
                    print (fSnd (x, y))

                _ -> putStrLn "Opción no válida."

            main  -- repetir el menú
