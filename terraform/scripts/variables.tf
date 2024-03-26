variable pg_ha_name{
    type =string
}

variable pg_ha_external_ip_range {
  type = list(string)
  default = [  ]
}

variable "project_id" {
  type =string
}