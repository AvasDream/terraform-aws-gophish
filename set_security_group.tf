resource "aws_security_group" "allow_connections_gophish" {
  name        = "allow_connections_gophish"
  description = "Allow TLS inbound traffic for ssh but only for host PCs external IP."

  ingress {
    /* SSH incoming */
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = formatlist("%s/32", list(chomp(data.http.external_ip.body)))
  }
  ingress {
    /* RDP incoming */
    from_port   = 3389
    to_port     = 3389
    protocol    = "tcp"
    cidr_blocks = formatlist("%s/32", list(chomp(data.http.external_ip.body)))
  }
  ingress {
    /* Admin Panel incoming */
    from_port   = 3333
    to_port     = 3333
    protocol    = "tcp"
    cidr_blocks = formatlist("%s/32", list(chomp(data.http.external_ip.body)))
  }

  tags = {
    Name = "allow_connections_gophish"
  }
  egress {
    /* HTTP outgoing*/
    from_port   = 80
    to_port     = 80
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    /* HTTPS outgoing */
    from_port   = 443
    to_port     = 443
    protocol    = "6"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
