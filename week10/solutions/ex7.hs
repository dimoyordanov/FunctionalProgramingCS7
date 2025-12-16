--                              X         Y       Z       Rol      Yaw     Pitch     Name
data RobotState = RobotState Rational Rational Rational Rational Rational Rational  String

data Comands = MoveX Rational
              | MoveY Rational
              | MoveZ Rational
              | Rol Rational
              | Yaw Rational
              | Pitch Rational
              | ChangeName String
              | MoveDiaonalXY Rational Rational
              | MoveDiaonalXZ Rational Rational
              | MoveDiaonalZY Rational Rational

executeMultipleCommands :: RobotState -> [Comands] -> RobotState
executeMultipleCommands = foldl executeCommand 

executeCommand :: RobotState -> Comands -> RobotState 
executeCommand (RobotState x y z r ya p name) (MoveX add) =  RobotState (x + add) y z r ya p name
executeCommand (RobotState x y z r ya p name) (MoveY add) =  RobotState x (y+add) z r ya p name
executeCommand (RobotState x y z r ya p name) (MoveZ add) =  RobotState x y (z+add) r ya p name
executeCommand (RobotState x y z r ya p name) (Rol add) =  RobotState x y z (r+add) ya p name
executeCommand (RobotState x y z r ya p name) (Yaw add) =  RobotState x y z r (ya+add) p name
executeCommand (RobotState x y z r ya p name) (Pitch add) =  RobotState x y z r ya (p+add) name
executeCommand (RobotState x y z r ya p name) (ChangeName n) =  RobotState x y z r ya p n
executeCommand s@(RobotState x y z r ya p name) (MoveDiaonalXY a b) =  executeMultipleCommands s [MoveX a, MoveY b]
executeCommand s@(RobotState x y z r ya p name) (MoveDiaonalXZ a b) =  executeMultipleCommands s [MoveX a, MoveZ b]
executeCommand s@(RobotState x y z r ya p name) (MoveDiaonalZY a b) =  executeMultipleCommands s [MoveZ a, MoveY b]

