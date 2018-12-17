resource "aws_ebs_volume" "PatchVolume" {
    availability_zone          = "ca-central-1a"
    size                       = 40
	encrypted                  = true
    kms_key_id                 = "arn:aws:kms:ca-central-1:088329951103:key/ea67ac20-92d0-42ac-8417-1e9b834ece34"
}

