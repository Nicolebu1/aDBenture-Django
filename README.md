<h1> aDBenture </h1>
We are creating a database tool for the project eInformatics@Austria. With this tool, learners have the possibility to practice SQL examples in an sort of an adventure and they will also be able to receive direct feedback on their created queries.

Teachers should be able to upload their own SQL database and create their own adventures.

<h3> Implementation </h3>
The query should be analyzed syntactically (with the help of the result code and, if necessary, an error message). With the help of a sample solution, the number of result lines can be compared - if the number is the same, the task is considered solved and the points are credited to the learners' points account (if authenticated).

In later versions of the project, it will also be possible to store various sample solutions in the form of queries, which will also be used to analyze the user's query.

Relations of the database can be assigned to different subschemas.

A task can refer to a specific view, a subschema or to the whole DB schema.

Each task has its own UID or URL to ensure fast access.

The database and the access information are located on a server. The access to the server is to be realized via a REST interface.
