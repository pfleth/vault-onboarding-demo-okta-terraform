output "groups" {
  value = {
    okta_group = {
      for k, v in okta_group.enumeration : k => {
        id           = v.id
        name         = v.name
        description  = v.description
        vault_policy = vault_policy.enumeration[k].policy
      }
    }
  }
}