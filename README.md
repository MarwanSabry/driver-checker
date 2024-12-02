# Driver License Checker

## Introduction

This is a bash script can be used to check the eligibility of driver license based on some entries from the user. 

## How it work

1. the script takes 1 argument that must be (new OR get OR list)

2. if the argument is "new", then a menu will appear to the users asking for their name / age / vision_rate (1-6)

3. a message will appear telling the user they are OR are not eligible for a driver's license based on their age and vision_rate (age should be 18 and more & vision_rate should be 4 and more in order to be eligible)

4. the result will be redirected to a log file in this format [name:age:vision_rate:result] example (ahmed:27:5:eligible)

5. if the argument is "get", then a menu will appear to the user asking for the name of the user that they want to see their result

6. a message will appear showing the result of that specific user in this format [name:result] example (ahmed:eligible)

7. if the argument is "list", then a message will appear showing the result of all users in this format [name:result] example

   ahmed:eligible
   
   mai:not eligible
   
   sara:eligible

### Thanks For Your Time
