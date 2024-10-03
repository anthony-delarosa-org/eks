resource "helm_release" "nginx_controller" {
  name = "ingress-nginx"

  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  namespace        = "ingress-nginx"
  version          = "4.11.2"
  create_namespace = true

  depends_on = [aws_eks_node_group.general]
}
