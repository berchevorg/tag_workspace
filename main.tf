variable "TFC_CONFIGURATION_VERSION_GIT_TAG" {
  default = ""
}

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

resource "null_resource" "env" {
  provisioner "local-exec" {
    command = "echo ${var.TFC_CONFIGURATION_VERSION_GIT_TAG}"
  }
  triggers = {
    run_every_time = uuid()
  }
}
