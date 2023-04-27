# AWS CLOUD PROJECT 
### TEAM GITHUB (Azubi Africa Cloud Projects)

<a name="readme-top"></a>
## Collaborations
#### This is a hand-on cloud engineering project delivered by the azubi africa cloud team in 2023. After 6 months of AWS cloud training and front-end development, we got a chance to work on some realife cloud projects. It focuses on working with dynamo dB, docker and terraform. I was able to work with:

1. Darko Larbi [@_linkedin](https://www.linkedin.com/in/kdarkolarbi)
2. Fahad Mohammed [@_linkedin](https://www.linkedin.com/in/fahad-mohammed2)
3. Dotse Dossou [@ linkedin](https://www.linkedin.com/in/dotse-dossou)
4. Joseph Baako [@ linkedin](https://www.linkedin.com/in/joseph-baako)


## About The Project
## The project have four major tasks which are:

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

#### Item List in a Table

![Item List in The Table](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/6_Item%20list%20in%20a%20table.png)

#### Item List in Json Format

![Items Json View](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%201_IMAGES/7_Items%20added%20in%20Json%20View.png)

### Task 1 Completed Successfully

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---
```
Task 2 - Use AWS SDK to display dynamo data to a web file.
```
**To Do List For Task 2**

1.	[Install Composer](https://getcomposer.org/), a package manager for PHP.  

#### Composer Command-line installation

To quickly install Composer in the current directory, run the following script in your terminal.

```
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"

```
This installer script will simply check some php.ini settings, warn you if they are set incorrectly, and then download the latest composer.phar in the current directory. The 4 lines above will, in order:

- Download the installer to the current directory
- Verify the installer SHA-384, which you can also cross-check here
- Run the installer
- Remove the installer

Check the Composer Website [Composer Download](https://getcomposer.org/download/) for other installation instructions.

2.	In your project directory, run this command This will install the needed packages. 

```
“composer require aws/aws-sdk-php"
```

![Install Composer](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%202_IMAGES/1_1_Composer%20Installed.png)

3.	Git error: [Install git from here](https://git-scm.com/download) 
4.	Once the AWS SDK for PHP is installed, you can use it in your PHP code by including the Composer-generated autoloader: 
- sample code found here [PHP sample code](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/frontend/guestlist.php)

#### Guestlist.php codes to run to call dynamodb table.

![Codes to Run to Call Dynamodb Table](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%202_IMAGES/1_1_1_Guestlist.php%20codes%20to%20run%20to%20call%20dynamodb%20table.png)

-	require 'vendor/autoload.php'; 
5.	Call on dynamoDB and perform the desired functions.

#### Challenges Faced in Calling the DynamoDB Table Item List

*Error 1 - Composer wasn't installed in the directory containing the guestlist.php file*

![Composer wasn't installed in the directory containing the guestlist.php file](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%202_IMAGES/1_Guestlist.php%20error.png)

*Error 2 - The DynamoDB Table name was different from what was in the Guestlist.php file*

![The DynamoDB Table name was different from what was in the Guestlist.php file](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%202_IMAGES/2_Guestlist%20Error%202.png)

*Debugging With CHATGPT*

<p align="right">(<a href="#readme-top">back to top</a>)</p>

![Guestlist Error_CHATGPT Debugging suggestions](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%202_IMAGES/3_Guestlist%20Error_CHATGPT%20Debugging%20suggestions.png)

*First Success Running the Guestlist.php file but with Partition key Error*

![Guestlist.php file but with Partition key Error](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%202_IMAGES/4_Guestlist%20Error_Success%20but%20error%20with%20Partition%20key.png)

*Second Success Running the Guestlist.php file but with Table Heading Error*

![Second Success Running the Guestlist.php file but with Table Heading Error](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%202_IMAGES/5_Guestlist%20success%202.png)

*Final Success Running the Guestlist.php File by Calling The Dynamodb Table*

![Final Success Running the Guestlist.php File by Calling The Dynamodb Table](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%202_IMAGES/6_Guestlist.php%20Success%20Final.png)

### Task 2 Completed Successfully

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---
```
Task 3 - Create a dynamo dB table using terraform.
```
**To Do List For Task 3**

- A terraform file is a configuration file that defines the infrastructure and resources to be created by Terraform. 
- A dynamo dB is a fully managed NoSQL database service that provides fast and predictable performance with seamless scalability.  
1.	Install Terraform on your local machine following the installation guide for your operating system: 

- Install terraform by following the instructions and codes found here [Terraform Installlation Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli?in=terraform%2Faws-get-started)

![Terraform Installed Successfully](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/1_1_1_Terraform%20installed%20successfully.png)

2.	Set up your AWS credentials on your local machine. You can do this by configuring the AWS Command Line Interface (CLI) using the aws configure command. 

- AWS CLI Installation command

```
 curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
 unzip awscliv2.zip
 sudo ./aws/install
```
3.	Create a new directory/folder on your local machine where you will store your Terraform configuration files.  
4.	Create a new file in your Terraform directory called anything.tf. 
- Get a sample file 'anything.tf' here [Sample file 'Anything.tf'](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/frontend/Terraform/anything.tf)

![Terraform Anything.tf File Created](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/1_1_Terraform_anything.tf%20file%20created.png)

#### Anything.tf file content

![Terraform Anything.tf File Created](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/1_2_Terraform_anything.tf%20file%20created.png)

5.	In your anything.tf file, define your AWS provider. This tells Terraform which AWS region to use and which AWS credentials to use. 
6.	To create a dynamo dB using a terraform file, you need to: 
-	Define the attributes and settings of the dynamo dB table, such as name, hash key, range key, read capacity, write capacity, etc. 
- Make sure you add the data using terraform. 

7.	Run terraform init to initialize the working directory and download the required plugins 
8.	Run terraform plan to preview the changes that will be made 

#### Terraform Plan Code Running

<p align="right">(<a href="#readme-top">back to top</a>)</p>

![Terraform Plan Code Running](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/1_Terraform%20plan%20success%201.PNG)

#### Terraform Plan Code Running 2

![Terraform Plan Code Running](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/2_Terraform%20plan%20success%202.PNG)

9.	Run terraform apply to create the dynamo dB table

#### Terraform Apply Code Running

![Terraform Apply Code Running](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/5_Terraform%20Apply%20success%201.PNG)

#### Terraform Apply Code Running 2

![Terraform Apply Code Running](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/9_Terraform%20Apply%20success%205.PNG)

#### Terraform_GuestBook_2 Table Created on DynamoDB using Terraform

![ Terraform_GuestBook_2 Table Created on DynamoDB using Terraform](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/10_Terraform_GuestBook_2%20Table%20Created%20on%20DynamoDB%20using%20Terraform.PNG)

#### Terraform_GuestBook_2 Table And Items Added on Dynamodb Using Terraform

![Terraform_GuestBook_2 Table And Items Added on Dynamodb Using Terraform](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%203_IMAGES/11_Terraform_GuestBook_2_and_Items%20on%20Dynamodb.PNG)

### Task 3 Completed Successfully

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

```
Task 4 - Package web app using docker (version 3)
```
**To Do List For Task 4**

1.	Create a Dockerfile in the "version3" folder with the following contents: Dockerfiles are what tell docker how it should build your image (environments)  
2.	Build the Docker image using the following command:  
```
docker build -t your-dockerhub-username/docker-web-app:3.0 . 
```
-	This will build a Docker image with the name "your-dockerhub-username/docker-web-app" and the tag "3.0".  

![Docker Build](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%204_IMAGES/Task%204_Docker%20Build.PNG)

3.	Push the Docker image to DockerHub using the following command:  
```
docker push your-dockerhub-username/docker-web-app:3
```
![Docker Push](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%204_IMAGES/Task%204_Docker%20Push_Successful.PNG)

#### Images Pushed at Docker Hub

![Docker Push](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage/blob/main/PROJECT%20IMAGES/TASK%204_IMAGES/Task%204_docker-web-app%20at%20dockerhub.PNG)

### Task 4 Completed Successfully

<p align="right">(<a href="#readme-top">back to top</a>)</p>

---

<!-- GETTING STARTED -->
## Getting Started

To get a local copy up and running follow the instructions below:


### Installation

1. Clone this [Github Repo](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage)
  
2. Follow the STEPS above to complete TASK 1 to 4.

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- CONTACT -->
## Contact

Daniel Agyei - [@my_linkedin](https://www.linkedin.com/in/daniel-owusu-banahene-agyei-3a4172136)

Email: [My Email](daniel.agyeibanahene@gmail.com)

Project Link: [Project Link](https://github.com/aduome/Link-AWS-DynamoDB-to-a-Webpage)

<p align="right">(<a href="#readme-top">back to top</a>)</p>



<!-- References -->
## References

### Useful Resources And Links

* [Git Cheat Sheet](https://education.github.com/git-cheat-sheet-education.pdf)
* [Terraform Cheat sheet](https://acloudguru.com/blog/engineering/the-ultimate-terraform-cheatsheet)
* [Composer Cheat sheet](https://devhints.io/composer)
* [Docker Cheat sheet](https://docs.docker.com/get-started/docker_cheatsheet.pdf)
* [GitHub Pages](https://pages.github.com)
* [Gitpod](https://www.gitpod.io/)
* [Chat GPT](https://chat.openai.com/auth/login)
<p align="right">(<a href="#readme-top">back to top</a>)</p>
