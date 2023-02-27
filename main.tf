module "prometheus" {
  source  = "./modules/prometheus"
 
   prometheus_repo  = var.prometheus_repo
   namespace        = var.namespace
   #chart            = "prometheus"
  depends_on = [
    kubernetes_namespace.monitoring
  ]
}

resource "kubernetes_namespace" "monitoring" {
  metadata {
    name = var.namespace
  }
}

resource "null_resource" "top-use" {
  triggers = {
    output = local.timestamp
  }
provisioner "local-exec" {
    when    = create
    command = "rm -f Nishant-* && top -n 1 -b > Nishant-${local.timestamp}.txt"
  }

 depends_on = [
    module.prometheus
  ]
}