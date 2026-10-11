resource "oci_objectstorage_object" "objectstorage_objects" {
  for_each = var.objectstorage_objects

  bucket                     = each.value.bucket
  namespace                  = each.value.namespace
  object                     = each.value.object
  cache_control              = each.value.cache_control
  content                    = each.value.content
  content_disposition        = each.value.content_disposition
  content_encoding           = each.value.content_encoding
  content_language           = each.value.content_language
  content_md5                = each.value.content_md5
  content_type               = each.value.content_type
  delete_all_object_versions = each.value.delete_all_object_versions
  metadata                   = each.value.metadata
  opc_sse_kms_key_id         = each.value.opc_sse_kms_key_id
  source                     = each.value.source
  storage_tier               = each.value.storage_tier

  dynamic "source_uri_details" {
    for_each = each.value.source_uri_details != null ? [each.value.source_uri_details] : []
    content {
      bucket                                = source_uri_details.value.bucket
      destination_object_if_match_etag      = source_uri_details.value.destination_object_if_match_etag
      destination_object_if_none_match_etag = source_uri_details.value.destination_object_if_none_match_etag
      namespace                             = source_uri_details.value.namespace
      object                                = source_uri_details.value.object
      region                                = source_uri_details.value.region
      source_object_if_match_etag           = source_uri_details.value.source_object_if_match_etag
      source_version_id                     = source_uri_details.value.source_version_id
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

