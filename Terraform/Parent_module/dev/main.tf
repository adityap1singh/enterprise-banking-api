module "rg" {
    source = "../../child_module/resource_group"
    rg_detail = var.rg_detail
}

module "vnet" {
    depends_on = [ module.rg ]
    source = "../../child_module/vnet"
    vnet = var.vnet
}

module "subnet" {
    depends_on = [ module.rg, module.vnet ]
    source = "../../child_module/subnet"
    subnets = var.subnets
}

module "pip" {
    depends_on = [ module.rg ]
    source = "../../child_module/publicip"
    pips = var.pips
}


module "networkinterface" {
    depends_on = [ module.rg,module.subnet,module.pip ]
    source = "../../child_module/nic"
    nics = var.nics
    subnets = module.subnet.subnets_id
    pips = module.pip.pipsm_id
  
}