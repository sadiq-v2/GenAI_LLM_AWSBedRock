# Use the official Jupyter PySpark Notebook image as the base image
FROM jupyter/pyspark-notebook

# Copy the PostgreSQL JDBC driver into the Docker image
COPY /utility/postgresql-42.7.3.jar /usr/local/spark/jars/

# Copy custom Jupyter configuration file into the container
COPY /utility/jupyter_notebook_config.py /home/jovyan/.jupyter/

COPY /utility/tags.csv /home/jovyan/work/tags.csv

COPY /utility/input_people_data.csv /home/jovyan/work/input_people_data.csv

# Install boto3 and json packages
RUN pip install boto3