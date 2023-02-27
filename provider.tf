provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
    config_context_cluster = "minikube"
  }
}

provider "kubernetes" {
    config_context_cluster = "minikube"
    config_path = "~/.kube/config"
}

