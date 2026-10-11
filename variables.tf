variable "objectstorage_objects" {
  description = <<EOT
Map of objectstorage_objects, attributes below
Required:
    - bucket
    - namespace
    - object
Optional:
    - cache_control
    - content
    - content_disposition
    - content_encoding
    - content_language
    - content_md5
    - content_type
    - delete_all_object_versions
    - metadata
    - opc_sse_kms_key_id
    - source
    - storage_tier
    - source_uri_details (block):
        - bucket (required)
        - destination_object_if_match_etag (optional)
        - destination_object_if_none_match_etag (optional)
        - namespace (required)
        - object (required)
        - region (required)
        - source_object_if_match_etag (optional)
        - source_version_id (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    bucket                     = string
    namespace                  = string
    object                     = string
    cache_control              = optional(string)
    content                    = optional(string)
    content_disposition        = optional(string)
    content_encoding           = optional(string)
    content_language           = optional(string)
    content_md5                = optional(string)
    content_type               = optional(string)
    delete_all_object_versions = optional(bool)
    metadata                   = optional(map(string))
    opc_sse_kms_key_id         = optional(string)
    source                     = optional(string)
    storage_tier               = optional(string)
    source_uri_details = optional(object({
      bucket                                = string
      destination_object_if_match_etag      = optional(string)
      destination_object_if_none_match_etag = optional(string)
      namespace                             = string
      object                                = string
      region                                = string
      source_object_if_match_etag           = optional(string)
      source_version_id                     = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

