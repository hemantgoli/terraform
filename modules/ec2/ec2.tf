# create aws ec2

resource "aws_instance" "aws-ec2" {
    //ami = "${lookup(var.amis, var.aws_regions, "")}"
    ami = "ami-0126086c4e272d3c9"
    instance_type = var.instance_type
    user_data = <<EOF
        apt-get update -y && apt-get install nginx -y

    EOF

}

/*
#userdata
provisioner "remote-exec" {
    inline = [
        "apt-get update -y",
        "apt-get install nginx -y"
    ]
}
*/
