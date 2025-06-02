resource "tls_private_key" "ssh_key" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "flask" {
  key_name   = "Flask-key"
  public_key = tls_private_key.ssh_key.public_key_openssh
}

resource "null_resource" "save_key" {
  provisioner "local-exec" {
    command = "echo '${tls_private_key.ssh_key.private_key_pem}' > ./Flask-key.pem && chmod 600 ./Flask-key.pem"
  }

  depends_on = [tls_private_key.ssh_key]

}