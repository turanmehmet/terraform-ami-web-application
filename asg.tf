resource "aws_autoscaling_group" "example" {
  availability_zones = data.aws_availability_zones.all.names
  desired_capacity   = var.desired_capacity
  max_size           = var.max_size
  min_size           = var.min_size
  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = aws_launch_template.example.id
      }
      override {
        instance_type     = "t2.micro"
        weighted_capacity = "3"
      }
      override {
        instance_type     = "t2.small"
        weighted_capacity = "2"
      }
    }
  }
}
