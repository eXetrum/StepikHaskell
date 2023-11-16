data Error = ParsingError | IncompleteDataError | IncorrectDataError String

data Person = Person { firstName :: String, lastName :: String, age :: Int }

parsePerson :: String -> Either Error Person
parsePerson s = makePerson (lineWith "firstName ") (lineWith "lastName ") (lineWith "age ")
  where
    info :: [(String, String)]
    info = map (break (== '=')) . lines $ s

    lineWith :: String -> Maybe String
    lineWith = flip lookup info

    makePerson :: Maybe String -> Maybe String -> Maybe String -> Either Error Person
    makePerson (Just firstNameA) (Just lastNameA) (Just ageA) =
      case (firstNameA, lastNameA, ageA) of
        ('=' : ' ' : firstName, '=' : ' ' : lastName, '=' : ' ' : age) ->
          case reads age of
            [(i, "")] -> Right $ Person firstName lastName i
            _         -> Left $ IncorrectDataError age
        _ -> Left ParsingError
    makePerson _ _ _ = Left IncompleteDataError