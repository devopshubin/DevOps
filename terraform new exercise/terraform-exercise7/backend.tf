terraform {
    backend "s3" {
        bucket = "rimikidusribucket"
        key = "terraform/backend_exercise7"
        region = "us-east-1"
    }
}