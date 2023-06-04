#output
output "ip" {
    value = "${aws_instance.aws-ec2.public_ip}"
}