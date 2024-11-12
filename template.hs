data Garden a = Garden {
  plants :: [[a]], -- A grid representing different plants or empty spaces
  waterLevel :: Int -- A water level that could affect plant growth
}  deriving Show

-- The 2 functions below are utility functions that we make use of in our tutorial session.
-- Don't worry, you don't need to understand them.

stageToSymbol :: Int -> Char
stageToSymbol stage
    | stage <= 0 = '.'  -- Empty plot
    | stage == 1 = '*'  -- Seedling
    | stage == 2 = 'o'  -- Sprout
    | stage == 3 = 'O'  -- Young plant
    | otherwise = '@'   -- Mature plant

printGarden :: Garden Int -> IO ()
printGarden (Garden plants _) = do
    let symbolGrid = map (map stageToSymbol) plants
    mapM_ putStrLn (map unwordsChars symbolGrid)
  where
    unwordsChars = concatMap (: " ")