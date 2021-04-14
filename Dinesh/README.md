Please scroll to the bottom of the page to find the terraform output and test results

How long did you spend on the coding test? What would you add to your solution if you had more time? If you didn't spend much time on the coding test, then use this as an opportunity to explain what you would add.

**Answer: I spent close to two hours to code these two web applications. If I had more time, I would have registered the nameservers on godaddy or similar domain registar so that the domain can be accesible publicly. I would have added a loadbalancer and add a couple of additional instances for each application on the loadbalancer for effective loadbalacing.
If the web applciation is a static application, we can simple host them on s3 with Make Public option.**


Why did you choose the language you used for the coding test?

**Answer : I used terraform as it is known for effectly building and managing versioned infrastructure in aws and various other cloud platforms.**

What was the most useful feature that was added to the latest version of your chosen language?

**Notable new features added on Terraform 0.14 are

    Sensitive input variables and derived sensitivity
    Concise diffs by default
    Provider Dependency Lock File
    Officially supported ARM64 releases for Linux
    


Output:
aws_instance.http_server[1]: Destroying... [id=i-0bc0e5a48f3805bd3]
aws_instance.http_server[0]: Destroying... [id=i-06768f012dcba9d3a]
aws_instance.http_server[0]: Still destroying... [id=i-06768f012dcba9d3a, 10s elapsed]
aws_instance.http_server[1]: Still destroying... [id=i-0bc0e5a48f3805bd3, 10s elapsed]
aws_instance.http_server[1]: Still destroying... [id=i-0bc0e5a48f3805bd3, 20s elapsed]
aws_instance.http_server[0]: Still destroying... [id=i-06768f012dcba9d3a, 20s elapsed]
aws_instance.http_server[1]: Still destroying... [id=i-0bc0e5a48f3805bd3, 30s elapsed]
aws_instance.http_server[0]: Still destroying... [id=i-06768f012dcba9d3a, 30s elapsed]
aws_instance.http_server[0]: Still destroying... [id=i-06768f012dcba9d3a, 40s elapsed]
aws_instance.http_server[1]: Still destroying... [id=i-0bc0e5a48f3805bd3, 40s elapsed]
aws_instance.http_server[0]: Destruction complete after 42s
aws_instance.http_server[0]: Creating...
aws_instance.http_server[1]: Destruction complete after 42s
aws_instance.http_server[1]: Creating...
aws_instance.http_server[0]: Still creating... [10s elapsed]
aws_instance.http_server[1]: Still creating... [10s elapsed]
aws_instance.http_server[0]: Still creating... [20s elapsed]
aws_instance.http_server[1]: Still creating... [20s elapsed]
aws_instance.http_server[1]: Creation complete after 25s [id=i-0e71eab34828e0d8d]
aws_instance.http_server[0]: Still creating... [30s elapsed]
aws_instance.http_server[0]: Creation complete after 35s [id=i-0ee2383e8d696fa3c]
aws_eip.eip[1]: Modifying... [id=eipalloc-0f8631ee95e461da2]
aws_eip.eip[0]: Modifying... [id=eipalloc-0c263bdda825df0e4]
aws_eip.eip[1]: Modifications complete after 2s [id=eipalloc-0f8631ee95e461da2]
aws_eip.eip[0]: Modifications complete after 2s [id=eipalloc-0c263bdda825df0e4]

Apply complete! Resources: 2 added, 2 changed, 2 destroyed.

Outputs:

name_server = tolist([
  "ns-1442.awsdns-52.org",
  "ns-1864.awsdns-41.co.uk",
  "ns-460.awsdns-57.com",
  "ns-515.awsdns-00.net",
])
public_ip_test1_foo_io = "184.73.83.224"
public_ip_test2_foo_io = "3.91.188.155"

Test:
dinesh@Dineshs-iMac Dinesh % curl http://54.152.253.146
test1
dinesh@Dineshs-iMac Dinesh % curl http://54.147.70.140 
test2

