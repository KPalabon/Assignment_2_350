// Problem 1 
// Author: Joaquin
match (n) - [r:PARTICIPATED_IN] -> (m) return m

// Problem 4
// Author: Joaquin
match (n) where n.name contains 'Hara' return n

// Problem 7
// Author: Joaquin
match (n) - [r:COACH_FOR] -> (m) where m.id contains 'USA in 2019' return n