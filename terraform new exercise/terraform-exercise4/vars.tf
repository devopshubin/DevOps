variable REGION {
    default = "us-east-1"
}

variable ZONE1 {
    default = "us-east-1a"
}

variable AMIS {
    type = map
    default = {
        us-east-1 = "ami-022e1a32d3f742bd8"
        us-east-2 = "ami-057752b3f1d6c4d6c"
    }
}

variable USER {
    default = "ec2-user"
}