resource "aws_route53_zone" "aws_rtzone" {
  name = "nmarcus-test.com"

  tags = {
    Environment = "dev"
  }
}

resource "aws_route53_record" "http1" {
  zone_id = aws_route53_zone.aws_rtzone.zone_id
  name    = "test1.foo.io"
  type    = "A"
  ttl     = "300"

  records = [aws_eip.eip[0].public_ip]
}

resource "aws_route53_record" "http2" {
  zone_id = aws_route53_zone.aws_rtzone.zone_id
  name    = "test2.foo.io"
  type    = "A"
  ttl     = "300"

  records = [aws_eip.eip[1].public_ip]
}

output "name_server"{
  value=aws_route53_zone.aws_rtzone.name_servers
}
