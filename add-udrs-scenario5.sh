az network route-table create --name default-to-nva --resource-group vwan-microhack-spoke-rg --location westeurope
az network route-table route create --address-prefix 0.0.0.0/0 --name default-route --next-hop-type VirtualAppliance --next-hop-ip-address 172.16.20.4 --resource-group vwan-microhack-spoke-rg --route-table-name default-to-nva
az network vnet subnet update --resource-group vwan-microhack-spoke-rg --name vmSubnet --vnet-name spoke-1-vnet --route-table default-to-nva
az network vnet subnet update --resource-group vwan-microhack-spoke-rg --name vmSubnet --vnet-name spoke-2-vnet --route-table default-to-nva