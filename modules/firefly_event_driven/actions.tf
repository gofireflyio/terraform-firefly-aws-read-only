variable "actions" {
//TODO: many firefly unsupported services are commented due to policy characters limitations- need to find solution:
  default = {
    "acm" : {
      "rules" : [
        "AddTagsToCertificate", "DeleteCertificate", "ImportCertificate", "PutAccountConfiguration",
        "RemoveTagsFromCertificate", "RenewCertificate", "UpdateCertificateOptions"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "acm-pca" : {
      "rules" : [
        "CreateCertificateAuthority", "CreateCertificateAuthorityAuditReport", "CreatePermission",
        "DeleteCertificateAuthority", "DeletePermission", "DeletePolicy", "ImportCertificateAuthorityCertificate",
        "IssueCertificate", "PutPolicy", "RevokeCertificate", "UpdateCertificateAuthority"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "apigateway" : {
      "rules" : [
        "CreateApiKey", "CreateAuthorizer", "CreateBasePathMapping", "CreateDeployment", "CreateDocumentationPart",
        "CreateDocumentationVersion", "CreateDomainName", "CreateModel", "CreateRequestValidator", "CreateResource",
        "CreateRestApi", "CreateStage", "CreateUsagePlan", "CreateUsagePlanKey", "CreateVpcLink", "DeleteApiKey",
        "DeleteAuthorizer", "DeleteBasePathMapping", "DeleteClientCertificate", "DeleteDeployment",
        "DeleteDocumentationPart", "DeleteDocumentationVersion", "DeleteDomainName", "DeleteGatewayResponse",
        "DeleteIntegration", "DeleteIntegrationResponse", "DeleteMethod", "DeleteMethodResponse", "DeleteModel",
        "DeleteRequestValidator", "DeleteResource", "DeleteRestApi", "DeleteStage", "DeleteUsagePlan",
        "DeleteUsagePlanKey", "DeleteVpcLink", "FlushStageAuthorizersCache", "FlushStageCache", "ImportApiKeys",
        "ImportDocumentationParts", "ImportRestApi", "PutGatewayResponse", "PutIntegration", "PutIntegrationResponse",
        "PutMethod", "PutMethodResponse", "PutRestApi", "UpdateAccount", "UpdateApiKey", "UpdateAuthorizer",
        "UpdateBasePathMapping", "UpdateClientCertificate", "UpdateDeployment", "UpdateDocumentationPart",
        "UpdateDocumentationVersion", "UpdateDomainName", "UpdateGatewayResponse", "UpdateIntegration",
        "UpdateIntegrationResponse", "UpdateMethod", "UpdateMethodResponse", "UpdateModel", "UpdateRequestValidator",
        "UpdateResource", "UpdateRestApi", "UpdateStage", "UpdateUsage", "UpdateUsagePlan", "UpdateVpcLink"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "appconfig" : {
      "rules" : [
        "CreateApplication", "CreateConfigurationProfile", "CreateDeploymentStrategy", "CreateEnvironment",
        "CreateHostedConfigurationVersion", "DeleteApplication", "DeleteConfigurationProfile",
        "DeleteDeploymentStrategy", "DeleteEnvironment", "DeleteHostedConfigurationVersion", "UpdateApplication",
        "UpdateConfigurationProfile", "UpdateDeploymentStrategy", "UpdateEnvironment"
      ],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "application-autoscaling" : {
      "rules" : [
        "DeleteScalingPolicy", "DeleteScheduledAction", "DeregisterScalableTarget", "PutScalingPolicy",
        "PutScheduledAction"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "appmesh" : {
      "rules" : [
        "CreateGatewayRoute", "CreateMesh", "CreateRoute", "CreateVirtualGateway", "CreateVirtualNode",
        "CreateVirtualRouter", "CreateVirtualService", "DeleteGatewayRoute", "DeleteMesh", "DeleteRoute",
        "DeleteVirtualGateway", "DeleteVirtualNode", "DeleteVirtualRouter", "DeleteVirtualService",
        "UpdateGatewayRoute", "UpdateMesh", "UpdateRoute", "UpdateVirtualGateway", "UpdateVirtualNode",
        "UpdateVirtualRouter", "UpdateVirtualService"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1",
        "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
#    "athena" : {
#      "rules" : [
#        "CreateDataCatalog", "CreateNamedQuery", "CreatePreparedStatement", "CreateWorkGroup", "DeleteDataCatalog",
#        "DeleteNamedQuery", "DeletePreparedStatement", "DeleteWorkGroup", "UpdateDataCatalog",
#        "UpdatePreparedStatement", "UpdateWorkGroup"
#      ],
#      "regions" : [
#        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
#        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
#        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
#      ]
#    },
    "autoscaling" : {
      "rules" : [
        "AttachInstances", "AttachLoadBalancerTargetGroups", "AttachLoadBalancers", "CreateAutoScalingGroup",
        "CreateLaunchConfiguration", "CreateOrUpdateTags", "DeleteAutoScalingGroup", "DeleteLaunchConfiguration",
        "DeleteLifecycleHook", "DeleteNotificationConfiguration", "DeletePolicy", "DeleteScheduledAction", "DeleteTags",
        "DeleteWarmPool", "DetachInstances", "DetachLoadBalancerTargetGroups", "DetachLoadBalancers",
        "DisableMetricsCollection", "EnableMetricsCollection", "PutLifecycleHook", "PutNotificationConfiguration",
        "PutScalingPolicy", "PutScheduledUpdateGroupAction", "PutWarmPool", "RecordLifecycleActionHeartbeat",
        "SetDesiredCapacity", "SetInstanceHealth", "SetInstanceProtection", "SuspendProcesses",
        "TerminateInstanceInAutoScalingGroup", "UpdateAutoScalingGroup"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "clouddirectory" : {
      "rules" : [
        "AddFacetToObject", "ApplySchema", "AttachObject", "AttachPolicy", "AttachToIndex", "AttachTypedLink",
        "CreateDirectory", "CreateFacet", "CreateIndex", "CreateObject", "CreateSchema", "CreateTypedLinkFacet",
        "DeleteDirectory", "DeleteFacet", "DeleteSchema", "DeleteTypedLinkFacet", "DetachFromIndex", "DetachObject",
        "DetachPolicy", "DetachTypedLink", "DisableDirectory", "EnableDirectory", "PutSchemaFromJson",
        "RemoveFacetFromObject", "UpdateFacet", "UpdateLinkAttributes", "UpdateObjectAttributes", "UpdateSchema",
        "UpdateTypedLinkFacet", "UpgradeAppliedSchema", "UpgradePublishedSchema"
      ],
      "regions" : [
        "ap-southeast-1", "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-west-1", "eu-west-2", "us-east-1",
        "us-east-2", "us-west-2"
      ]
    },
    "cloudformation" : {
      "rules" : [
        "ActivateType", "CreateChangeSet", "CreateStack", "CreateStackInstances", "CreateStackSet", "DeactivateType",
        "DeleteChangeSet", "DeleteStack", "DeleteStackInstances", "DeleteStackSet", "DeregisterType",
        "DetectStackDrift", "DetectStackResourceDrift", "DetectStackSetDrift", "EstimateTemplateCost",
        "ImportStacksToStackSet", "RecordHandlerProgress", "RollbackStack", "SetStackPolicy", "SetTypeConfiguration",
        "SetTypeDefaultVersion", "UpdateStack", "UpdateStackInstances", "UpdateStackSet", "UpdateTerminationProtection"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "cloudfront" : {
      "rules" : [
        "AssociateAlias", "CreateCachePolicy", "CreateCloudFrontOriginAccessIdentity", "CreateDistribution",
        "CreateDistributionWithTags", "CreateFieldLevelEncryptionConfig", "CreateFieldLevelEncryptionProfile",
        "CreateFunction", "CreateInvalidation", "CreateKeyGroup", "CreateMonitoringSubscription",
        "CreateOriginRequestPolicy", "CreatePublicKey", "CreateRealtimeLogConfig", "CreateResponseHeadersPolicy",
        "CreateStreamingDistribution", "CreateStreamingDistributionWithTags", "DeleteCachePolicy",
        "DeleteCloudFrontOriginAccessIdentity", "DeleteDistribution", "DeleteFieldLevelEncryptionConfig",
        "DeleteFieldLevelEncryptionProfile", "DeleteFunction", "DeleteKeyGroup", "DeleteMonitoringSubscription",
        "DeleteOriginRequestPolicy", "DeletePublicKey", "DeleteRealtimeLogConfig", "DeleteResponseHeadersPolicy",
        "DeleteStreamingDistribution", "UpdateCachePolicy", "UpdateCloudFrontOriginAccessIdentity",
        "UpdateDistribution", "UpdateFieldLevelEncryptionConfig", "UpdateFieldLevelEncryptionProfile", "UpdateFunction",
        "UpdateKeyGroup", "UpdateOriginRequestPolicy", "UpdatePublicKey", "UpdateRealtimeLogConfig",
        "UpdateResponseHeadersPolicy", "UpdateStreamingDistribution"
      ],
      "regions" : ["aws-global"]
    },
    "cloudtrail" : {
      "rules" : [
        "AddTags", "CreateTrail", "DeleteTrail", "PutEventSelectors", "PutInsightSelectors", "RemoveTags", "UpdateTrail"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1",
        "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "codeartifact" : {
      "rules" : [
        "AssociateExternalConnection", "CreateDomain", "CreateRepository", "DeleteDomain",
        "DeleteDomainPermissionsPolicy", "DeletePackageVersions", "DeleteRepository",
        "DeleteRepositoryPermissionsPolicy", "DisassociateExternalConnection", "DisposePackageVersions",
        "PutDomainPermissionsPolicy", "PutRepositoryPermissionsPolicy", "UpdatePackageVersionsStatus",
        "UpdateRepository"
      ],
      "regions" : [
        "ap-northeast-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "eu-central-1", "eu-north-1", "eu-south-1",
        "eu-west-1", "eu-west-2", "eu-west-3", "us-east-1", "us-east-2", "us-west-2"
      ]
    },
    "codebuild" : {
      "rules" : [
        "CreateProject", "CreateReportGroup", "CreateWebhook", "DeleteBuildBatch", "DeleteProject", "DeleteReport",
        "DeleteReportGroup", "DeleteResourcePolicy", "DeleteSourceCredentials", "DeleteWebhook",
        "ImportSourceCredentials", "InvalidateProjectCache", "PutResourcePolicy", "UpdateProject",
        "UpdateProjectVisibility", "UpdateReportGroup", "UpdateWebhook"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "codepipeline" : {
      "rules" : [
        "CreateCustomActionType", "CreatePipeline", "DeleteCustomActionType", "DeletePipeline", "DeleteWebhook",
        "DeregisterWebhookWithThirdParty", "DisableStageTransition", "EnableStageTransition", "PutActionRevision",
        "PutApprovalResult", "PutJobFailureResult", "PutJobSuccessResult", "PutThirdPartyJobFailureResult",
        "PutThirdPartyJobSuccessResult", "PutWebhook", "UpdateActionType", "UpdatePipeline"
      ],
      "regions" : [
        "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "sa-east-1",
        "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
#    "codestar" : {
#      "rules" : [
#        "AssociateTeamMember", "CreateProject", "CreateUserProfile", "DeleteProject", "DeleteUserProfile",
#        "DisassociateTeamMember", "UpdateProject", "UpdateTeamMember", "UpdateUserProfile"
#      ],
#      "regions" : [
#        "ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ca-central-1", "eu-central-1",
#        "eu-north-1", "eu-west-1", "eu-west-2", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
#      ]
#    },
    "cognito-identity" : {
      "rules" : [
        "CreateIdentityPool", "DeleteIdentities", "DeleteIdentityPool", "MergeDeveloperIdentities",
        "SetIdentityPoolRoles", "SetPrincipalTagAttributeMap", "UnlinkDeveloperIdentity", "UnlinkIdentity",
        "UpdateIdentityPool"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ca-central-1",
        "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1", "us-east-1",
        "us-east-2", "us-west-1", "us-west-2"
      ]
    },
#    "connect" : {
#      "rules" : [
#        "AssociateApprovedOrigin", "AssociateBot", "AssociateInstanceStorageConfig", "AssociateLambdaFunction",
#        "AssociateLexBot", "AssociateQueueQuickConnects", "AssociateRoutingProfileQueues", "AssociateSecurityKey",
#        "CreateAgentStatus", "CreateContactFlow", "CreateContactFlowModule", "CreateHoursOfOperation", "CreateInstance",
#        "CreateIntegrationAssociation", "CreateQueue", "CreateQuickConnect", "CreateRoutingProfile",
#        "CreateSecurityProfile", "CreateUseCase", "CreateUser", "CreateUserHierarchyGroup", "DeleteContactFlow",
#        "DeleteContactFlowModule", "DeleteHoursOfOperation", "DeleteInstance", "DeleteIntegrationAssociation",
#        "DeleteQuickConnect", "DeleteSecurityProfile", "DeleteUseCase", "DeleteUser", "DeleteUserHierarchyGroup",
#        "DisassociateApprovedOrigin", "DisassociateBot", "DisassociateInstanceStorageConfig",
#        "DisassociateLambdaFunction", "DisassociateLexBot", "DisassociateQueueQuickConnects",
#        "DisassociateRoutingProfileQueues", "DisassociateSecurityKey", "SuspendContactRecording", "UpdateAgentStatus",
#        "UpdateContact", "UpdateContactAttributes", "UpdateContactFlowContent", "UpdateContactFlowMetadata",
#        "UpdateContactFlowModuleContent", "UpdateContactFlowModuleMetadata", "UpdateContactFlowName",
#        "UpdateContactSchedule", "UpdateHoursOfOperation", "UpdateInstanceAttribute", "UpdateInstanceStorageConfig",
#        "UpdateQueueHoursOfOperation", "UpdateQueueMaxContacts", "UpdateQueueName", "UpdateQueueOutboundCallerConfig",
#        "UpdateQueueStatus", "UpdateQuickConnectConfig", "UpdateQuickConnectName", "UpdateRoutingProfileConcurrency",
#        "UpdateRoutingProfileDefaultOutboundQueue", "UpdateRoutingProfileName", "UpdateRoutingProfileQueues",
#        "UpdateSecurityProfile", "UpdateUserHierarchy", "UpdateUserHierarchyGroupName", "UpdateUserHierarchyStructure",
#        "UpdateUserIdentityInfo", "UpdateUserPhoneConfig", "UpdateUserRoutingProfile", "UpdateUserSecurityProfiles"
#      ],
#      "regions" : [
#        "ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ca-central-1", "eu-central-1",
#        "eu-west-2", "us-east-1", "us-west-2"
#      ]
#    },
#    "databrew" : {
#      "rules" : [
#        "CreateDataset", "CreateProfileJob", "CreateProject", "CreateRecipe", "CreateRecipeJob", "CreateRuleset",
#        "CreateSchedule", "DeleteDataset", "DeleteJob", "DeleteProject", "DeleteRecipeVersion", "DeleteRuleset",
#        "DeleteSchedule", "UpdateDataset", "UpdateProfileJob", "UpdateProject", "UpdateRecipe", "UpdateRecipeJob",
#        "UpdateRuleset", "UpdateSchedule"
#      ],
#      "regions" : [
#        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
#        "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "sa-east-1",
#        "us-east-1", "us-east-2", "us-west-1", "us-west-2"
#      ]
#    },
#    "datapipeline" : {
#      "rules" : [
#        "ActivatePipeline", "AddTags", "CreatePipeline", "DeactivatePipeline", "DeletePipeline",
#        "PutPipelineDefinition", "RemoveTags", "SetStatus", "SetTaskStatus"
#      ],
#      "regions" : ["ap-northeast-1", "ap-southeast-2", "eu-west-1", "us-east-1", "us-west-2"]
#    },
#    "devops-guru" : {
#      "rules" : [
#        "AddNotificationChannel", "PutFeedback", "RemoveNotificationChannel", "UpdateResourceCollection",
#        "UpdateServiceIntegration"
#      ],
#      "regions" : [
#        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
#        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
#        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
#      ]
#    },
#    "dlm" : {
#      "rules" : ["CreateLifecyclePolicy", "DeleteLifecyclePolicy", "UpdateLifecyclePolicy"],
#      "regions" : [
#        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
#        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
#        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
#      ]
#    },
    "docdb" : {
      "rules" : [
        "AddSourceIdentifierToSubscription", "AddTagsToResource", "ApplyPendingMaintenanceAction", "CreateDBCluster",
        "CreateDBClusterParameterGroup", "CreateDBClusterSnapshot", "CreateDBInstance", "CreateDBSubnetGroup",
        "CreateEventSubscription", "CreateGlobalCluster", "DeleteDBCluster", "DeleteDBClusterParameterGroup",
        "DeleteDBClusterSnapshot", "DeleteDBInstance", "DeleteDBSubnetGroup", "DeleteEventSubscription",
        "DeleteGlobalCluster", "FailoverDBCluster", "ModifyDBCluster", "ModifyDBClusterParameterGroup",
        "ModifyDBClusterSnapshotAttribute", "ModifyDBInstance", "ModifyDBSubnetGroup", "ModifyEventSubscription",
        "ModifyGlobalCluster", "RemoveFromGlobalCluster", "RemoveSourceIdentifierFromSubscription",
        "RemoveTagsFromResource", "ResetDBClusterParameterGroup"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ca-central-1",
        "eu-central-1", "eu-west-1", "eu-west-2", "eu-west-3", "sa-east-1", "us-east-1", "us-east-2", "us-west-2"
      ]
    },
#    "drs" : {
#      "rules" : [
#        "CreateReplicationConfigurationTemplate", "DeleteJob", "DeleteRecoveryInstance",
#        "DeleteReplicationConfigurationTemplate", "DeleteSourceServer", "DisconnectRecoveryInstance",
#        "DisconnectSourceServer", "InitializeService", "TerminateRecoveryInstances",
#        "UpdateFailbackReplicationConfiguration", "UpdateLaunchConfiguration", "UpdateReplicationConfiguration",
#        "UpdateReplicationConfigurationTemplate"
#      ],
#      "regions" : [
#        "ap-northeast-1", "ap-southeast-1", "ap-southeast-2", "eu-central-1", "eu-west-1", "eu-west-2", "us-east-1",
#        "us-east-2", "us-west-2"
#      ]
#    },
    "dynamodb" : {
      "rules" : [
        "CreateGlobalTable", "CreateTable", "DeleteTable", "DisableKinesisStreamingDestination",
        "EnableKinesisStreamingDestination", "UpdateContinuousBackups", "UpdateContributorInsights",
        "UpdateGlobalTable", "UpdateGlobalTableSettings", "UpdateTable", "UpdateTableReplicaAutoScaling",
        "UpdateTimeToLive"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "ec2" : {
      "rules" : [
        "ApplySecurityGroupsToClientVpnTargetNetwork", "AssociateAddress", "AssociateClientVpnTargetNetwork",
        "AssociateDhcpOptions", "AssociateEnclaveCertificateIamRole", "AssociateIamInstanceProfile",
        "AssociateInstanceEventWindow", "AssociateRouteTable", "AssociateSubnetCidrBlock",
        "AssociateTransitGatewayMulticastDomain", "AssociateTransitGatewayRouteTable", "AssociateTrunkInterface",
        "AssociateVpcCidrBlock", "AttachClassicLinkVpc", "AttachInternetGateway", "AttachVolume", "AttachVpnGateway",
        "BundleInstance", "CreateCapacityReservation", "CreateCapacityReservationFleet", "CreateCarrierGateway",
        "CreateClientVpnEndpoint", "CreateClientVpnRoute", "CreateCustomerGateway", "CreateDefaultSubnet",
        "CreateDefaultVpc", "CreateDhcpOptions", "CreateEgressOnlyInternetGateway", "CreateFleet", "CreateFlowLogs",
        "CreateFpgaImage", "CreateImage", "CreateInstanceEventWindow", "CreateInstanceExportTask",
        "CreateInternetGateway", "CreateIpam", "CreateIpamPool", "CreateIpamScope", "CreateKeyPair",
        "CreateLaunchTemplate", "CreateLaunchTemplateVersion", "CreateLocalGatewayRoute",
        "CreateLocalGatewayRouteTableVpcAssociation", "CreateManagedPrefixList", "CreateNatGateway",
        "CreatePlacementGroup", "CreatePublicIpv4Pool", "CreateReplaceRootVolumeTask", "CreateReservedInstancesListing",
        "CreateRestoreImageTask", "CreateRoute", "CreateRouteTable", "CreateSecurityGroup", "CreateSnapshot",
        "CreateSnapshots", "CreateSpotDatafeedSubscription", "CreateStoreImageTask", "CreateSubnet",
        "CreateSubnetCidrReservation", "CreateTags", "CreateTrafficMirrorFilter", "CreateTrafficMirrorFilterRule",
        "CreateTrafficMirrorSession", "CreateTrafficMirrorTarget", "CreateTransitGateway",
        "CreateTransitGatewayConnect", "CreateTransitGatewayConnectPeer", "CreateTransitGatewayMulticastDomain",
        "CreateTransitGatewayPeeringAttachment", "CreateTransitGatewayPrefixListReference", "CreateTransitGatewayRoute",
        "CreateTransitGatewayRouteTable", "CreateTransitGatewayVpcAttachment", "CreateVolume", "CreateVpc",
        "CreateVpcEndpoint", "CreateVpcEndpointConnectionNotification", "CreateVpcEndpointServiceConfiguration",
        "CreateVpcPeeringConnection", "CreateVpnConnection", "CreateVpnConnectionRoute", "CreateVpnGateway",
        "DeleteCarrierGateway", "DeleteClientVpnEndpoint", "DeleteClientVpnRoute", "DeleteCustomerGateway",
        "DeleteDhcpOptions", "DeleteEgressOnlyInternetGateway", "DeleteFleets", "DeleteFlowLogs", "DeleteFpgaImage",
        "DeleteInstanceEventWindow", "DeleteInternetGateway", "DeleteIpam", "DeleteIpamPool", "DeleteIpamScope",
        "DeleteKeyPair", "DeleteLaunchTemplate", "DeleteLaunchTemplateVersions", "DeleteLocalGatewayRoute",
        "DeleteLocalGatewayRouteTableVpcAssociation", "DeleteManagedPrefixList", "DeleteNatGateway"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "ec2" : {
      "rules" : [
        "DeletePlacementGroup", "DeletePublicIpv4Pool", "DeleteQueuedReservedInstances", "DeleteRoute",
        "DeleteRouteTable", "DeleteSecurityGroup", "DeleteSnapshot", "DeleteSpotDatafeedSubscription", "DeleteSubnet",
        "DeleteSubnetCidrReservation", "DeleteTags", "DeleteTrafficMirrorFilter", "DeleteTrafficMirrorFilterRule",
        "DeleteTrafficMirrorSession", "DeleteTrafficMirrorTarget", "DeleteTransitGateway",
        "DeleteTransitGatewayConnect", "DeleteTransitGatewayConnectPeer", "DeleteTransitGatewayMulticastDomain",
        "DeleteTransitGatewayPeeringAttachment", "DeleteTransitGatewayPrefixListReference", "DeleteTransitGatewayRoute",
        "DeleteTransitGatewayRouteTable", "DeleteTransitGatewayVpcAttachment", "DeleteVolume", "DeleteVpc",
        "DeleteVpcEndpointConnectionNotifications", "DeleteVpcEndpointServiceConfigurations", "DeleteVpcEndpoints",
        "DeleteVpcPeeringConnection", "DeleteVpnConnection", "DeleteVpnConnectionRoute", "DeleteVpnGateway",
        "DeprovisionByoipCidr", "DeprovisionIpamPoolCidr", "DeprovisionPublicIpv4PoolCidr", "DeregisterImage",
        "DeregisterInstanceEventNotificationAttributes", "DeregisterTransitGatewayMulticastGroupMembers",
        "DeregisterTransitGatewayMulticastGroupSources", "DetachClassicLinkVpc", "DetachInternetGateway",
        "DetachNetworkInterface", "DetachVolume", "DetachVpnGateway", "DisableEbsEncryptionByDefault",
        "DisableFastSnapshotRestores", "DisableImageDeprecation", "DisableIpamOrganizationAdminAccount",
        "DisableSerialConsoleAccess", "DisableTransitGatewayRouteTablePropagation", "DisableVgwRoutePropagation",
        "DisableVpcClassicLink", "DisableVpcClassicLinkDnsSupport", "DisassociateAddress",
        "DisassociateClientVpnTargetNetwork", "DisassociateEnclaveCertificateIamRole", "DisassociateIamInstanceProfile",
        "DisassociateInstanceEventWindow", "DisassociateRouteTable", "DisassociateSubnetCidrBlock",
        "DisassociateTransitGatewayMulticastDomain", "DisassociateTransitGatewayRouteTable",
        "DisassociateTrunkInterface", "DisassociateVpcCidrBlock", "EnableEbsEncryptionByDefault",
        "EnableFastSnapshotRestores", "EnableImageDeprecation", "EnableIpamOrganizationAdminAccount",
        "EnableSerialConsoleAccess", "EnableTransitGatewayRouteTablePropagation", "EnableVgwRoutePropagation", "EnableVolumeIO", "EnableVpcClassicLink", "EnableVpcClassicLinkDnsSupport",
        "ImportClientVpnClientCertificateRevocationList", "ImportImage", "ImportInstance", "ImportKeyPair",
        "ImportSnapshot", "ImportVolume", "ModifyAddressAttribute", "ModifyAvailabilityZoneGroup",
        "ModifyCapacityReservation", "ModifyCapacityReservationFleet", "ModifyClientVpnEndpoint",
        "ModifyDefaultCreditSpecification", "ModifyEbsDefaultKmsKeyId", "ModifyFleet", "ModifyFpgaImageAttribute",
        "ModifyHosts", "ModifyIdFormat", "ModifyIdentityIdFormat", "ModifyImageAttribute", "ModifyInstanceAttribute",
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
  "ec2" : {
      "rules" : [
        "ModifyInstanceCapacityReservationAttributes", "ModifyInstanceCreditSpecification",
        "ModifyInstanceEventStartTime", "ModifyInstanceEventWindow", "ModifyInstanceMetadataOptions",
        "ModifyInstancePlacement", "ModifyIpam", "ModifyIpamPool", "ModifyIpamResourceCidr", "ModifyIpamScope",
        "ModifyLaunchTemplate", "ModifyManagedPrefixList", "ModifyNetworkInterfaceAttribute",
        "ModifyPrivateDnsNameOptions", "ModifyReservedInstances", "ModifySecurityGroupRules", "ModifySnapshotAttribute",
        "ModifySnapshotTier", "ModifySpotFleetRequest", "ModifySubnetAttribute",
        "ModifyTrafficMirrorFilterNetworkServices", "ModifyTrafficMirrorFilterRule", "ModifyTrafficMirrorSession",
        "ModifyTransitGateway", "ModifyTransitGatewayPrefixListReference", "ModifyTransitGatewayVpcAttachment",
        "ModifyVolume", "ModifyVolumeAttribute", "ModifyVpcAttribute", "ModifyVpcEndpoint",
        "ModifyVpcEndpointConnectionNotification", "ModifyVpcEndpointServiceConfiguration",
        "ModifyVpcEndpointServicePermissions", "ModifyVpcPeeringConnectionOptions", "ModifyVpcTenancy",
        "ModifyVpnConnection", "ModifyVpnConnectionOptions", "ModifyVpnTunnelCertificate", "ModifyVpnTunnelOptions",
        "MoveAddressToVpc", "MoveByoipCidrToIpam", "ReplaceIamInstanceProfileAssociation",
        "ReplaceNetworkAclAssociation", "ReplaceNetworkAclEntry", "ReplaceRoute", "ReplaceRouteTableAssociation",
        "ReplaceTransitGatewayRoute", "ResetAddressAttribute", "ResetEbsDefaultKmsKeyId", "ResetFpgaImageAttribute",
        "ResetImageAttribute", "ResetInstanceAttribute", "ResetNetworkInterfaceAttribute", "ResetSnapshotAttribute",
        "RevokeClientVpnIngress", "RevokeSecurityGroupEgress", "RevokeSecurityGroupIngress", "RunInstances",
        "RunScheduledInstances", "TerminateInstances", "UnassignIpv6Addresses", "UnassignPrivateIpAddresses",
        "UnmonitorInstances", "UpdateSecurityGroupRuleDescriptionsEgress", "UpdateSecurityGroupRuleDescriptionsIngress"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "ecr" : {
      "rules" : [
        "CreatePullThroughCacheRule", "CreateRepository", "DeleteLifecyclePolicy", "DeletePullThroughCacheRule",
        "DeleteRegistryPolicy", "DeleteRepository", "DeleteRepositoryPolicy", "InitiateLayerUpload",
        "PutLifecyclePolicy", "PutRegistryPolicy", "PutRegistryScanningConfiguration", "PutReplicationConfiguration",
        "SetRepositoryPolicy"
      ],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "ecr-public" : {
      "rules" : [
        "CreateRepository", "DeleteRepository", "DeleteRepositoryPolicy", "InitiateLayerUpload",
        "PutRegistryCatalogData", "PutRepositoryCatalogData", "SetRepositoryPolicy"
      ],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "ecs" : {
      "rules" : [
        "CreateCapacityProvider", "CreateCluster", "CreateService", "CreateTaskSet", "DeleteAccountSetting",
        "DeleteAttributes", "DeleteCapacityProvider", "DeleteCluster", "DeleteService", "DeleteTaskSet",
        "DeregisterContainerInstance", "DeregisterTaskDefinition", "PutAccountSetting", "PutAccountSettingDefault",
        "PutAttributes", "PutClusterCapacityProviders", "RunTask", "UpdateCapacityProvider", "UpdateCluster",
        "UpdateClusterSettings", "UpdateContainerAgent", "UpdateContainerInstancesState", "UpdateService",
        "UpdateServicePrimaryTaskSet", "UpdateTaskSet"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "eks" : {
      "rules" : [
        "AssociateEncryptionConfig", "AssociateIdentityProviderConfig", "CreateAddon", "CreateCluster",
        "CreateFargateProfile", "CreateNodegroup", "DeleteAddon", "DeleteCluster", "DeleteFargateProfile",
        "DeleteNodegroup", "DeregisterCluster", "DisassociateIdentityProviderConfig", "UpdateAddon",
        "UpdateClusterConfig", "UpdateClusterVersion", "UpdateNodegroupConfig", "UpdateNodegroupVersion"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "elasticache" : {
      "rules" : [
        "AddTagsToResource", "CreateCacheCluster", "CreateCacheParameterGroup", "CreateCacheSecurityGroup",
        "CreateCacheSubnetGroup", "CreateGlobalReplicationGroup", "CreateReplicationGroup", "CreateSnapshot",
        "CreateUser", "CreateUserGroup", "DecreaseNodeGroupsInGlobalReplicationGroup", "DecreaseReplicaCount",
        "DeleteCacheCluster", "DeleteCacheParameterGroup", "DeleteCacheSecurityGroup", "DeleteCacheSubnetGroup",
        "DeleteGlobalReplicationGroup", "DeleteReplicationGroup", "DeleteSnapshot", "DeleteUser", "DeleteUserGroup",
        "DisassociateGlobalReplicationGroup", "FailoverGlobalReplicationGroup",
        "IncreaseNodeGroupsInGlobalReplicationGroup", "IncreaseReplicaCount", "ModifyCacheCluster",
        "ModifyCacheParameterGroup", "ModifyCacheSubnetGroup", "ModifyGlobalReplicationGroup", "ModifyReplicationGroup",
        "ModifyReplicationGroupShardConfiguration", "ModifyUser", "ModifyUserGroup",
        "RebalanceSlotsInGlobalReplicationGroup", "RemoveTagsFromResource", "ResetCacheParameterGroup",
        "RevokeCacheSecurityGroupIngress"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "elasticbeanstalk" : {
      "rules" : [
        "ApplyEnvironmentManagedAction", "AssociateEnvironmentOperationsRole", "ComposeEnvironments",
        "CreateApplication", "CreateApplicationVersion", "CreateConfigurationTemplate", "CreateEnvironment",
        "CreatePlatformVersion", "CreateStorageLocation", "DeleteApplication", "DeleteApplicationVersion",
        "DeleteConfigurationTemplate", "DeleteEnvironmentConfiguration", "DeletePlatformVersion",
        "DisassociateEnvironmentOperationsRole", "RebuildEnvironment", "RestartAppServer", "SwapEnvironmentCNAMEs",
        "TerminateEnvironment", "UpdateApplication", "UpdateApplicationResourceLifecycle", "UpdateApplicationVersion",
        "UpdateConfigurationTemplate", "UpdateEnvironment", "UpdateTagsForResource"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "elasticfilesystem" : {
      "rules" : [
        "CreateAccessPoint", "CreateFileSystem", "CreateMountTarget", "CreateTags", "DeleteAccessPoint",
        "DeleteFileSystem", "DeleteFileSystemPolicy", "DeleteMountTarget", "DeleteTags",
        "ModifyMountTargetSecurityGroups", "PutAccountPreferences", "PutBackupPolicy", "PutFileSystemPolicy",
        "PutLifecycleConfiguration", "UpdateFileSystem"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
#    "elasticloadbalancing" : {
#      "rules" : [
#        "AddTags", "ApplySecurityGroupsToLoadBalancer", "AttachLoadBalancerToSubnets", "ConfigureHealthCheck",
#        "CreateAppCookieStickinessPolicy", "CreateLBCookieStickinessPolicy", "CreateLoadBalancer",
#        "CreateLoadBalancerListeners", "CreateLoadBalancerPolicy", "DeleteLoadBalancer", "DeleteLoadBalancerListeners",
#        "DeleteLoadBalancerPolicy", "DeregisterInstancesFromLoadBalancer", "DetachLoadBalancerFromSubnets",
#        "DisableAvailabilityZonesForLoadBalancer", "EnableAvailabilityZonesForLoadBalancer",
#        "ModifyLoadBalancerAttributes", "RemoveTags", "SetLoadBalancerListenerSSLCertificate",
#        "SetLoadBalancerPoliciesForBackendServer", "SetLoadBalancerPoliciesOfListener"
#      ],
#      "regions" : [
#        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
#        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
#        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
#      ]
#    },
#    "elasticmapreduce" : {
#      "rules" : [
#        "AddInstanceFleet", "AddInstanceGroups", "AddJobFlowSteps", "AddTags", "CreateSecurityConfiguration",
#        "CreateStudio", "CreateStudioSessionMapping", "DeleteSecurityConfiguration", "DeleteStudio",
#        "DeleteStudioSessionMapping", "ModifyCluster", "ModifyInstanceFleet", "ModifyInstanceGroups",
#        "PutAutoScalingPolicy", "PutAutoTerminationPolicy", "PutBlockPublicAccessConfiguration",
#        "PutManagedScalingPolicy", "RemoveAutoScalingPolicy", "RemoveAutoTerminationPolicy",
#        "RemoveManagedScalingPolicy", "RemoveTags", "RunJobFlow", "SetTerminationProtection", "SetVisibleToAllUsers",
#        "TerminateJobFlows", "UpdateStudio", "UpdateStudioSessionMapping"
#      ],
#      "regions" : [
#        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
#        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
#        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
#      ]
#    },
#    "elastictranscoder" : {
#      "rules" : [
#        "CreateJob", "CreatePipeline", "CreatePreset", "DeletePipeline", "DeletePreset", "ReadPipeline", "ReadPreset",
#        "UpdatePipeline", "UpdatePipelineNotifications", "UpdatePipelineStatus"
#      ],
#      "regions" : [
#        "ap-northeast-1", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "eu-west-1", "us-east-1", "us-west-1",
#        "us-west-2"
#      ]
#    },
    "emr-containers" : {
      "rules" : ["CreateManagedEndpoint", "CreateVirtualCluster", "DeleteManagedEndpoint", "DeleteVirtualCluster"],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ca-central-1",
        "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "sa-east-1", "us-east-1", "us-east-2",
        "us-west-1", "us-west-2"
      ]
    },
    "es" : {
      "rules" : [
        "AddTags", "AssociatePackage", "CreateElasticsearchDomain", "CreateOutboundCrossClusterSearchConnection",
        "CreatePackage", "DeleteElasticsearchDomain", "DeleteElasticsearchServiceRole",
        "DeleteInboundCrossClusterSearchConnection", "DeleteOutboundCrossClusterSearchConnection", "DeletePackage",
        "DissociatePackage", "RemoveTags", "UpdateElasticsearchDomainConfig", "UpdatePackage",
        "UpgradeElasticsearchDomain"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
#    "events" : {
#      "rules" : [
#        "ActivateEventSource", "CreateApiDestination", "CreateArchive", "CreateConnection", "CreateEventBus",
#        "CreatePartnerEventSource", "DeactivateEventSource", "DeauthorizeConnection", "DeleteApiDestination",
#        "DeleteArchive", "DeleteEventBus", "DeletePartnerEventSource", "DeleteRule", "DisableRule", "EnableRule",
#        "PutEvents", "PutPartnerEvents", "PutPermission", "PutRule", "PutTargets", "RemovePermission", "RemoveTargets",
#        "UpdateApiDestination", "UpdateArchive", "UpdateConnection"
#      ],
#      "regions" : [
#        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
#        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
#        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
#      ]
#    },
    "firehose" : {
      "rules" : ["CreateDeliveryStream", "DeleteDeliveryStream", "UpdateDestination"],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "gamelift" : {
      "rules" : [
        "ClaimGameServer", "CreateAlias", "CreateBuild", "CreateFleet", "CreateFleetLocations", "CreateGameServerGroup",
        "CreateGameSession", "CreateGameSessionQueue", "CreateMatchmakingConfiguration", "CreateMatchmakingRuleSet",
        "CreatePlayerSession", "CreatePlayerSessions", "CreateScript", "CreateVpcPeeringAuthorization",
        "CreateVpcPeeringConnection", "DeleteAlias", "DeleteBuild", "DeleteFleet", "DeleteFleetLocations",
        "DeleteGameServerGroup", "DeleteGameSessionQueue", "DeleteMatchmakingConfiguration", "DeleteMatchmakingRuleSet",
        "DeleteScalingPolicy", "DeleteScript", "DeleteVpcPeeringAuthorization", "DeleteVpcPeeringConnection",
        "DeregisterGameServer", "PutScalingPolicy", "ResolveAlias", "SuspendGameServerGroup", "UpdateAlias",
        "UpdateBuild", "UpdateFleetAttributes", "UpdateFleetCapacity", "UpdateFleetPortSettings", "UpdateGameServer",
        "UpdateGameServerGroup", "UpdateGameSession", "UpdateGameSessionQueue", "UpdateMatchmakingConfiguration",
        "UpdateRuntimeConfiguration", "UpdateScript"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
#    "glacier" : {
#      "rules" : [
#        "AddTagsToVault", "CreateVault", "DeleteArchive", "DeleteVault", "DeleteVaultAccessPolicy",
#        "DeleteVaultNotifications", "InitiateJob", "InitiateMultipartUpload", "InitiateVaultLock",
#        "RemoveTagsFromVault", "SetDataRetrievalPolicy", "SetVaultAccessPolicy", "SetVaultNotifications"
#      ],
#      "regions" : [
#        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
#        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
#        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
#      ]
#    },
    "globalaccelerator" : {
      "rules" : [
        "AddCustomRoutingEndpoints", "AllowCustomRoutingTraffic", "CreateAccelerator", "CreateCustomRoutingAccelerator",
        "CreateCustomRoutingEndpointGroup", "CreateCustomRoutingListener", "CreateEndpointGroup", "CreateListener",
        "DeleteAccelerator", "DeleteCustomRoutingAccelerator", "DeleteCustomRoutingEndpointGroup",
        "DeleteCustomRoutingListener", "DeleteEndpointGroup", "DeleteListener", "DenyCustomRoutingTraffic",
        "DeprovisionByoipCidr", "RemoveCustomRoutingEndpoints", "UpdateAccelerator", "UpdateAcceleratorAttributes",
        "UpdateCustomRoutingAccelerator", "UpdateCustomRoutingAcceleratorAttributes", "UpdateCustomRoutingListener",
        "UpdateEndpointGroup", "UpdateListener"
      ],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "glue" : {
      "rules" : [
        "CreateBlueprint", "CreateClassifier", "CreateConnection", "CreateCrawler", "CreateDatabase",
        "CreateDevEndpoint", "CreateJob", "CreateMLTransform", "CreatePartition", "CreatePartitionIndex",
        "CreateRegistry", "CreateSchema", "CreateScript", "CreateSecurityConfiguration", "CreateTable", "CreateTrigger",
        "CreateUserDefinedFunction", "CreateWorkflow", "DeleteBlueprint", "DeleteClassifier",
        "DeleteColumnStatisticsForPartition", "DeleteColumnStatisticsForTable", "DeleteCrawler", "DeleteDatabase",
        "DeleteDevEndpoint", "DeleteJob", "DeleteMLTransform", "DeleteRegistry", "DeleteResourcePolicy", "DeleteSchema",
        "DeleteSchemaVersions", "DeleteSecurityConfiguration", "DeleteTable", "DeleteTableVersion", "DeleteTrigger",
        "DeleteUserDefinedFunction", "ImportCatalogToGlue", "PutDataCatalogEncryptionSettings", "PutResourcePolicy",
        "PutSchemaVersionMetadata", "PutWorkflowRunProperties", "RemoveSchemaVersionMetadata", "ResetJobBookmark",
        "UpdateBlueprint", "UpdateClassifier", "UpdateColumnStatisticsForPartition", "UpdateColumnStatisticsForTable",
        "UpdateConnection", "UpdateCrawler", "UpdateCrawlerSchedule", "UpdateDatabase", "UpdateDevEndpoint",
        "UpdateJob", "UpdateMLTransform", "UpdatePartition", "UpdateRegistry", "UpdateSchema", "UpdateTable",
        "UpdateTrigger", "UpdateUserDefinedFunction"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "greengrass" : {
      "rules" : [
        "AssociateRoleToGroup", "AssociateServiceRoleToAccount", "CreateConnectorDefinition",
        "CreateConnectorDefinitionVersion", "CreateCoreDefinition", "CreateCoreDefinitionVersion", "CreateDeployment",
        "CreateDeviceDefinition", "CreateDeviceDefinitionVersion", "CreateFunctionDefinition",
        "CreateFunctionDefinitionVersion", "CreateGroup", "CreateGroupCertificateAuthority", "CreateGroupVersion",
        "CreateLoggerDefinition", "CreateLoggerDefinitionVersion", "CreateResourceDefinition",
        "CreateResourceDefinitionVersion", "CreateSoftwareUpdateJob", "CreateSubscriptionDefinition",
        "CreateSubscriptionDefinitionVersion", "DeleteConnectorDefinition", "DeleteCoreDefinition",
        "DeleteDeviceDefinition", "DeleteFunctionDefinition", "DeleteGroup", "DeleteLoggerDefinition",
        "DeleteResourceDefinition", "DeleteSubscriptionDefinition", "DisassociateRoleFromGroup",
        "DisassociateServiceRoleFromAccount", "ResetDeployments", "UpdateConnectivityInfo", "UpdateConnectorDefinition",
        "UpdateCoreDefinition", "UpdateDeviceDefinition", "UpdateFunctionDefinition", "UpdateGroup",
        "UpdateGroupCertificateConfiguration", "UpdateLoggerDefinition", "UpdateResourceDefinition",
        "UpdateSubscriptionDefinition", "UpdateThingRuntimeConfiguration"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "eu-central-1",
        "eu-west-1", "eu-west-2", "us-east-1", "us-east-2", "us-west-2"
      ]
    },
    "groundstation" : {
      "rules" : [
        "CreateConfig", "CreateDataflowEndpointGroup", "CreateMissionProfile", "DeleteConfig",
        "DeleteDataflowEndpointGroup", "DeleteMissionProfile", "ReserveContact", "UpdateConfig", "UpdateMissionProfile"
      ],
      "regions" : [
        "af-south-1", "ap-northeast-2", "ap-southeast-2", "eu-central-1", "eu-north-1", "eu-west-1", "me-south-1",
        "us-east-1", "us-east-2", "us-west-2"
      ]
    },
    "guardduty" : {
      "rules" : [
        "CreateDetector", "CreateFilter", "CreateIPSet", "CreateMembers", "CreatePublishingDestination",
        "CreateSampleFindings", "CreateThreatIntelSet", "DeclineInvitations", "DeleteDetector", "DeleteFilter",
        "DeleteIPSet", "DeleteInvitations", "DeleteMembers", "DeletePublishingDestination", "DeleteThreatIntelSet",
        "DisableOrganizationAdminAccount", "DisassociateFromMasterAccount", "DisassociateMembers",
        "EnableOrganizationAdminAccount", "UnarchiveFindings", "UpdateDetector", "UpdateFilter",
        "UpdateFindingsFeedback", "UpdateIPSet", "UpdateMemberDetectors", "UpdateOrganizationConfiguration",
        "UpdatePublishingDestination", "UpdateThreatIntelSet"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "health" : {
      "rules" : ["DisableHealthServiceAccessForOrganization", "EnableHealthServiceAccessForOrganization"],
      "regions" : ["us-east-2"]
    },
    "iam" : {
      "rules" : [
        "AddRoleToInstanceProfile", "AddUserToGroup", "AttachGroupPolicy", "AttachRolePolicy", "AttachUserPolicy",
        "CreateAccessKey", "CreateAccountAlias", "CreateGroup", "CreateInstanceProfile", "CreateOpenIDConnectProvider",
        "CreatePolicy", "CreatePolicyVersion", "CreateRole", "CreateSAMLProvider", "CreateServiceLinkedRole",
        "CreateServiceSpecificCredential", "CreateUser", "CreateVirtualMFADevice", "DeactivateMFADevice",
        "DeleteAccessKey", "DeleteAccountAlias", "DeleteAccountPasswordPolicy", "DeleteGroup", "DeleteGroupPolicy",
        "DeleteInstanceProfile", "DeleteLoginProfile", "DeleteOpenIDConnectProvider", "DeletePolicy",
        "DeletePolicyVersion", "DeleteRole", "DeleteRolePermissionsBoundary", "DeleteRolePolicy", "DeleteSAMLProvider",
        "DeleteSSHPublicKey", "DeleteServerCertificate", "DeleteServiceLinkedRole", "DeleteServiceSpecificCredential",
        "DeleteSigningCertificate", "DeleteUser", "DeleteUserPermissionsBoundary", "DeleteUserPolicy",
        "DeleteVirtualMFADevice", "DetachGroupPolicy", "DetachRolePolicy", "DetachUserPolicy", "EnableMFADevice",
        "PutGroupPolicy", "PutRolePermissionsBoundary", "PutRolePolicy", "PutUserPermissionsBoundary", "PutUserPolicy",
        "RemoveClientIDFromOpenIDConnectProvider", "RemoveRoleFromInstanceProfile", "RemoveUserFromGroup",
        "ResetServiceSpecificCredential", "ResyncMFADevice", "SetDefaultPolicyVersion",
        "SetSecurityTokenServicePreferences", "UpdateAccessKey", "UpdateAccountPasswordPolicy",
        "UpdateAssumeRolePolicy", "UpdateGroup", "UpdateOpenIDConnectProviderThumbprint", "UpdateRole",
        "UpdateRoleDescription", "UpdateSAMLProvider", "UpdateSSHPublicKey", "UpdateServerCertificate",
        "UpdateServiceSpecificCredential", "UpdateSigningCertificate", "UpdateUser"
      ],
      "regions" : ["aws-global"]
    },
    "inspector" : {
      "rules" : [
        "CreateAssessmentTarget", "CreateAssessmentTemplate", "CreateExclusionsPreview", "CreateResourceGroup",
        "DeleteAssessmentRun", "DeleteAssessmentTarget", "DeleteAssessmentTemplate", "RemoveAttributesFromFindings",
        "SetTagsForResource", "SubscribeToEvent", "UnsubscribeFromEvent", "UpdateAssessmentTarget"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-2", "eu-central-1", "eu-north-1", "eu-west-1",
        "eu-west-2", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "iot" : {
      "rules" : [
        "AddThingToBillingGroup", "AddThingToThingGroup", "AssociateTargetsWithJob", "AttachPolicy",
        "AttachPrincipalPolicy", "AttachSecurityProfile", "AttachThingPrincipal", "ClearDefaultAuthorizer",
        "CreateAuditSuppression", "CreateAuthorizer", "CreateBillingGroup", "CreateCertificateFromCsr",
        "CreateCustomMetric", "CreateDimension", "CreateDomainConfiguration", "CreateDynamicThingGroup",
        "CreateFleetMetric", "CreateJob", "CreateJobTemplate", "CreateKeysAndCertificate", "CreateMitigationAction",
        "CreateOTAUpdate", "CreatePolicy", "CreatePolicyVersion", "CreateProvisioningClaim",
        "CreateProvisioningTemplate", "CreateProvisioningTemplateVersion", "CreateRoleAlias", "CreateScheduledAudit",
        "CreateSecurityProfile", "CreateStream", "CreateThing", "CreateThingGroup", "CreateThingType",
        "CreateTopicRule", "CreateTopicRuleDestination", "DeleteAccountAuditConfiguration", "DeleteAuditSuppression",
        "DeleteAuthorizer", "DeleteBillingGroup", "DeleteCACertificate", "DeleteCertificate", "DeleteCustomMetric",
        "DeleteDimension", "DeleteDomainConfiguration", "DeleteDynamicThingGroup", "DeleteFleetMetric", "DeleteJob",
        "DeleteJobExecution", "DeleteJobTemplate", "DeleteMitigationAction", "DeleteOTAUpdate", "DeletePolicy",
        "DeletePolicyVersion", "DeleteProvisioningTemplate", "DeleteProvisioningTemplateVersion",
        "DeleteRegistrationCode", "DeleteRoleAlias", "DeleteScheduledAudit", "DeleteSecurityProfile", "DeleteStream",
      ],
      "regions" : [
        "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1",
        "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
     "iot" : {
      "rules" : [
        "DeleteThing", "DeleteThingGroup", "DeleteThingType", "DeleteTopicRule", "DeleteTopicRuleDestination",
        "DeleteV2LoggingLevel", "DeprecateThingType", "DetachPolicy", "DetachPrincipalPolicy", "DetachSecurityProfile",
        "DetachThingPrincipal", "DisableTopicRule", "EnableTopicRule", "PutVerificationStateOnViolation",
        "RemoveThingFromBillingGroup", "RemoveThingFromThingGroup", "ReplaceTopicRule", "SetDefaultAuthorizer",
        "SetDefaultPolicyVersion", "SetLoggingOptions", "SetV2LoggingLevel", "SetV2LoggingOptions",
        "TransferCertificate", "UpdateAccountAuditConfiguration", "UpdateAuditSuppression", "UpdateAuthorizer",
        "UpdateBillingGroup", "UpdateCACertificate", "UpdateCertificate", "UpdateCustomMetric", "UpdateDimension",
        "UpdateDomainConfiguration", "UpdateDynamicThingGroup", "UpdateEventConfigurations", "UpdateFleetMetric",
        "UpdateIndexingConfiguration", "UpdateJob", "UpdateMitigationAction", "UpdateProvisioningTemplate",
        "UpdateRoleAlias", "UpdateScheduledAudit", "UpdateSecurityProfile", "UpdateStream", "UpdateThing",
        "UpdateThingGroup", "UpdateThingGroupsForThing", "UpdateTopicRuleDestination"
      ],
      "regions" : [
        "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1",
        "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "iotanalytics" : {
      "rules" : [
        "CreateChannel", "CreateDataset", "CreateDatasetContent", "CreateDatastore", "CreatePipeline", "DeleteChannel",
        "DeleteDataset", "DeleteDatasetContent", "DeleteDatastore", "DeletePipeline", "PutLoggingOptions",
        "RunPipelineActivity", "SampleChannelData", "UpdateChannel", "UpdateDataset", "UpdateDatastore",
        "UpdatePipeline"
      ],
      "regions" : [
        "ap-northeast-1", "ap-south-1", "ap-southeast-2", "eu-central-1", "eu-west-1", "us-east-1", "us-east-2",
        "us-west-2"
      ]
    },
    "ivs" : {
      "rules" : [
        "CreateChannel", "CreateRecordingConfiguration", "CreateStreamKey", "DeleteChannel", "DeletePlaybackKeyPair",
        "DeleteRecordingConfiguration", "DeleteStreamKey", "ImportPlaybackKeyPair", "PutMetadata", "UpdateChannel"
      ],
      "regions" : ["eu-west-1", "us-east-1", "us-west-2"]
    },
    "kinesis" : {
      "rules" : [
        "AddTagsToStream", "CreateStream", "DecreaseStreamRetentionPeriod", "DeleteStream", "DeregisterStreamConsumer",
        "DisableEnhancedMonitoring", "EnableEnhancedMonitoring", "IncreaseStreamRetentionPeriod", "MergeShards",
        "RemoveTagsFromStream", "SplitShard", "SubscribeToShard", "UpdateShardCount", "UpdateStreamMode"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "kms" : {
      "rules" : [
        "ConnectCustomKeyStore", "CreateAlias", "CreateCustomKeyStore", "CreateGrant", "CreateKey", "DeleteAlias",
        "DeleteCustomKeyStore", "DeleteImportedKeyMaterial", "DisableKey", "DisableKeyRotation",
        "DisconnectCustomKeyStore", "EnableKey", "EnableKeyRotation", "ImportKeyMaterial", "PutKeyPolicy",
        "ReplicateKey", "RetireGrant", "RevokeGrant", "UpdateAlias", "UpdateCustomKeyStore", "UpdateKeyDescription",
        "UpdatePrimaryRegion"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "lambda" : {
      "rules" : [
        "AddLayerVersionPermission", "AddPermission", "CreateAlias", "CreateCodeSigningConfig",
        "CreateEventSourceMapping", "CreateFunction", "DeleteAlias", "DeleteCodeSigningConfig",
        "DeleteEventSourceMapping", "DeleteFunction", "DeleteFunctionCodeSigningConfig", "DeleteFunctionConcurrency",
        "DeleteFunctionEventInvokeConfig", "DeleteLayerVersion", "DeleteProvisionedConcurrencyConfig",
        "PutFunctionCodeSigningConfig", "PutFunctionConcurrency", "PutFunctionEventInvokeConfig",
        "PutProvisionedConcurrencyConfig", "RemoveLayerVersionPermission", "RemovePermission", "UpdateAlias",
        "UpdateCodeSigningConfig", "UpdateEventSourceMapping", "UpdateFunctionCode", "UpdateFunctionConfiguration",
        "UpdateFunctionEventInvokeConfig"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ],
      "prefix" : true
    },
    "lightsail" : {
      "rules" : [
        "AttachCertificateToDistribution", "AttachDisk", "AttachInstancesToLoadBalancer",
        "AttachLoadBalancerTlsCertificate", "AttachStaticIp", "CloseInstancePublicPorts", "CreateBucket",
        "CreateBucketAccessKey", "CreateCertificate", "CreateCloudFormationStack", "CreateContactMethod",
        "CreateContainerService", "CreateContainerServiceDeployment", "CreateContainerServiceRegistryLogin",
        "CreateDisk", "CreateDiskFromSnapshot", "CreateDiskSnapshot", "CreateDistribution", "CreateDomain",
        "CreateDomainEntry", "CreateInstanceSnapshot", "CreateInstances", "CreateInstancesFromSnapshot",
        "CreateKeyPair", "CreateLoadBalancer", "CreateLoadBalancerTlsCertificate", "CreateRelationalDatabase",
        "CreateRelationalDatabaseFromSnapshot", "CreateRelationalDatabaseSnapshot", "DeleteAlarm", "DeleteAutoSnapshot",
        "DeleteBucket", "DeleteBucketAccessKey", "DeleteCertificate", "DeleteContactMethod", "DeleteContainerImage",
        "DeleteContainerService", "DeleteDisk", "DeleteDiskSnapshot", "DeleteDistribution", "DeleteDomain",
        "DeleteDomainEntry", "DeleteInstance", "DeleteInstanceSnapshot", "DeleteKeyPair", "DeleteKnownHostKeys",
        "DeleteLoadBalancer", "DeleteLoadBalancerTlsCertificate", "DeleteRelationalDatabase",
        "DeleteRelationalDatabaseSnapshot", "DetachCertificateFromDistribution", "DetachDisk",
        "DetachInstancesFromLoadBalancer", "DetachStaticIp", "DisableAddOn", "EnableAddOn", "ImportKeyPair",
        "IsVpcPeered", "OpenInstancePublicPorts", "PeerVpc", "PutAlarm", "PutInstancePublicPorts",
        "ResetDistributionCache", "SetIpAddressType", "SetResourceAccessForBucket", "UnpeerVpc", "UpdateBucket",
        "UpdateBucketBundle", "UpdateContainerService", "UpdateDistribution", "UpdateDistributionBundle",
        "UpdateDomainEntry", "UpdateLoadBalancerAttribute", "UpdateRelationalDatabase",
        "UpdateRelationalDatabaseParameters"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ca-central-1",
        "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "us-east-1", "us-east-2", "us-west-2"
      ]
    },
    "logs" : {
      "rules" : [
        "AssociateKmsKey", "CreateExportTask", "CreateLogGroup", "CreateLogStream", "DeleteDestination",
        "DeleteLogGroup", "DeleteLogStream", "DeleteMetricFilter", "DeleteQueryDefinition", "DeleteResourcePolicy",
        "DeleteRetentionPolicy", "DeleteSubscriptionFilter", "FilterLogEvents", "PutDestination",
        "PutDestinationPolicy", "PutLogEvents", "PutMetricFilter", "PutResourcePolicy", "PutRetentionPolicy",
        "PutSubscriptionFilter"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "macie" : {
      "rules" : ["AssociateMemberAccount", "DisassociateMemberAccount"],
      "regions" : ["us-east-1", "us-west-2"]
    },
    "mediaconvert" : {
      "rules" : [
        "AssociateCertificate", "CreateJob", "CreateJobTemplate", "CreatePreset", "CreateQueue", "DeleteJobTemplate",
        "DeletePolicy", "DeletePreset", "DeleteQueue", "DisassociateCertificate", "PutPolicy", "UpdateJobTemplate",
        "UpdatePreset", "UpdateQueue"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "ca-central-1",
        "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "sa-east-1", "us-east-1", "us-east-2",
        "us-west-1", "us-west-2"
      ]
    },
    "medialive" : {
      "rules" : [
        "ClaimDevice", "CreateChannel", "CreateInput", "CreateInputSecurityGroup", "CreateMultiplex",
        "CreateMultiplexProgram", "CreatePartnerInput", "CreateTags", "DeleteChannel", "DeleteInput",
        "DeleteInputSecurityGroup", "DeleteMultiplex", "DeleteMultiplexProgram", "DeleteReservation", "DeleteSchedule",
        "DeleteTags", "TransferInputDevice", "UpdateChannel", "UpdateChannelClass", "UpdateInput", "UpdateInputDevice",
        "UpdateInputSecurityGroup", "UpdateMultiplex", "UpdateMultiplexProgram", "UpdateReservation"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "eu-central-1",
        "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "sa-east-1", "us-east-1", "us-east-2", "us-west-2"
      ]
    },
    "mediapackage" : {
      "rules" : [
        "ConfigureLogs", "CreateChannel", "CreateHarvestJob", "CreateOriginEndpoint", "DeleteChannel",
        "DeleteOriginEndpoint", "UpdateChannel", "UpdateOriginEndpoint"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2", "eu-central-1",
        "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "sa-east-1", "us-east-1", "us-east-2", "us-west-1",
        "us-west-2"
      ]
    },
    "mediastore" : {
      "rules" : [
        "CreateContainer", "DeleteContainer", "DeleteContainerPolicy", "DeleteCorsPolicy", "DeleteLifecyclePolicy",
        "DeleteMetricPolicy", "PutContainerPolicy", "PutCorsPolicy", "PutLifecyclePolicy", "PutMetricPolicy"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-southeast-2", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2",
        "us-east-1", "us-west-2"
      ]
    },
    "metering-marketplace" : {
      "rules" : ["MeterUsage", "ResolveCustomer"],
      "regions" : []
    }, "monitoring" : {
      "rules" : [
        "DeleteAlarms", "DeleteAnomalyDetector", "DeleteDashboards", "DeleteInsightRules", "DeleteMetricStream",
        "DisableAlarmActions", "DisableInsightRules", "EnableAlarmActions", "EnableInsightRules", "PutAnomalyDetector",
        "PutCompositeAlarm", "PutDashboard", "PutInsightRule", "PutMetricAlarm", "PutMetricData", "PutMetricStream",
        "SetAlarmState"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "mq" : {
      "rules" : [
        "CreateBroker", "CreateConfiguration", "CreateTags", "CreateUser", "DeleteBroker", "DeleteTags", "DeleteUser",
        "UpdateBroker", "UpdateConfiguration", "UpdateUser"
      ],
      "regions" : [
        "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "networkmanager" : {
      "rules" : [
        "AssociateConnectPeer", "AssociateCustomerGateway", "AssociateLink", "AssociateTransitGatewayConnectPeer",
        "CreateConnectAttachment", "CreateConnectPeer", "CreateConnection", "CreateCoreNetwork", "CreateDevice",
        "CreateGlobalNetwork", "CreateLink", "CreateSite", "CreateSiteToSiteVpnAttachment", "CreateVpcAttachment",
        "DeleteAttachment", "DeleteConnectPeer", "DeleteCoreNetwork", "DeleteCoreNetworkPolicyVersion", "DeleteDevice",
        "DeleteGlobalNetwork", "DeleteLink", "DeleteResourcePolicy", "DeleteSite", "DeregisterTransitGateway",
        "DisassociateConnectPeer", "DisassociateCustomerGateway", "DisassociateLink",
        "DisassociateTransitGatewayConnectPeer", "PutCoreNetworkPolicy", "PutResourcePolicy", "UpdateConnection",
        "UpdateCoreNetwork", "UpdateDevice", "UpdateGlobalNetwork", "UpdateLink", "UpdateNetworkResourceMetadata",
        "UpdateSite", "UpdateVpcAttachment"
      ],
      "regions" : ["aws-global"]
    },
    "opsworks-cm" : {
      "rules" : [
        "AssociateNode", "CreateServer", "DeleteServer", "DisassociateNode", "UpdateServer",
        "UpdateServerEngineAttributes"
      ],
      "regions" : [
        "ap-northeast-1", "ap-southeast-1", "ap-southeast-2", "eu-central-1", "eu-west-1", "us-east-1", "us-east-2",
        "us-west-1", "us-west-2"
      ]
    },
    "organizations" : {
      "rules" : [
        "AttachPolicy", "CreateAccount", "CreateGovCloudAccount", "CreateOrganization", "CreateOrganizationalUnit",
        "CreatePolicy", "DeclineHandshake", "DeleteOrganization", "DeleteOrganizationalUnit", "DeletePolicy",
        "DeregisterDelegatedAdministrator", "DetachPolicy", "DisableAWSServiceAccess", "DisablePolicyType",
        "EnableAWSServiceAccess", "EnableAllFeatures", "EnablePolicyType", "LeaveOrganization", "MoveAccount",
        "RemoveAccountFromOrganization", "UpdateOrganizationalUnit", "UpdatePolicy"
      ],
      "regions" : ["aws-global"]
    },
    "polly" : {
      "rules" : ["DeleteLexicon", "PutLexicon", "SynthesizeSpeech"],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1",
        "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "proton" : {
      "rules" : [
        "CreateEnvironment", "CreateEnvironmentAccountConnection", "CreateEnvironmentTemplate",
        "CreateEnvironmentTemplateVersion", "CreateRepository", "CreateService", "CreateServiceTemplate",
        "CreateServiceTemplateVersion", "CreateTemplateSyncConfig", "DeleteEnvironment",
        "DeleteEnvironmentAccountConnection", "DeleteEnvironmentTemplate", "DeleteEnvironmentTemplateVersion",
        "DeleteRepository", "DeleteService", "DeleteServiceTemplate", "DeleteServiceTemplateVersion",
        "DeleteTemplateSyncConfig", "UpdateAccountSettings", "UpdateEnvironment", "UpdateEnvironmentAccountConnection",
        "UpdateEnvironmentTemplate", "UpdateEnvironmentTemplateVersion", "UpdateService", "UpdateServiceInstance",
        "UpdateServicePipeline", "UpdateServiceTemplate", "UpdateServiceTemplateVersion", "UpdateTemplateSyncConfig"
      ],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "qldb" : {
      "rules" : [
        "CreateLedger", "DeleteLedger", "StreamJournalToKinesis", "UpdateLedger", "UpdateLedgerPermissionsMode"
      ],
      "regions" : [
        "ap-northeast-1", "ap-northeast-2", "ap-southeast-1", "ap-southeast-2", "ca-central-1", "eu-central-1",
        "eu-west-1", "eu-west-2", "us-east-1", "us-east-2", "us-west-2"
      ]
    },
    "ram" : {
      "rules" : [
        "AssociateResourceShare", "AssociateResourceSharePermission", "CreateResourceShare", "DeleteResourceShare",
        "DisassociateResourceShare", "DisassociateResourceSharePermission", "EnableSharingWithAwsOrganization",
        "PromoteResourceShareCreatedFromPolicy", "UpdateResourceShare"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "rds" : {
      "rules" : [
        "AddRoleToDBCluster", "AddRoleToDBInstance", "AddSourceIdentifierToSubscription", "AddTagsToResource",
        "ApplyPendingMaintenanceAction", "BacktrackDBCluster", "CreateCustomAvailabilityZone",
        "CreateCustomDBEngineVersion", "CreateDBCluster", "CreateDBClusterEndpoint", "CreateDBClusterParameterGroup",
        "CreateDBClusterSnapshot", "CreateDBInstance", "CreateDBInstanceReadReplica", "CreateDBParameterGroup",
        "CreateDBProxy", "CreateDBProxyEndpoint", "CreateDBSecurityGroup", "CreateDBSnapshot", "CreateDBSubnetGroup",
        "CreateEventSubscription", "CreateGlobalCluster", "CreateOptionGroup", "DeleteCustomAvailabilityZone",
        "DeleteCustomDBEngineVersion", "DeleteDBCluster", "DeleteDBClusterEndpoint", "DeleteDBClusterParameterGroup",
        "DeleteDBClusterSnapshot", "DeleteDBInstance", "DeleteDBInstanceAutomatedBackup", "DeleteDBParameterGroup",
        "DeleteDBProxy", "DeleteDBProxyEndpoint", "DeleteDBSecurityGroup", "DeleteDBSnapshot", "DeleteDBSubnetGroup",
        "DeleteEventSubscription", "DeleteGlobalCluster", "DeleteInstallationMedia", "DeleteOptionGroup",
        "DeregisterDBProxyTargets", "FailoverDBCluster", "FailoverGlobalCluster", "ImportInstallationMedia",
        "ModifyCertificates", "ModifyCurrentDBClusterCapacity", "ModifyCustomDBEngineVersion", "ModifyDBCluster",
        "ModifyDBClusterEndpoint", "ModifyDBClusterParameterGroup", "ModifyDBClusterSnapshotAttribute",
        "ModifyDBInstance", "ModifyDBParameterGroup", "ModifyDBProxy", "ModifyDBProxyEndpoint",
        "ModifyDBProxyTargetGroup", "ModifyDBSnapshot", "ModifyDBSnapshotAttribute", "ModifyDBSubnetGroup",
        "ModifyEventSubscription", "ModifyGlobalCluster", "ModifyOptionGroup", "PromoteReadReplica",
        "PromoteReadReplicaDBCluster", "RemoveFromGlobalCluster", "RemoveRoleFromDBCluster", "RemoveRoleFromDBInstance",
        "RemoveSourceIdentifierFromSubscription", "RemoveTagsFromResource", "ResetDBClusterParameterGroup",
        "ResetDBParameterGroup", "RevokeDBSecurityGroupIngress"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "redshift" : {
      "rules" : [
        "AddPartner", "AssociateDataShareConsumer", "CreateAuthenticationProfile", "CreateCluster",
        "CreateClusterParameterGroup", "CreateClusterSecurityGroup", "CreateClusterSnapshot",
        "CreateClusterSubnetGroup", "CreateEndpointAccess", "CreateEventSubscription", "CreateHsmClientCertificate",
        "CreateHsmConfiguration", "CreateScheduledAction", "CreateSnapshotCopyGrant", "CreateSnapshotSchedule",
        "CreateTags", "CreateUsageLimit", "DeauthorizeDataShare", "DeleteAuthenticationProfile", "DeleteCluster",
        "DeleteClusterParameterGroup", "DeleteClusterSecurityGroup", "DeleteClusterSnapshot",
        "DeleteClusterSubnetGroup", "DeleteEndpointAccess", "DeleteEventSubscription", "DeleteHsmClientCertificate",
        "DeleteHsmConfiguration", "DeletePartner", "DeleteScheduledAction", "DeleteSnapshotCopyGrant",
        "DeleteSnapshotSchedule", "DeleteTags", "DeleteUsageLimit", "DisableLogging", "DisableSnapshotCopy",
        "DisassociateDataShareConsumer", "EnableLogging", "EnableSnapshotCopy", "ModifyAquaConfiguration",
        "ModifyAuthenticationProfile", "ModifyCluster", "ModifyClusterDbRevision", "ModifyClusterIamRoles",
        "ModifyClusterMaintenance", "ModifyClusterParameterGroup", "ModifyClusterSnapshot",
        "ModifyClusterSnapshotSchedule", "ModifyClusterSubnetGroup", "ModifyEndpointAccess", "ModifyEventSubscription",
        "ModifyScheduledAction", "ModifySnapshotCopyRetentionPeriod", "ModifySnapshotSchedule", "ModifyUsageLimit",
        "PauseCluster", "ResetClusterParameterGroup", "ResizeCluster", "RevokeClusterSecurityGroupIngress",
        "RevokeEndpointAccess", "RevokeSnapshotAccess", "UpdatePartnerStatus"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "redshift-data" : {
      "rules" : [],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "route53" : {
      "rules" : [
        "ActivateKeySigningKey", "AssociateVPCWithHostedZone", "ChangeResourceRecordSets", "ChangeTagsForResource",
        "CreateHealthCheck", "CreateHostedZone", "CreateKeySigningKey", "CreateQueryLoggingConfig",
        "CreateReusableDelegationSet", "CreateTrafficPolicy", "CreateTrafficPolicyInstance",
        "CreateTrafficPolicyVersion", "CreateVPCAssociationAuthorization", "DeactivateKeySigningKey",
        "DeleteHealthCheck", "DeleteHostedZone", "DeleteKeySigningKey", "DeleteQueryLoggingConfig",
        "DeleteReusableDelegationSet", "DeleteTrafficPolicy", "DeleteTrafficPolicyInstance",
        "DeleteVPCAssociationAuthorization", "DisableHostedZoneDNSSEC", "DisassociateVPCFromHostedZone",
        "EnableHostedZoneDNSSEC", "UpdateHealthCheck", "UpdateHostedZoneComment", "UpdateTrafficPolicyComment",
        "UpdateTrafficPolicyInstance"
      ],
      "regions" : ["aws-global"]
    },
    "route53resolver" : {
      "rules" : [
        "AssociateFirewallRuleGroup", "AssociateResolverEndpointIpAddress", "AssociateResolverQueryLogConfig",
        "AssociateResolverRule", "CreateFirewallDomainList", "CreateFirewallRule", "CreateFirewallRuleGroup",
        "CreateResolverEndpoint", "CreateResolverQueryLogConfig", "CreateResolverRule", "DeleteFirewallDomainList",
        "DeleteFirewallRule", "DeleteFirewallRuleGroup", "DeleteResolverEndpoint", "DeleteResolverQueryLogConfig",
        "DeleteResolverRule", "DisassociateFirewallRuleGroup", "DisassociateResolverEndpointIpAddress",
        "DisassociateResolverQueryLogConfig", "DisassociateResolverRule", "ImportFirewallDomains",
        "PutFirewallRuleGroupPolicy", "PutResolverQueryLogConfigPolicy", "PutResolverRulePolicy",
        "UpdateFirewallConfig", "UpdateFirewallDomains", "UpdateFirewallRule", "UpdateFirewallRuleGroupAssociation",
        "UpdateResolverConfig", "UpdateResolverDnssecConfig", "UpdateResolverEndpoint", "UpdateResolverRule"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "s3" : {
      "rules" : [
        "CreateBucket", "DeleteBucket", "DeleteBucketAnalyticsConfiguration", "DeleteBucketCors",
        "DeleteBucketEncryption", "DeleteBucketIntelligentTieringConfiguration", "DeleteBucketInventoryConfiguration",
        "DeleteBucketLifecycle", "DeleteBucketMetricsConfiguration", "DeleteBucketOwnershipControls",
        "DeleteBucketPolicy", "DeleteBucketReplication", "DeleteBucketTagging", "DeleteBucketWebsite",
        "DeletePublicAccessBlock", "PutBucketAccelerateConfiguration", "PutBucketAcl",
        "PutBucketAnalyticsConfiguration", "PutBucketCors", "PutBucketEncryption",
        "PutBucketIntelligentTieringConfiguration", "PutBucketInventoryConfiguration", "PutBucketLifecycle",
        "PutBucketLifecycleConfiguration", "PutBucketLogging", "PutBucketMetricsConfiguration", "PutBucketNotification",
        "PutBucketNotificationConfiguration", "PutBucketOwnershipControls", "PutBucketPolicy", "PutBucketReplication",
        "PutBucketRequestPayment", "PutBucketTagging", "PutBucketVersioning", "PutBucketWebsite", "PutPublicAccessBlock"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2", "aws-global"
      ]
    },
    "s3-outposts" : {
      "rules" : ["CreateEndpoint", "DeleteEndpoint"],
      "regions" : []
    },
    "sagemaker" : {
      "rules" : [
        "AddAssociation", "AddTags", "AssociateTrialComponent", "CreateAction", "CreateAlgorithm", "CreateApp",
        "CreateAppImageConfig", "CreateArtifact", "CreateAutoMLJob", "CreateCodeRepository", "CreateCompilationJob",
        "CreateContext", "CreateDataQualityJobDefinition", "CreateDeviceFleet", "CreateDomain",
        "CreateEdgePackagingJob", "CreateEndpoint", "CreateEndpointConfig", "CreateExperiment", "CreateFeatureGroup",
        "CreateFlowDefinition", "CreateHumanTaskUi", "CreateHyperParameterTuningJob", "CreateImage",
        "CreateImageVersion", "CreateInferenceRecommendationsJob", "CreateLabelingJob", "CreateModel",
        "CreateModelBiasJobDefinition", "CreateModelExplainabilityJobDefinition", "CreateModelPackage",
        "CreateModelPackageGroup", "CreateModelQualityJobDefinition", "CreateMonitoringSchedule",
        "CreateNotebookInstance", "CreateNotebookInstanceLifecycleConfig", "CreatePipeline", "CreatePresignedDomainUrl",
        "CreatePresignedNotebookInstanceUrl", "CreateProcessingJob", "CreateProject", "CreateStudioLifecycleConfig",
        "CreateTrainingJob", "CreateTransformJob", "CreateTrial", "CreateTrialComponent", "CreateUserProfile",
        "CreateWorkforce", "CreateWorkteam", "DeleteAction", "DeleteAlgorithm", "DeleteApp", "DeleteAppImageConfig",
        "DeleteArtifact", "DeleteAssociation", "DeleteCodeRepository", "DeleteContext"
      ],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "sagemaker" : {
      "rules" : [
        "DeleteDataQualityJobDefinition", "DeleteDeviceFleet", "DeleteDomain", "DeleteEndpoint", "DeleteEndpointConfig",
        "DeleteExperiment", "DeleteFeatureGroup", "DeleteFlowDefinition", "DeleteHumanTaskUi", "DeleteImage",
        "DeleteImageVersion", "DeleteModel", "DeleteModelBiasJobDefinition", "DeleteModelExplainabilityJobDefinition",
        "DeleteModelPackage", "DeleteModelPackageGroup", "DeleteModelPackageGroupPolicy",
        "DeleteModelQualityJobDefinition", "DeleteMonitoringSchedule", "DeleteNotebookInstance",
        "DeleteNotebookInstanceLifecycleConfig", "DeletePipeline", "DeleteProject", "DeleteStudioLifecycleConfig",
        "DeleteTags", "DeleteTrial", "DeleteTrialComponent", "DeleteUserProfile", "DeleteWorkforce", "DeleteWorkteam",
        "DeregisterDevices", "DisableSagemakerServicecatalogPortfolio", "DisassociateTrialComponent",
        "EnableSagemakerServicecatalogPortfolio", "PutModelPackageGroupPolicy", "RenderUiTemplate", "UpdateAction",
        "UpdateAppImageConfig", "UpdateArtifact", "UpdateCodeRepository", "UpdateContext", "UpdateDeviceFleet",
        "UpdateDevices", "UpdateDomain", "UpdateEndpoint", "UpdateEndpointWeightsAndCapacities", "UpdateExperiment",
        "UpdateImage", "UpdateModelPackage", "UpdateMonitoringSchedule", "UpdateNotebookInstance",
        "UpdateNotebookInstanceLifecycleConfig", "UpdatePipeline", "UpdatePipelineExecution", "UpdateProject",
        "UpdateTrainingJob", "UpdateTrial", "UpdateTrialComponent", "UpdateUserProfile", "UpdateWorkforce",
        "UpdateWorkteam"
      ],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "savingsplans" : {
      "rules" : ["CreateSavingsPlan", "DeleteQueuedSavingsPlan"],
      "regions" : ["aws-global"]
    },
    "schemas" : {
      "rules" : [
        "CreateDiscoverer", "CreateRegistry", "CreateSchema", "DeleteDiscoverer", "DeleteRegistry",
        "DeleteResourcePolicy", "DeleteSchema", "DeleteSchemaVersion", "PutCodeBinding", "PutResourcePolicy",
        "UpdateDiscoverer", "UpdateRegistry", "UpdateSchema"
      ],
      "regions" : [
        "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "sa-east-1", "us-east-1",
        "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "secretsmanager" : {
      "rules" : [
        "CreateSecret", "DeleteResourcePolicy", "DeleteSecret", "PutResourcePolicy", "PutSecretValue",
        "RemoveRegionsFromReplication", "ReplicateSecretToRegions", "UpdateSecret", "UpdateSecretVersionStage"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "securityhub" : {
      "rules" : [
        "CreateActionTarget", "CreateFindingAggregator", "CreateInsight", "CreateMembers", "DeclineInvitations",
        "DeleteActionTarget", "DeleteFindingAggregator", "DeleteInsight", "DeleteInvitations", "DeleteMembers",
        "DisableImportFindingsForProduct", "DisableOrganizationAdminAccount", "DisableSecurityHub",
        "DisassociateFromAdministratorAccount", "DisassociateFromMasterAccount", "DisassociateMembers",
        "EnableImportFindingsForProduct", "EnableOrganizationAdminAccount", "EnableSecurityHub", "UpdateActionTarget",
        "UpdateFindingAggregator", "UpdateFindings", "UpdateInsight", "UpdateOrganizationConfiguration",
        "UpdateSecurityHubConfiguration", "UpdateStandardsControl"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "servicecatalog" : {
      "rules" : [
        "AssociateBudgetWithResource", "AssociatePrincipalWithPortfolio", "AssociateProductWithPortfolio",
        "AssociateServiceActionWithProvisioningArtifact", "AssociateTagOptionWithResource", "CreateConstraint",
        "CreatePortfolio", "CreatePortfolioShare", "CreateProduct", "CreateProvisionedProductPlan",
        "CreateProvisioningArtifact", "CreateServiceAction", "CreateTagOption", "DeleteConstraint", "DeletePortfolio",
        "DeletePortfolioShare", "DeleteProduct", "DeleteProvisionedProductPlan", "DeleteProvisioningArtifact",
        "DeleteServiceAction", "DeleteTagOption", "DisableAWSOrganizationsAccess", "DisassociateBudgetFromResource",
        "DisassociatePrincipalFromPortfolio", "DisassociateProductFromPortfolio",
        "DisassociateServiceActionFromProvisioningArtifact", "DisassociateTagOptionFromResource",
        "EnableAWSOrganizationsAccess", "ImportAsProvisionedProduct", "TerminateProvisionedProduct", "UpdateConstraint",
        "UpdatePortfolio", "UpdatePortfolioShare", "UpdateProduct", "UpdateProvisionedProduct",
        "UpdateProvisionedProductProperties", "UpdateProvisioningArtifact", "UpdateServiceAction", "UpdateTagOption"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "servicediscovery" : {
      "rules" : [
        "CreateHttpNamespace", "CreatePrivateDnsNamespace", "CreatePublicDnsNamespace", "CreateService",
        "DeleteNamespace", "DeleteService", "DeregisterInstance", "UpdateHttpNamespace",
        "UpdateInstanceCustomHealthStatus", "UpdatePrivateDnsNamespace", "UpdatePublicDnsNamespace", "UpdateService"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1",
        "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "ses" : {
      "rules" : [
        "CreateConfigurationSet", "CreateConfigurationSetEventDestination", "CreateContact", "CreateContactList",
        "CreateCustomVerificationEmailTemplate", "CreateDedicatedIpPool", "CreateDeliverabilityTestReport",
        "CreateEmailIdentity", "CreateEmailIdentityPolicy", "CreateEmailTemplate", "CreateImportJob",
        "DeleteConfigurationSet", "DeleteConfigurationSetEventDestination", "DeleteContact", "DeleteContactList",
        "DeleteCustomVerificationEmailTemplate", "DeleteDedicatedIpPool", "DeleteEmailIdentity",
        "DeleteEmailIdentityPolicy", "DeleteEmailTemplate", "DeleteSuppressedDestination",
        "PutAccountDedicatedIpWarmupAttributes", "PutAccountDetails", "PutAccountSendingAttributes",
        "PutAccountSuppressionAttributes", "PutConfigurationSetDeliveryOptions", "PutConfigurationSetReputationOptions",
        "PutConfigurationSetSendingOptions", "PutConfigurationSetSuppressionOptions",
        "PutConfigurationSetTrackingOptions", "PutDedicatedIpInPool", "PutDedicatedIpWarmupAttributes",
        "PutDeliverabilityDashboardOption", "PutEmailIdentityConfigurationSetAttributes",
        "PutEmailIdentityDkimAttributes", "PutEmailIdentityDkimSigningAttributes", "PutEmailIdentityFeedbackAttributes",
        "PutEmailIdentityMailFromAttributes", "PutSuppressedDestination", "UpdateConfigurationSetEventDestination",
        "UpdateContact", "UpdateContactList", "UpdateCustomVerificationEmailTemplate", "UpdateEmailIdentityPolicy",
        "UpdateEmailTemplate"
      ],
      "regions" : ["us-east-1"]
    }, "signer" : {
      "rules" : [
        "AddProfilePermission", "PutSigningProfile", "RemoveProfilePermission", "RevokeSignature",
        "RevokeSigningProfile"
      ],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "sms" : {
      "rules" : [
        "CreateApp", "CreateReplicationJob", "DeleteApp", "DeleteAppLaunchConfiguration",
        "DeleteAppReplicationConfiguration", "DeleteAppValidationConfiguration", "DeleteReplicationJob",
        "DeleteServerCatalog", "DisassociateConnector", "ImportAppCatalog", "ImportServerCatalog", "LaunchApp",
        "PutAppLaunchConfiguration", "PutAppReplicationConfiguration", "PutAppValidationConfiguration", "TerminateApp",
        "UpdateApp", "UpdateReplicationJob"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1",
        "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "sns" : {
      "rules" : [
        "AddPermission", "CreatePlatformApplication", "CreatePlatformEndpoint", "CreateSMSSandboxPhoneNumber",
        "CreateTopic", "DeleteEndpoint", "DeletePlatformApplication", "DeleteSMSSandboxPhoneNumber", "DeleteTopic",
        "RemovePermission", "SetEndpointAttributes", "SetPlatformApplicationAttributes", "SetSMSAttributes",
        "SetSubscriptionAttributes", "SetTopicAttributes", "Subscribe", "Unsubscribe"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "sqs" : {
      "rules" : [
        "AddPermission", "ChangeMessageVisibility", "ChangeMessageVisibilityBatch", "CreateQueue", "DeleteQueue",
        "RemovePermission", "SetQueueAttributes"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "ssm" : {
      "rules" : [
        "AddTagsToResource", "AssociateOpsItemRelatedItem", "CreateActivation", "CreateAssociation",
        "CreateAssociationBatch", "CreateDocument", "CreateMaintenanceWindow", "CreateOpsItem", "CreateOpsMetadata",
        "CreatePatchBaseline", "CreateResourceDataSync", "DeleteActivation", "DeleteAssociation", "DeleteDocument",
        "DeleteInventory", "DeleteMaintenanceWindow", "DeleteOpsMetadata", "DeleteParameter", "DeleteParameters",
        "DeletePatchBaseline", "DeleteResourceDataSync", "DeregisterManagedInstance",
        "DeregisterPatchBaselineForPatchGroup", "DeregisterTargetFromMaintenanceWindow",
        "DeregisterTaskFromMaintenanceWindow", "DisassociateOpsItemRelatedItem", "LabelParameterVersion",
        "ModifyDocumentPermission", "PutComplianceItems", "PutInventory", "PutParameter", "RemoveTagsFromResource",
        "ResetServiceSetting", "TerminateSession", "UnlabelParameterVersion", "UpdateAssociation",
        "UpdateAssociationStatus", "UpdateDocument", "UpdateDocumentDefaultVersion", "UpdateDocumentMetadata",
        "UpdateMaintenanceWindow", "UpdateMaintenanceWindowTarget", "UpdateMaintenanceWindowTask",
        "UpdateManagedInstanceRole", "UpdateOpsItem", "UpdateOpsMetadata", "UpdatePatchBaseline",
        "UpdateResourceDataSync", "UpdateServiceSetting"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "states" : {
      "rules" : ["CreateActivity", "CreateStateMachine", "DeleteActivity", "DeleteStateMachine", "UpdateStateMachine"],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "storagegateway" : {
      "rules" : [
        "ActivateGateway", "AddCache", "AddTagsToResource", "AddUploadBuffer", "AddWorkingStorage",
        "AssociateFileSystem", "AttachVolume", "CreateCachediSCSIVolume", "CreateNFSFileShare", "CreateSMBFileShare",
        "CreateSnapshot", "CreateSnapshotFromVolumeRecoveryPoint", "CreateStorediSCSIVolume", "CreateTapePool",
        "CreateTapeWithBarcode", "CreateTapes", "DeleteAutomaticTapeCreationPolicy", "DeleteBandwidthRateLimit",
        "DeleteChapCredentials", "DeleteFileShare", "DeleteGateway", "DeleteSnapshotSchedule", "DeleteTape",
        "DeleteTapeArchive", "DeleteTapePool", "DeleteVolume", "DetachVolume", "DisableGateway",
        "DisassociateFileSystem", "JoinDomain", "RemoveTagsFromResource", "ResetCache", "SetLocalConsolePassword",
        "SetSMBGuestPassword", "ShutdownGateway", "UpdateAutomaticTapeCreationPolicy", "UpdateBandwidthRateLimit",
        "UpdateBandwidthRateLimitSchedule", "UpdateChapCredentials", "UpdateFileSystemAssociation",
        "UpdateGatewayInformation", "UpdateGatewaySoftwareNow", "UpdateMaintenanceStartTime", "UpdateNFSFileShare",
        "UpdateSMBFileShare", "UpdateSMBFileShareVisibility", "UpdateSMBLocalGroups", "UpdateSMBSecurityStrategy",
        "UpdateSnapshotSchedule", "UpdateVTLDeviceType"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "support" : {
      "rules" : ["AddAttachmentsToSet", "AddCommunicationToCase", "CreateCase", "ResolveCase"],
      "regions" : ["aws-global"]
    },
    "swf" : {
      "rules" : [
        "DeprecateActivityType", "DeprecateDomain", "DeprecateWorkflowType", "RecordActivityTaskHeartbeat",
        "RespondActivityTaskCanceled", "RespondActivityTaskCompleted", "RespondActivityTaskFailed",
        "RespondDecisionTaskCompleted", "TerminateWorkflowExecution", "UndeprecateActivityType", "UndeprecateDomain",
        "UndeprecateWorkflowType"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-northeast-3", "ap-south-1", "ap-southeast-1",
        "ap-southeast-2", "ca-central-1", "eu-central-1", "eu-north-1", "eu-south-1", "eu-west-1", "eu-west-2",
        "eu-west-3", "me-south-1", "sa-east-1", "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    },
    "synthetics" : {
      "rules" : ["CreateCanary", "DeleteCanary", "UpdateCanary"],
      "regions" : [
        "ap-southeast-2", "eu-west-2", "ap-northeast-2", "eu-west-1", "eu-south-1", "ap-south-1", "ap-northeast-3",
        "me-south-1", "ca-central-1", "ap-east-1", "us-west-1", "ap-northeast-1", "af-south-1", "sa-east-1",
        "eu-north-1", "us-east-1", "us-west-2", "us-east-2", "eu-central-1", "eu-west-3", "ap-southeast-1"
      ]
    },
    "transcribe" : {
      "rules" : [
        "CreateCallAnalyticsCategory", "CreateLanguageModel", "CreateMedicalVocabulary", "CreateVocabulary",
        "CreateVocabularyFilter", "DeleteCallAnalyticsCategory", "DeleteCallAnalyticsJob", "DeleteLanguageModel",
        "DeleteMedicalTranscriptionJob", "DeleteMedicalVocabulary", "DeleteTranscriptionJob", "DeleteVocabulary",
        "DeleteVocabularyFilter", "UpdateCallAnalyticsCategory", "UpdateMedicalVocabulary", "UpdateVocabulary",
        "UpdateVocabularyFilter"
      ],
      "regions" : [
        "af-south-1", "ap-east-1", "ap-northeast-1", "ap-northeast-2", "ap-south-1", "ap-southeast-1", "ap-southeast-2",
        "ca-central-1", "eu-central-1", "eu-north-1", "eu-west-1", "eu-west-2", "eu-west-3", "me-south-1", "sa-east-1",
        "us-east-1", "us-east-2", "us-west-1", "us-west-2"
      ]
    }
  }
}