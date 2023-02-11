# output t1 {
#   value = data.nsxt_policy_tier1_gateway.tier1_router.path
# }

# output newt1 {
#   value = nsxt_policy_tier1_gateway.tier1_gw.path
# }

# output myseg {
#   value = nsxt_policy_segment.ocp_segment.path
# }

output rg {
    value = data.azurerm_resource_group.sandboxgroup
}