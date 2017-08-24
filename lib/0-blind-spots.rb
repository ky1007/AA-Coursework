## WHAT I HAD TRIED and DIDN'T WORK

def prolific_actors
  # Obtain a list in alphabetical order of actors who've had at least 15
  # starring roles.
  execute(<<-SQL)
    SELECT
      actors.name
    FROM
      actors
    JOIN
      castings ON actors.id = castings.actor_id
    GROUP BY
      actors.name
    HAVING
      COUNT(castings.ord = 1) >= 15
    ORDER BY
      actors.name ASC

  SQL
end
