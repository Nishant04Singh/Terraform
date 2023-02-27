output "chart" {
    description = "The name of the chart."
    value       = module.prometheus.chart
}

output "status" {
    description = "The name of the chart."
    value       = module.prometheus.status
}

output "id" {
    description = "The name of the chart."
    value       = module.prometheus.id
}