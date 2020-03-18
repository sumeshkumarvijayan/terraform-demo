terraform {
    backend "s3" {
        bucket = "terraform-tsstate-skvdemo2"
        key = "tfstate/state"
    }
}