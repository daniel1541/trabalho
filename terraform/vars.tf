variable "ami" {
  type = "string"
  description = "a AMI que sera utilizada"
  default = "ami-b70554c8"
}

variable "instance" {
  type = "string"
  description = "O Tipo de instancia que sera utilizada"
  default = "t2.micro"
}

variable "port" {
  description = "Porta que sera usada nos servidores web"
  default  = 8080
}

variable "port_ssh" {
  description = "Porta para acesso via ssh"
  default  = 22
}

