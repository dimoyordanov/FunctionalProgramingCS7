data User = User {getUserName::String, getUserAge::Int}
        deriving Show

usersEqual :: User -> User -> Bool
usersEqual (User name1 age1) (User name2 age2) = name1 == name2 && age1 == age2

createUser :: String -> Int -> User
createUser = User

setUserName :: String -> User -> User
setUserName newName (User _ age) = User newName age
setUserAge :: Int -> User -> User
setUserAge newAge (User name _) = User name newAge
