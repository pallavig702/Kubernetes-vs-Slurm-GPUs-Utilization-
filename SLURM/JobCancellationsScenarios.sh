#1. Cancel a specific job: To cancel a single job, use the job ID that was provided when the job was submitted. This command will cancel the job with ID 12345.
scancel 12345

#2. Cancel all jobs of a user: To cancel all jobs submitted by a specific user (for example, username), you can use the -u option. This will cancel all jobs currently submitted by the user username.
scancel -u username

#3. Cancel all jobs in a job array: If you have submitted a job array and want to cancel all jobs within that array, you can use the array job ID followed by [].

bash
Copy code
scancel 12345[]
This cancels all jobs in the job array with the ID 12345.

4. Cancel specific jobs in a job array
To cancel specific jobs in a job array, specify the job array ID and the index of the job within the array:

bash
Copy code
scancel 12345[0]
This cancels only the job at index 0 in the job array with the ID 12345.

You can also cancel a range of jobs within the array:

bash
Copy code
scancel 12345[1-10]
This cancels jobs from index 1 to 10 in the array.

5. Cancel all jobs on a specific node
If you need to cancel all jobs running on a specific node, use the -n option followed by the node name:

bash
Copy code
scancel -n node01
This cancels all jobs running on node01.

6. Cancel all jobs with a specific job name
To cancel jobs based on their job name, you can use the -n option followed by the job name:

bash
Copy code
scancel -n job_name
This cancels all jobs with the name job_name.

7. Cancel jobs by partition
To cancel all jobs in a specific partition, use the -p option:

bash
Copy code
scancel -p partition_name
This will cancel all jobs in the partition_name partition.

8. Cancel jobs with a specific state
You can also cancel jobs in a certain state (e.g., running, pending):

bash
Copy code
scancel -t PENDING
This will cancel all jobs that are in the PENDING state.
