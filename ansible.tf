# Ansible Master 
resource "aws_instance" "ans_master" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.ecomm-pub-sn.id
  key_name = "7am"
  vpc_security_group_ids = [aws_security_group.allow_ecomm.id]
  user_data = file("install_ansible.sh")
  private_ip = "10.0.1.10"
  

  tags = {
    Name = "Ansible Master"
  }
}

# Ansible Node
resource "aws_instance" "ans_n1" {
  ami           = "ami-0763cf792771fe1bd"
  instance_type = "t3.micro"
  subnet_id = aws_subnet.ecomm-pub-sn.id
  key_name = "7am"
  vpc_security_group_ids = [aws_security_group.allow_ecomm.id]
  private_ip = "10.0.1.11"


  tags = {
    Name = "Ansible Node"
  }
}

