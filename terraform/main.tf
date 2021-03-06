provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-east-1"
}
resource "aws_instance" "docker" {
  ami = "${var.ami}"
  instance_type = "${var.instance}"
  key_name = "key_terraform"

    user_data = <<-EOF
              #!/bin/bash
              touch "instance"
              sudo pip install http
              nohup python -m SimpleHTTPServer "${var.port}" &
              EOF

  tags {
    Name = "docker"
   }

   vpc_security_group_ids = ["${aws_security_group.sec-group.id}"]

}

resource "aws_security_group" "sec-group" {
  name = "my-sec-group"

  ingress {
    from_port = "${var.port}"
    to_port = "${var.port}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port = "${var.port_ssh}"
    to_port = "${var.port_ssh}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "${var.apache_1}"
    to_port = "${var.apache_1}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "${var.apache_2}"
    to_port = "${var.apache_2}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "${var.tomcat_1}"
    to_port = "${var.tomcat_1}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "${var.tomcat_2}"
    to_port = "${var.tomcat_2}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = "${var.postgresdb}"
    to_port = "${var.postgresdb}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 8
    to_port = 0
    protocol = "icmp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = "${var.https}"
    to_port = "${var.https}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
