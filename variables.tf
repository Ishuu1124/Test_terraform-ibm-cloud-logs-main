##############################################################################
# Random variables - scattered
##############################################################################
variable "clusterConfigEndpointType" {
  description = "Which endpoint to use for accessing cluster configuration: default, private, vpe, or link."
  type        = string
  default     = "default"
  validation {
    error_message = "Wrong endpoint type! Must be default, private, vpe or link."
    condition     = contains(["default", "private", "vpe", "link"], var.clusterConfigEndpointType)
  }
}

variable "enable_privateEndpoint" {
  description = "Whether to use private endpoint."
  type        = bool
}

variable "id_resource_group" {
  type        = string
  description = "Resource group id for the cluster"
}

variable "clusterVpcSubnetIds" {
  type        = list(string)
  description = "List of subnet IDs to use."
}

variable "enableMonitoring" {
  type        = bool
  description = "Enable cloud monitoring."
}

variable "isVpcCluster" {
  description = "Is this a VPC cluster."
  type        = bool
  default     = true
}

variable "cloudMonitoringAgentTags" {
  type        = list(string)
  description = "Tags for Cloud Monitoring agent."
}

variable "cosInstanceCrn" {
  description = "CRN of the COS instance to use."
  type        = string
}

variable "kmsInstanceName" {
  description = "The name of Key Management Service instance."
  type        = string
}

variable "apiKeySm" {
  description = "API key for secrets manager."
  type        = string
}

variable "logAgentIamApiKey" {
  type        = string
  description = "IAM API key for logs agent."
}

variable "clusterVersion" {
  type        = string
  description = "Version of the cluster to deploy."
}

variable "region" {
  type        = string
  description = "Region where resources will be deployed."
}

variable "resource_prefix" {
  type        = string
  description = "Prefix for resources."
}

variable "disableOutboundProtection" {
  description = "Disable outbound traffic protection."
  type        = bool
  default     = false
}

variable "vpcCrn" {
  description = "CRN of the vpc."
  type        = string
}

variable "useDataEncryption" {
  description = "Use data encryption for the cluster."
  type        = bool
}

variable "use_cos_for_backup" {
  description = "Use Cloud Object Storage for backup."
  type        = bool
  default     = true
}

variable "enable_logAnalysis" {
  description = "Enable Log Analysis integration."
  type        = bool
}

variable "log_analysis_instance_name" {
  description = "Name of the Log Analysis instance."
  type        = string
}

variable "log_analysis_region" {
  description = "Region for Log Analysis instance."
  type        = string
}

variable "vpe_subnets" {
  description = "VPE subnet IDs to attach VPE endpoints."
  type        = list(string)
}

variable "existing_kms_instance_crn" {
  description = "CRN for existing KMS instance."
  type        = string
}

variable "existing_cos_instance_name" {
  description = "Name for existing COS instance."
  type        = string
}

variable "secretsManagerEndpointType" {
  type        = string
  description = "Type of endpoint for Secrets Manager connection."
}

variable "existing_secrets_manager_id" {
  description = "ID of an existing Secrets Manager instance."
  type        = string
}