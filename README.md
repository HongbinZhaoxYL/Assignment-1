# ST446 - Distributed Computing for Big Data - Lent Term 2021-2022

## Assessment 1: Spark RDDs, Spark SQL and Hive

### Datasets for this assessment:

All the required datasets are available for download from here:
https://www.dropbox.com/sh/89xbpcjl4oq0j4w/AACrbtUzm3oCW1OcpL7BasRfa?dl=0 (in the respective sub-directories).

### P1. Spark RDDs

We continue to analyse the **DBLP** dataset available in the file `author-large.txt`. This time, we want to find the top 10 pairs of authors who published the largest number of papers together (with possible other collaborators). For example, if authors *a*, *b* and *c* published a paper with title *t*,
then this contributes one joint publication for each author pair *(a,b), (a,c) and (b,c)*. Use the first column of the input data for the author names
and use the third column of the input data for the publication title.

You need to solve this task by using **RDD operations in PySpark** (like those we used in Week 3 and the [Spark RDD documentation](https://spark.apache.org/docs/2.1.0/api/python/pyspark.html#pyspark.RDD)). You can run your
code on your laptop or GCP. Please make sure to give us all your code and document what you have done outside of the notebook, for example using
terminal input and output, as well as screenshots. **Please, pay attention to have the terminal input/output and screenshot files stored in your
repository and properly linked and displayed in your notebook**.

### P2. Spark SQL

Do the same as in problem P1, but this time use the **Spark SQL API** (covered in Week 4). You may find useful to consult the [Spark SQL documentation](https://spark.apache.org/docs/2.1.0/api/python/pyspark.sql.html#) as well.

### P3. Hive

In this part we are going to use the **Yelp** data available in the following JSON file `Yelp/yelp_academic_dataset_user.json`. 

You may complete this task by using Hive on your local computer or on Google Cloud Platform. 

Please complete the following steps: 

(here, it is particularly important that you find a suitable way to document your work appropriately.)

#### P3.1. Load data into a Hive table

Create a Hive table and load the input data into this table.

Please describe any commands that you run in a command line interface, provide all the code that you wrote and ran. For example, this may include any commands run in a terminal, Hive script files (`*.sql`), and screenshots (if, for example, you used Google Cloud Platform through the browser interface). See the class examples for reference.

*Note*: The dataset is in `JSON` format whereas in the class the datasets were in `XML` or `TXT` format. You will need to figure out (look up) how to load data from a `JSON` file into a Hive table. You will need to infer the schema by looking at the data.

*Hints*:
- Some of the columns are of array type. For example, you should use `array<STRING>` for the  column.
- The size of the dataset is large (about 1GB). You may want to create a smaller dataset first and work with this smaller dataset until you develop and test your code, and then apply it on the original dataset.

#### P3.2. Simple queries

Having created the Hive table and loaded the data into it, write and execute queries to:

i. retrieve the schema;

ii. show the number of rows in the table;

iii. select top 10 users who have provided the largest number of reviews (the output should consist of the user name and the number of reviews of the users).

For all the queries, please show both the commands you used and the output. You may copy and paste the commands that you run and the outputs, or provide screenshots. **Please, pay attention to have the terminal input/output and screenshot files stored in your repository and properly linked and displayed in your notebook**.

### IMPORTANT

Please, make sure to delete you Dataproc clusters and buckets (cloud storage) afterwards.

### Marking scheme

| Problem breakdown | Max points |
|--------------| :----------:|
| P1-1 - loading data into RDD | 10 |
| P1-2 - query correctness | 10 |
| P1-3 - quality of code and presentation | 10 |
| P2-1 - creating and loading data into a table | 10 |
| P2-2 - query expression correctness | 10 |
| P2-3 - quality of code and presentation |  10 |
| P3-1 - loading data into Hive | 10 |
| P3-2.i - retrieving the schema | 10 |
| P3-2.ii - show number of rows | 10 |
| P3-2.iii - selecting top 10 users | 10 |
| Total | 100 |

## Submission date and guidelines

1. Solution deadline: **25 February, 6 pm**.
2. Upload your Python code and additional files into GitHub.
3. There is no need for uploading training and testing data, **as these datasets cannot be changed**.
4. **IMPORTANT**: for completing your submission, go to [Moodle](https://moodle.lse.ac.uk/course/view.php?id=5824) (Assessment 1 section) and **provide a file with a link to your GitHub repository** (this must be done by the deadline).
