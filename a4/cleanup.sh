# first substitution replaces "YEAR" with "START,END" in the first line of the movies.csv dataset. We basically added 2 fields in place of the "YEAR" field.
# second substitution deletes all open paranthesis. Third subsituition replaces all close parnthesis with a comma.
# fourth substitution replaces all dashes in seperating years with a comma. This results in 2 fields "START" and "END". 
sed -r -e '1 s/YEAR/START,END/' -e 's/\(//g' -e 's/\)/,/g' -e 's/–|–\ /,/g' movies.csv > clean-movies.csv
