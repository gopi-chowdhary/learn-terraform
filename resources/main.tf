resource "aws_instance" "web" {
  ami           = "ami-03265a0778a880afb"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_route53_record" "www" {
  zone_id = "Z0315396BBDPQ9L5HOV7"
  name    = "test.vdevops69.online"
  type    = "A"
  ttl     = 30
  records = [ aws_instance.web.private_ip ]
}