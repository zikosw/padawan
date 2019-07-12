
arrSize = 5 :: Int
opSize = 3

qs :: [[Int]]
qs = [
    [1,2,100],
    [2,5,100],
    [3,4,100]]

-- 0        0       0       0       0
-- 0+100    0+100   0       0       0
-- 100      100+100 0+100   0+100   0+100
-- 100      200     100+100 100+100 100
-- 100      200     200     200     100


as2 :: Int
as2 = 10
os2 = 4
qs2 :: [[Int]]
qs2 = [
    [2,6,8],
    [3,5,7],
    [1,8,1],
    [5,9,15]]
-- 31


arrOp :: Int -> [Int] -> [Int]
arrOp _ [] = []
arrOp cnt [start,end,num] = head ++ body ++ tail
    where
        startIdx = pred start
        headCnt = startIdx
        bodyCnt = end - startIdx
        tailCnt = cnt - end
        head = replicate headCnt 0
        body = replicate bodyCnt num
        tail = replicate tailCnt 0

arrInit :: Int -> [Int]
arrInit cnt = replicate cnt 0

arrCrush :: [Int] -> [Int] -> [Int]
arrCrush = zipWith (+)

crush cnt ops = foldl arrCrush init arrFromOps
        where
            init = arrInit cnt
            arrFromOps = map (arrOp cnt) ops

-- crush arrSize qs

findMax cnt ops = maximum $ crush cnt ops

-- findMax arrSize qs
-- findMax as2 qs2
