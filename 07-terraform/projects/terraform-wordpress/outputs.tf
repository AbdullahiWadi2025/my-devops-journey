output "instance_id" {
  description = "The ID of the WordPress EC2 instance"
  value       = aws_instance.wordpress.id
}

output "public_ip" {
  description = "Public IP address of the WordPress server"
  value       = aws_instance.wordpress.public_ip
}

output "public_dns" {
  description = "Public DNS name of the WordPress server"
  value       = aws_instance.wordpress.public_dns
}

output "website_url" {
  description = "WordPress website URL"
  value       = "http://${aws_instance.wordpress.public_ip}"
}