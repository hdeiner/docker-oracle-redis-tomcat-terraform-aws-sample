resource "aws_instance" "ec2_oracle" {
  count = 1
  ami = "ami-759bc50a"
  instance_type = "t2.medium"
  key_name = "${aws_key_pair.oracle_key_pair.key_name}"
  security_groups = ["${aws_security_group.oracle.name}"]
  provisioner "remote-exec" {
    connection {
      type = "ssh",
      user = "ubuntu",
      private_key = "${file("~/.ssh/id_rsa")}"
    }
    script = "terraformProvisionOracleUsingDocker.sh"
  }
  tags {
    Name = "docker-oracle-redis-tomcat-terraform-aws-sample Oracle ${format("%03d", count.index)}"
  }
}