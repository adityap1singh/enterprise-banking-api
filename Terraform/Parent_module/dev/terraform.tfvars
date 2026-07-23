rg_detail = {
    rg1 = {
        name = "rg_rg1"
        location = "eastus"
    }

    rg2 = {
        name = "rg_rg2"
        location = "westus"
    }
    
}


vnet = {
    vnet1 = {
        name = "vnet12"
        resource = "rg_rg1"
        location = "eastus"
        space = ["10.0.0.0/16"]
    }
}


subnets = {
    subs = {
        name = "subnet23456"
        resource = "rg_rg1"
        virtual = "vnet12"
        address = ["10.0.1.0/24"]
    }
}


pips = {
    pip = {
        name = "pub1"
        resource = "rg_rg1"
        location = "eastus"
        method = "Static"
    }
}


nics = {
    nccs = {
        name = "ncmms12"
        resource = "rg_rg1"
        location = "eastus"
        subnet_id = "subs"
        public_id = "pip"
        private = "Dynamic"
    }
}


