createPoint :: Double -> Double -> (Double, Double)
createPoint a b = (a,b)

addPoint :: (Double, Double) -> (Double, Double) -> (Double, Double)
addPoint (a,b) (c,d) = (a+b, c+d)

subPoint :: (Double, Double) -> (Double, Double) -> (Double, Double)
subPoint (a,b) (c,d) = (a-b, c-d)

mulPoint :: (Double, Double) -> (Double, Double) -> (Double, Double)
mulPoint (a,b) (c,d) = (a*b, c*d)


distance :: (Double, Double) -> (Double, Double) -> Double
distance t1 t2 = let (a,b) = subPoint t1 t2 in sqrt (a*a+b*b)
