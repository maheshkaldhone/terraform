output "instance_id" {
    value = aws_instance.PR3-demo-instance.id
}

output "instance_public_ip" {
    value = aws_instance.PR3-demo-instance.public_ip
}

output "instance_private_ip" {
    value = aws_instance.PR3-demo-instance.private_ip
}

output "instance_arn" {
    value = aws_instance.PR3-demo-instance.arn
}

output "instance_availability_zone" {
    value = aws_instance.PR3-demo-instance.availability_zone
}

output "instance_state" {
    value = aws_instance.PR3-demo-instance.instance_state
}

output "instance_type" {
    value = aws_instance.PR3-demo-instance.instance_type
}

output "instance_tags" {
    value = aws_instance.PR3-demo-instance.tags
}