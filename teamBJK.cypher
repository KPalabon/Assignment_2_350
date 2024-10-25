// Problem 1 
// Author: Joaquin
match (n) - [r:PARTICIPATED_IN] -> (m) return m

//Problem 2
// Author: Brendan
MATCH (p:Person)-[:REPRESENTS]->(t:Team {name: 'USA'})
RETURN p.name

// Problem 3
// Author: Kent
MATCH (p:Person {name: 'Lauren Holiday'})
RETURN p.dob AS dob

// Problem 4
// Author: Joaquin
match (n) where n.name contains 'Hara' return n

// Problem 5
//Author: Brendan
MATCH (p:Person {name: 'Kelley O Hara'})-[:IN_SQUAD]->(s:Squad)
RETURN COUNT(s) AS number_of_squads

// Problem 6
// Author: Kent
MATCH (p:Person)-[:REPRESENTS]->(t:Team {name: 'USA'})
MATCH (p)-[:SCORED_GOAL]->(m:Match)-[:IN_TOURNAMENT]->(tr:Tournament)
RETURN p.name AS player_name

// Problem 7
// Author: Joaquin
match (n) - [r:COACH_FOR] -> (m) where m.id contains 'USA in 2019' return n

// Problem 8
// Author: Brendan
MATCH (p:Person {name: "Rose Lavelle"})
MATCH (p)-[:SCORED_GOAL]->(m:Match)
RETURN m

// Problem 9
// Author: Kent
MATCH (p:Person)-[:REPRESENTS]->(t:Team {name: 'USA'})
MATCH (p)-[:COACH_FOR]->(s:Squad)
RETURN DISTINCT p.name AS person_name

