output "oracle_dns" {
  value = ["${aws_instance.ec2_oracle.*.public_dns}"]
}

output "oracle_ip" {
  value = ["${aws_instance.ec2_oracle.*.public_ip}"]
}
