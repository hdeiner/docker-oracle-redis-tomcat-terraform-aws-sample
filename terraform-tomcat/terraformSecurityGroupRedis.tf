resource "aws_security_group" "tomcat" {
  name = "docker-oracle-redis-tomcat-terraform-aws-sample-tomcat"
  description = "docker-oracle-redis-tomcat-terraform-aws-sample Tomcat Access"
  ingress {
    protocol = "tcp"
    from_port = 22
    to_port = 22
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  ingress {
    protocol = "tcp"
    from_port = 8080
    to_port = 8080
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
  tags {
    Name = "docker-oracle-redis-tomcat-terraform-aws-sample Tomcat Access"
  }
}