location            = "westeurope"
sku                 = "Standard"
resource_group_name = "demo-RG"
prefix              = "247ai"
Lbs = {
  lb1 = {
    id          = "1" #Id of the load balancer use as a suffix of the load balancer name
    suffix_name = "apa"
    snet_key    = "Subnet1"  #Key of the Subnet
    static_ip   = "10.89.55.4" #(Optional) Set null to get dynamic IP or delete this line
  }
  lb2 = {
    id          = "1" #Id of the load balancer use as a suffix of the load balancer name
    suffix_name = "iis"
    snet_key    = "Subnet2"  #Key of the Subnet
    static_ip   = "10.89.63.4" #(Optional) Set null to get dynamic IP or delete this line
  }
}
LbRules = {
  lbrules1 = {
    Id                = "1"   #Id of a the rule within the Load Balancer
    lb_key            = "lb1" #Key of the Load Balancer
    suffix_name       = "apa" #It must equals the Lbs suffix_name
    lb_port           = "80"
    probe_port        = "80"
    backend_port      = "80"
    probe_protocol    = "Http"
    request_path      = "/"
    load_distribution = "SourceIPProtocol"
  }
  lbrules2 = {
    Id                = "2"   #Id of a the rule within the Load Balancer
    lb_key            = "lb2" #Key of the Load Balancer
    suffix_name       = "iis" #It must equals the Lbs suffix_name
    lb_port           = "80"
    probe_port        = "80"
    backend_port      = "80"
    probe_protocol    = "Http"
    request_path      = "/"
    load_distribution = "SourceIPProtocol"
  }
}

subnet_name = {
  Subnet1 = {
    name                 = "LBSubnet"
    virtual_network_name = "QA-CDE-VNET01-EASTUS-247-INC"
  }
  Subnet2 = {
    name                 = "LBSubnet"
    virtual_network_name = "QA-C2C-VNET01-EASTUS-247-INC"
  }
}
