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

type Platform = [(String, User)]

createPlatform :: Platform
createPlatform = []

addUser :: Platform -> User -> Platform
addUser  users user@(User name _) = (name, user) : users

getUser :: Platform -> String -> User
getUser p name = case filter ((==name).fst) p of
                    [] -> error "User not found"
                    [y] -> snd y
                    _ -> error "Multiple users with same name"
removeUser :: Platform -> String -> Platform
removeUser p name = filter ((/=name).fst) p
updateUser :: Platform -> User -> Platform
updateUser p user@(User name _) = (name, user) : removeUser p name

