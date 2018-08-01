output "server-ip" {
  value = "${aws_instance.docker.public_ip}"
}
