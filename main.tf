resource "aws_instance" "flask_ec2" {
  ami           = "ami-0fc5d935ebf8bc3bc" # Ubuntu 22.04 (eu-west-1)
  instance_type = "t2.micro"

  user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install -y docker.io
              systemctl start docker
              docker run -d -p 80:5000 VOTRE_DOCKERHUB_USER/flask-app:latest
              EOF

  tags = {
    Name = "FlaskTerraformEC2"
  }
}
