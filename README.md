# nmg-engineering-recruitment
The recruitment test to apply for an engineering role at Neiman Marcus

NMG DevOps Engineer Recruitment Test
====================================

Thank you for taking the time to do our technical test. It consists of two parts:

* [A technical test](#technical-test)
* [A few technical questions](#technical-questions)

In order to avoid bounced emails we would like you to submit your results by uploading the relevant zip file to a shared Google Drive folder. In order to obtain the URL for this folder, please supply your Gmail or Google-based email address to either your agent or the NMG member of staff who assigned you the test.

Please make this a **single** zip file named `{yourname}-{role-applied-for}.zip` containing:

1. A single markdown file with the answers to the technical questions
2. One folder containing the technical test


## Technical Test

* Your task is to provision a highly available Wordpress setup running on AWS
* With this test, we want to see your ability to create an entire infrastructure from scratch as well as your skills for configuration management.

### Requirements

* In your solution please emphasize on readability, maintainability and DevOps methodologies. We expect a clear way to recreate your setup.
* Since you have to have an HA config using 443 please use a self signed cert.
* Assume a VPC with multi-AZ already exists in a given region.
* Use any configuration management tool.
* The infrastructure provider should be AWS.
* You can create the solution in any language or framework of your choice though cloudformation or terraform is preferred.
* A clean bare minimum working infrastructure is preferred than a full blown solution pieced together with scissors, rope and duct tape. Do not skip security considerations.
* You should provide clear instructions on how to use the code you have provided. The clarity and precision of these instructions - and the ease with which the interviewers can execute them - will be a key part of the assessment. Please create a README file detailing said instructions. Please also use this file for listing any additional comments or observations you might want to share about your submission.

### Bonus Points

* If you can provide a simple way for performing upgrades to Wordpress.
* If you can document all aspects of your code, in the README and within the code itself.
* If you can generate the self signed cert/key.
* If you can make this run using a playbook vs. using user-data.

# Technical questions

Please answer the following questions in a markdown file called `Answers to technical questions.md`.

1. How long did you spend on the coding test? What would you add to your solution if you had more time? If you didn't spend much time on the coding test then use this as an opportunity to explain what you would add.
2. Why did you choose the language you used for the coding test?
3. What was the most useful feature that was added to the latest version of your chosen language?

#### Thanks for your time, we look forward to hearing from you!
- The [NMG Tech team]
