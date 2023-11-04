Issues found with the movies.csv dataset:
- The YEAR column for some of the movies has parathesis around the year. Some of the Years do not have an end dat. for ex. (2021-), this YEAR has no end date and has paranthesis around it, which could make it hard to process.
- The GENRE column has unncessary extra spaces and next line characters.

Fixed:
I split the "YEAR" field into 2 fields: "START" and "END".
I used sed to accomplish this task. The details of the command is commented in cleanup.sh
