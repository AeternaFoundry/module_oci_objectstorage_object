output "objectstorage_objects_id" {
  description = "Map of id values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no id are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.id if v.id != null && length(v.id) > 0 }
}
output "objectstorage_objects_bucket" {
  description = "Map of bucket values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no bucket are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.bucket if v.bucket != null && length(v.bucket) > 0 }
}
output "objectstorage_objects_cache_control" {
  description = "Map of cache_control values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no cache_control are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.cache_control if v.cache_control != null && length(v.cache_control) > 0 }
}
output "objectstorage_objects_content" {
  description = "Map of content values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no content are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.content if v.content != null && length(v.content) > 0 }
}
output "objectstorage_objects_content_disposition" {
  description = "Map of content_disposition values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no content_disposition are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.content_disposition if v.content_disposition != null && length(v.content_disposition) > 0 }
}
output "objectstorage_objects_content_encoding" {
  description = "Map of content_encoding values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no content_encoding are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.content_encoding if v.content_encoding != null && length(v.content_encoding) > 0 }
}
output "objectstorage_objects_content_language" {
  description = "Map of content_language values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no content_language are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.content_language if v.content_language != null && length(v.content_language) > 0 }
}
output "objectstorage_objects_content_length" {
  description = "Map of content_length values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no content_length are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.content_length if v.content_length != null && length(v.content_length) > 0 }
}
output "objectstorage_objects_content_md5" {
  description = "Map of content_md5 values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no content_md5 are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.content_md5 if v.content_md5 != null && length(v.content_md5) > 0 }
}
output "objectstorage_objects_content_type" {
  description = "Map of content_type values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no content_type are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.content_type if v.content_type != null && length(v.content_type) > 0 }
}
output "objectstorage_objects_delete_all_object_versions" {
  description = "Map of delete_all_object_versions values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no delete_all_object_versions are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.delete_all_object_versions if v.delete_all_object_versions != null }
}
output "objectstorage_objects_metadata" {
  description = "Map of metadata values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no metadata are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.metadata if v.metadata != null && length(v.metadata) > 0 }
}
output "objectstorage_objects_namespace" {
  description = "Map of namespace values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no namespace are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.namespace if v.namespace != null && length(v.namespace) > 0 }
}
output "objectstorage_objects_object" {
  description = "Map of object values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no object are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.object if v.object != null && length(v.object) > 0 }
}
output "objectstorage_objects_opc_sse_kms_key_id" {
  description = "Map of opc_sse_kms_key_id values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no opc_sse_kms_key_id are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.opc_sse_kms_key_id if v.opc_sse_kms_key_id != null && length(v.opc_sse_kms_key_id) > 0 }
}
output "objectstorage_objects_source" {
  description = "Map of source values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no source are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.source if v.source != null && length(v.source) > 0 }
}
output "objectstorage_objects_source_uri_details" {
  description = "Map of source_uri_details values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no source_uri_details are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => one(v.source_uri_details) if v.source_uri_details != null && length(v.source_uri_details) > 0 }
}
output "objectstorage_objects_state" {
  description = "Map of state values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no state are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.state if v.state != null && length(v.state) > 0 }
}
output "objectstorage_objects_storage_tier" {
  description = "Map of storage_tier values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no storage_tier are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.storage_tier if v.storage_tier != null && length(v.storage_tier) > 0 }
}
output "objectstorage_objects_version_id" {
  description = "Map of version_id values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no version_id are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.version_id if v.version_id != null && length(v.version_id) > 0 }
}
output "objectstorage_objects_work_request_id" {
  description = "Map of work_request_id values across all objectstorage_objects, keyed the same as var.objectstorage_objects except keys with no work_request_id are omitted"
  value       = { for k, v in oci_objectstorage_object.objectstorage_objects : k => v.work_request_id if v.work_request_id != null && length(v.work_request_id) > 0 }
}

