# NMG Cloud DevOps Engineer

Thank you for taking the time to do our technical assessment. This assessment should demonstrate your technical skills and consists of two parts:

* [A technical test](#technical-test)
* [A few technical questions](#technical-questions)

## Submissions

Please refer to the root `README.md` file at the root of this project for submission details.

## Technical Test

Your task is to develop a repository that provisions a highly available webserver, running two different websites. This should follow AWS best practices, and leverage automation. Further requirements are below.

You may reference the internet, but do not work with anyone else to complete the task.

### Evaluation

With the technical test we evaluate:

* Task completion
  * Does the task work to provision as expected?
* How the task is completed
  * A lot is left up to interpretation on purpose. We want to see that you can think for yourself and know how to work in AWS/DevOps without a specific step-by-step blueprint.

### Requirements

* Provision a **highly available**, and **secure** webserver, that serves two different websites
* Follow AWS best practices, including good architecture and coding practices
* Leverage infrastructure-as-code, and automation where possible
* Use any tooling or language framework you wish
  * Terraform or CloudFormation are acceptable, and Terraform is preferred
* The work should be setup like a repository
* The repository should be able to provision in any region simply by changing a few parameters or variables
* Emphasize readability, maintainability and DevOps methodologies
* Documentation, including how to provision, should be supplied
* The latest Amazon Linux, Amazon Linux 2, CentOs or Ubuntu AMI's may be used

### Website Details

* Through automation, the project should provision, install, and configure a webserver
* The webserver should serve two different domains, `test1.foo.io` and `test2.foo.io`
* `test1.foo.io` must return the response, `test1`
* `test2.foo.io` must return the response, `test2`
* Do not worry about `https` or `SSL`

### Existing Infrastructure

Assume the following infrastructure exists:

* VPC
* Multi-Availability Zone
  * One private and public subnet for each AZ
* Internet gateway
* Nat gateway.

### Success

To test if this work is successful, two curl commands can be run:

```
curl -H 'test1.foo.io' http://{endpoint}
curl -H 'test2.foo.io' http://{endpoint}
```

If the output is test1 and test2 you know you have been successful.

## Technical questions

Please answer the following questions in a markdown file called `questions.md`.

1. How long did you spend on the coding test? What would you add to your solution if you had more time? If you didn't spend much time on the coding test, then use this as an opportunity to explain what you would add.

2. Why did you choose the language you used for the coding test?

3. What was the most useful feature that was added to the latest version of your chosen language?

##### Thanks for your time, we look forward to hearing from you!

- The [NMG Tech team]
