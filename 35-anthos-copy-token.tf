resource "null_resource" "anthos_copy_token"{
     depends_on = [null_resource.anthos_deploy_cluster]
     
     provisioner "local-exec" {
        command = "scp -i ~/.ssh/id_rsa -o StrictHostKeyChecking=no -o UserKnownHostsFile=/dev/null  root@${packet_device.router.access_public_ipv4}:/root/anthos/ksa_token.txt ."

     }
}


