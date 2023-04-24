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

![Enter Table Name](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/2_Enter%20table%20name%20as%20Guestbook%20and%20primary%20key%20as%20Email_id.png)

4.	Enter "Email" as the primary key and make sure to select "String" as the data type. 
5.	Create a Country and Name Fields. You may need to research on (global and local indexes)
6.	Click on the "Create" button to create the table. 

![Enter Table Name](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/3_Table%20Guestbook%20created%20successfuly.png)

7.	Once the table is created, click on the "Items" tab to add some sample data to the table. 


8.	Click on the "Create item" button and enter the sample data for the "Name", "Email", and "Country" fields. 

![Click on Create Items](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/4_Click%20on%20Create%20items%20to%20add%20items.png)

9.	Populate this with your team members info.

![Add Items in The Form](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/5_Items%20added%20in%20Form.png)

### Item List in a Table

![Item List in The Table](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/6_Item%20list%20in%20a%20table.png)

### Item List in Json Format

![Enter Table Name](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/7_Items%20added%20in%20Json%20View.png)

### Task 1 Completed Successfully

---
```
Task 2 - Use AWS SDK to display dynamo data to a web file.
```
**To Do List For Task 2**

1.	Install Composer (https://getcomposer.org/), a package manager for PHP.  
2.	In your project directory, run the “composer require aws/aws-sdk-php". This will install the needed packages. 
3.	Git error: Install git from here, https://git-scm.com/download 
4.	Once the AWS SDK for PHP is installed, you can use it in your PHP code by including the Composer-generated autoloader: 
5.	require 'vendor/autoload.php'; 
6.	You are now able to call on dynamo and perform the desired functions.


