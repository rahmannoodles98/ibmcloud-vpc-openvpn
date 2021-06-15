[bastion]
bastion-host ansible_host=${bastion_ip} ansible_user=root

[instances]
%{ for instanceIndex, instance in instances ~}
${instance.name} ansible_host=${instance.primary_network_interface.0.primary_ipv4_address} ansible_user=root
%{ endfor ~}
