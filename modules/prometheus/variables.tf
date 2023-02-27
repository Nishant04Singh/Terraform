# variable "kube_config" {
#   type    = string
#   default = "~/.kube/config"
# }

variable "namespace" {
    type    = string
    default = ""
}

variable "prometheus_repo" {
    type    = string
    default = ""
}