-- 1. Promedio de 4 números
promedio :: Float -> Float -> Float -> Float -> Float
promedio a b c d = (a + b + c + d) / 4

-- 2. Suma de monedas
monedas :: Int -> Int -> Int -> Int -> Float
monedas a b c d3
    | total == 0 = 0
    | total /= 0 = fromIntegral total
    where total = a*1 + b*5 + c*10 + d*50

-- 3. Volumen de una esfera
volumenEsfera :: Float -> Float
volumenEsfera r =
    if r < 0 then 0
    else (4/3) * pi * r^3

-- 4. Verificar si a, b y c son iguales
iguales :: Int -> Int -> Int -> Bool
iguales a b c
    | a == b && b == c = True
    | a /= b || b /= c = False

-- 5. Verificar si a, b y c son diferentes
diferentes :: Int -> Int -> Int -> Bool
diferentes a b c =
    if a /= b && b /= c && a /= c then True
    else False

-- 6. Precio final con descuentos
precioFinal :: Float -> Float
precioFinal total
    | total > 1000 = total * 0.60
    | total > 500  = total * 0.70
    | total > 100  = total * 0.90
    | total <= 100 = total

-- 7. Última cifra de un número
ultimaCifra :: Int -> Int
ultimaCifra n =
    if n >= 0 then n `mod` 10
    else (abs n) `mod` 10

-- 8. Menú
menu :: IO ()
menu = do
    putStrLn "\nSeleccione una opción:"
    putStrLn "1. Promedio de 4 números"
    putStrLn "2. Suma de monedas"
    putStrLn "3. Volumen de una esfera"
    putStrLn "4. Verificar si tres números son iguales"
    putStrLn "5. Verificar si tres números son diferentes"
    putStrLn "6. Precio final con descuentos"
    putStrLn "7. Última cifra de un número"
    putStrLn "8. Salir"
    op <- readLn
    case op of
        1 -> do
            putStrLn "Ingrese 4 números:"
            a <- readLn
            b <- readLn
            c <- readLn
            d <- readLn
            print (promedio a b c d)
            menu
        2 -> do
            putStrLn "Ingrese número de monedas a=$1 b=$5 c=$10 d=$50:"
            a <- readLn
            b <- readLn
            c <- readLn
            d <- readLn
            print (monedas a b c d)
            menu
        3 -> do
            putStrLn "Ingrese el radio de la esfera:"
            r <- readLn
            print (volumenEsfera r)
            menu
        4 -> do
            putStrLn "Ingrese 3 números:"
            a <- readLn
            b <- readLn
            c <- readLn
            print (iguales a b c)
            menu
        5 -> do
            putStrLn "Ingrese 3 números:"
            a <- readLn
            b <- readLn
            c <- readLn
            print (diferentes a b c)
            menu
        6 -> do
            putStrLn "Ingrese el monto de compra:"
            total <- readLn
            print (precioFinal total)
            menu
        7 -> do
            putStrLn "Ingrese un número:"
            n <- readLn
            print (ultimaCifra n)
            menu
        8 -> putStrLn "Adiós!"
        _ -> putStrLn "Opción inválida" >> menu
