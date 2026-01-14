output "groups" {
  value = {
    okta_group = {
      for k, v in okta_group.enumeration : v.name => {
        description  = v.description
        vault_policy = vault_policy.enumeration[k].policy
      }
    }
  }
}