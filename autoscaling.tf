resource "aws_launch_configuration" "PatchAutoScaling" {
  name_prefix   = "LaunchConfPatch"
  image_id      = "ami-0db37186fbd372aec"
  instance_type = "t2.micro"
		
}

resource "aws_ebs_snapshot" "PatchVolSnapshot" {
  volume_id = "${aws_ebs_volume.PatchVolume.id}"		
}


resource "aws_autoscaling_group" "bar1" {
  name                 = "AutoScalingWin"
  launch_configuration = "${aws_launch_configuration.PatchAutoScaling.name}"
  min_size             = 1
  max_size             = 2
  vpc_zone_identifier  = ["subnet-01db23a36300f0ccd", "subnet-01db23a36300f0ccd"]
  
  lifecycle {
    create_before_destroy = true
  }
}





