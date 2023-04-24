# AWS CLOUD PROJECT
## About The Project
## The project have four major tasks which are

```
Task 1 - Create a dynamo dB table using the console.
Task 2 - Use AWS SDK to display dynamo data to a web file.
Task 3 - Create a dynamo dB table using terraform.
Task 4 - Package web app using docker (version 3).
```
### Project Details and steps to accomplish each task.
```
Task 1 - Create a dynamo dB table using the console.
```
**To Do List For Task 1**
1.	Go to your AWS Console and navigate to the DynamoDB service. 
[AWS Console Sign in page](https://signin.aws.amazon.com/signin?redirect_uri=https%3A%2F%2Fconsole.aws.amazon.com%2Fconsole%2Fhome%3FhashArgs%3D%2523%26isauthcode%3Dtrue%26nc2%3Dh_ct%26src%3Dheader-signin%26state%3DhashArgsFromTB_eu-north-1_9e2c8c835cf3d170&client_id=arn%3Aaws%3Asignin%3A%3A%3Aconsole%2Fcanvas&forceMobileApp=0&code_challenge=uL5zzIvOWe5uA7RIaHOqkOlAY5jtgXyAeRw9iuzveKY&code_challenge_method=SHA-256)
2.	Click on the "Create table" button. 
![Create Table at AWS](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/1_Click%20on%20create%20table%20button.png)
3.	Enter "GuestBook" as the table name. 
4.	Enter "Email" as the primary key and make sure to select "String" as the data type. 
5.	Create a Country and Name Fields. You may need to research on (global and local indexes)
6.	Click on the "Create" button to create the table. 
7.	Once the table is created, click on the "Items" tab to add some sample data to the table.  
8.	Click on the "Create item" button and enter the sample data for the "Name", "Email", and "Country" fields. 
9.	Populate this with your team members info.
