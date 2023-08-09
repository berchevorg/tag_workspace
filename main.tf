resource "random_pet" "name" {
 length    = "7"
 separator = "-"
}


resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "env"
  }
  triggers = {
    run_every_time = uuid()
  }
}
