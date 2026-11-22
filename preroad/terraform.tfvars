resource_group = {
  rg1 = {
    rg_name     = "rg_poad_01"
    rg_location = "Central India"

  }

  rg2 = {
    rg_name     = "rg_poad_02"
    rg_location = "Central India"

  }
}
storages = {
  sa1 = {
    sa_name                     = "storage425"
    sa_resource_group_name      = "rg-Adya"
    sa_location                 = "centralindia"
    sa_account_tier             = "Standard"
    sa_account_replication_type = "GRS"
  }

  sa2 = {
    sa_name                     = "storage427"
    sa_resource_group_name      = "rg-Adya"
    sa_location                 = "centralindia"
    sa_account_tier             = "Standard"
    sa_account_replication_type = "GRS"
  }
}

vnet_groups = {
  vnet1 = {
    name                = "vnet_poad_01"
    location            = "Central India"
    resource_group_name = "rg-Adya"
    address_space       = ["10.1.0.0/16"]
  }

  vnet2 = {
    name                = "vnet_poad_02"
    location            = "Central India"
    resource_group_name = "rg-Adya"
    address_space       = ["10.2.0.0/16"]
  }
}

subnet_groups = {
  snet1 = {
    name                 = "subnet-frontend"
    resource_group_name  = "rg-Adya"
    virtual_network_name = "vnet_poad_01"
    address_prefixes     = ["10.1.1.0/24"]
  }

  snet2 = {
    name                 = "subnet-backend"
    resource_group_name  = "rg-Adya"
    virtual_network_name = "vnet_poad_01"
    address_prefixes     = ["10.1.2.0/24"]
  }

  snet3 = {
    name                 = "subnet-database"
    resource_group_name  = "rg-Adya"
    virtual_network_name = "vnet_poad_01"
    address_prefixes     = ["10.1.3.0/24"]
  }
}