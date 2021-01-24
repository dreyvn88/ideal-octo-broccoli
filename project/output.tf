resource "local_file" "ansibleHost" {
    content = templatefile("hosts",
        {
            public_ip = aws_instance.ec2_instance.public_ip,
        }
    )
    filename = "hosts"
}