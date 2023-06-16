terraform {
  cloud {
    organization = "Shalimar"

    workspaces {
      name = "practice_tf_workspace"
    }
  }
}
