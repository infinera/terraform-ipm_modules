variable networks {
  type = list(object({name= optional(string), 
                      hub_name = optional(string), 
                      network_profile = optional(string), 
                      config=optional(object({name=optional(string),constellation_frequency= optional(number), modulation = optional(string), managed_by=optional(string), tc_mode=optional(string)})), hub_config = optional(object({traffic_mode: optional(string),fiber_connection_mode: optional(string), managed_by: optional(string), planned_capacity: optional(string), requested_nominal_psd_offset: optional(string), fec_iterations: optional(string), tx_clp_target: optional(string)})), 
                      leaf_modules = optional(list(object({name: string, config_profile = optional(string), config: optional(object({traffic_mode: optional(string),fiber_connection_mode: optional(string), managed_by: optional(string), planned_capacity: optional(string), requested_nominal_psd_offset: optional(string), fec_iterations: optional(string), tx_clp_target: optional(string)}))})))}))
  description = "List of constellation Network"
  default = [{name= "XR Network1", 
             hub_name = "PORT_MODE_HUB", 
             network_profile = "network_profile1", config={modulation: "16QAM"}, 
             hub_config = {traffic_mode = "VTIMode"}, 
             leaf_modules=[{name = "PORT_MODE_LEAF1"}, {name = "PORT_MODE_LEAF2",config={traffic_mode: "VTIMode"}}]}]
  //[{name= "XR Network2", hub_name = "PORT_MODE_HUB", network_profile = "network_profile1", config={modulation: "16QAM"}, hub_config = {traffic_mode = "VTIMode"}, leaf_modules=[{name = "PORT_MODE_LEAF3"}, {name = "PORT_MODE_LEAF4",config={traffic_mode: "VTIMode"}}]}]
             //,{name= "XR Network2", hub_name = "VTI_MODE_HUB", network_profile = "network_profile2"}]
}