resource "aws_key_pair" "deepu_keypair" {
    key_name = "deployer_key"
    public_key = file("~/.ssh/id_rsa.pub") 
}
