
import System.Random(randomRIO)

puntoAleoatorio :: IO (Double, Double)
puntoAleoatorio = do
    x <- randomRIO (-1.0, 1.0)
    y <- randomRIO (-1.0, 1.0)
    return (x, y)

dentroDelCirculo :: (Double, Double) -> Bool
dentroDelCirculo (x, y) = x^2 + y^2 <= 1.0

calcularPi :: Int -> IO Double
calcularPi n = do
    puntos <- mapM (\_ -> puntoAleoatorio) [1..n]
    let dentro = length (filter dentroDelCirculo puntos)
    return (4.0 * fromIntegral dentro / fromIntegral n)

main :: IO ()
main = do  
    putStrLn "Ingrese el número de puntos a generar:"
    input <- getLine
    let n = read input :: Int
    piAproximado <- calcularPi n
    putStrLn $ "Aproximación de π con " ++ show n ++ " puntos: " ++ show piAproximado