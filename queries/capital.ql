import python

// The query searches for Python variables that are named with capital letters.
// This query is a simplified version and may not capture all possible variable naming conventions.

from Identifier id
where id.getName() = toUpperCase(id.getName())
select id, "Capital variable name: " + id.getName()
