# resource "aws_launch_template" "template" {
#   name_prefix   = "template-auto"
#   image_id      = "i-063ead329d54c5705"
#   instance_type = "t2.micro"
# }

# resource "aws_autoscaling_group" "bar" {
#   availability_zones = ["us-west-1b"]
#   desired_capacity   = 2
#   max_size           = 4
#   min_size           = 1

#   launch_template {
#     id      = aws_launch_template.templat.id
#     version = "$Latest"
#   }
# }
resource "aws_ami_from_instance" "ami-copy" {
  name               = "terraform-example"
  source_instance_id = "i-063ead329d54c5705"
}