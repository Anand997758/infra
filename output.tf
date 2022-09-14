output "apacheip" {
  value = aws_instance.apache.public_ip

}
output "jenkinsip" {
  value = aws_instance.cicd.public_ip
}
output "tomcatip" {
  value = aws_instance.tomcat.public_ip
}