variable "ami" {
  type = "string"
  description = "a AMI que sera utilizada"
  default = "ami-31f1d94a"
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

variable "apache_1" {
  description = "Porta para acesso"
  default  = 80
}

variable "apache_2" {
  description = "Porta para acesso"
  default  = 81
}

variable "tomcat_1" {
  description = "Porta para acesso"
  default  = 9090
}

variable "tomcat_2" {
  description = "Porta para acesso"
  default  = 9091
}

variable "postgresdb" {
  description = "Porta para acesso"
  default  = 5433
}

variable "https" {
  description = "Porta para acesso"
  default  = 443
}

