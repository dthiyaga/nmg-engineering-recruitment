provider "aws" {
  region     = "${var.region}"
  version    = "~> 2.0"
}


resource "aws_instance" "http_server" {
  ami           = lookup(var.ami_id, var.region)
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public_1.id
  count         = "${var.instance_count}"

  # Security group assign to instance
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]
  key_name = var.key_name

  user_data = <<EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install -y httpd.x86_64
    sudo service httpd start
    sudo service httpd enable
    echo "${format("test%01d", count.index + 1)}" | sudo tee /var/www/html/index.html
  EOF

tags = {
    Name  = "${element(var.instance_tags, count.index)}"
  }
}

resource "aws_eip" "eip" {
  count         = "${var.instance_count}"
  instance = aws_instance.http_server[count.index].id
  vpc      = true
}

output "public_ip_test1_foo_io" {

  value = aws_instance.http_server[0].public_ip

}
output "public_ip_test2_foo_io" {

  value = aws_instance.http_server[1].public_ip

}
