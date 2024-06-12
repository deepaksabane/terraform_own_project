resource "aws_instance" "deepu" {
  ami                         = var.ami
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public-2a.id
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]
  key_name                    = aws_key_pair.deepu_keypair.key_name

  tags = {
    Name = "deepu"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("~/.ssh/id_rsa")
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "app.py"
    destination = "/home/ubuntu/app.py"
  }

  provisioner "remote-exec" {
    inline = [
      "echo from the remote instance",
      "sudo apt update -y",
      "sudo apt-get install -y python3-venv",
      "python3 -m venv /home/ubuntu/venv",
      "/home/ubuntu/venv/bin/pip install flask",
      "/home/ubuntu/venv/bin/python /home/ubuntu/app.py &",
    ]
  }
}
