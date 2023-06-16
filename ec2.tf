resource "aws_instance" "practice-TF-ec2" {
	ami 	= "ami-09212035c6444f37a"
	instance_type =	"t4g.small"
	tags 	= {
		Name = "practice-TF-ec2-1"
		}
}
