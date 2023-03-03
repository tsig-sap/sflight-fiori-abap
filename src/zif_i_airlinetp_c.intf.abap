interface ZIF_I_AIRLINETP_C
  public .


  interfaces /BOBF/IF_LIB_CONSTANTS .

  constants:
    BEGIN OF SC_ACTION,
      BEGIN OF ZI_AIRLINEPLANETP,
 CREATE_ZI_AIRLINEPLANETP       TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876501E1B8D',
 DELETE_ZI_AIRLINEPLANETP       TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876501E9B8D',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876500D7B8D',
 SAVE_ZI_AIRLINEPLANETP         TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876501F1B8D',
 UPDATE_ZI_AIRLINEPLANETP       TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876501E5B8D',
 VALIDATE_ZI_AIRLINEPLANETP     TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876501EDB8D',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876500D5B8D',
      END OF ZI_AIRLINEPLANETP,
      BEGIN OF ZI_AIRLINETP,
 ACTIVATION                     TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876500B9B8D',
 CREATE_ZI_AIRLINETP            TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2365BB8D',
 DELETE_ZI_AIRLINETP            TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23663B8D',
 EDIT                           TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876500B7B8D',
 LOCK_ZI_AIRLINETP              TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2364FB8D',
 PREPARATION                    TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876500BDB8D',
 SAVE_ZI_AIRLINETP              TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2366BB8D',
 UNLOCK_ZI_AIRLINETP            TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23653B8D',
 UPDATE_ZI_AIRLINETP            TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2365FB8D',
 VALIDATE_ZI_AIRLINETP          TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23667B8D',
 VALIDATION                     TYPE /BOBF/ACT_KEY VALUE 'AB90E47E1A041EEDAEA5D876500BBB8D',
      END OF ZI_AIRLINETP,
    END OF SC_ACTION .
  constants:
    BEGIN OF SC_ACTION_ATTRIBUTE,
        BEGIN OF ZI_AIRLINEPLANETP,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF ZI_AIRLINEPLANETP,
        BEGIN OF ZI_AIRLINETP,
        BEGIN OF EDIT,
 PRESERVE_CHANGES               TYPE STRING VALUE 'PRESERVE_CHANGES',
        END OF EDIT,
        BEGIN OF LOCK_ZI_AIRLINETP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF LOCK_ZI_AIRLINETP,
        BEGIN OF PREPARATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF PREPARATION,
        BEGIN OF UNLOCK_ZI_AIRLINETP,
 GENERIC                        TYPE STRING VALUE 'GENERIC',
 EDIT_MODE                      TYPE STRING VALUE 'EDIT_MODE',
 ALL_NONE                       TYPE STRING VALUE 'ALL_NONE',
 SCOPE                          TYPE STRING VALUE 'SCOPE',
 FORCE_INVALIDATION             TYPE STRING VALUE 'FORCE_INVALIDATION',
 LOCK_PARAMETER_BUFFER          TYPE STRING VALUE 'LOCK_PARAMETER_BUFFER',
 LEGACY_DAC_KEY                 TYPE STRING VALUE 'LEGACY_DAC_KEY',
        END OF UNLOCK_ZI_AIRLINETP,
        BEGIN OF VALIDATION,
 SIDEEFFECTSQUALIFIER           TYPE STRING VALUE 'SIDEEFFECTSQUALIFIER',
        END OF VALIDATION,
      END OF ZI_AIRLINETP,
    END OF SC_ACTION_ATTRIBUTE .
  constants:
    BEGIN OF SC_ALTERNATIVE_KEY,
      BEGIN OF ZI_AIRLINEPLANETP,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE 'AB90E47E1A041EEDAEA5D876500D3B8D',
      END OF ZI_AIRLINEPLANETP,
      BEGIN OF ZI_AIRLINETP,
 ACTIVE_ENTITY_KEY              TYPE /BOBF/OBM_ALTKEY_KEY VALUE 'AB90E47E1A041EEDAEA5D876500B5B8D',
      END OF ZI_AIRLINETP,
    END OF SC_ALTERNATIVE_KEY .
  constants:
    BEGIN OF SC_ASSOCIATION,
      BEGIN OF ZI_AIRLINEPLANETP,
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D876501DBB8D',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D876501DFB8D',
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D876501F5B8D',
 TO_ROOT                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D876501F7B8D',
      END OF ZI_AIRLINEPLANETP,
      BEGIN OF ZI_AIRLINEPLANETP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D876501F9B8D',
      END OF ZI_AIRLINEPLANETP_MESSAGE,
      BEGIN OF ZI_AIRLINEPLANETP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D876501FBB8D',
      END OF ZI_AIRLINEPLANETP_PROPERTY,
      BEGIN OF ZI_AIRLINETP,
 LOCK                           TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2364DB8D',
 MESSAGE                        TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23649B8D',
 PROPERTY                       TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23659B8D',
 _AIRLINEPLANETP                TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D876501C9B8D',
      END OF ZI_AIRLINETP,
      BEGIN OF ZI_AIRLINETP_LOCK,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23671B8D',
      END OF ZI_AIRLINETP_LOCK,
      BEGIN OF ZI_AIRLINETP_MESSAGE,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2366FB8D',
      END OF ZI_AIRLINETP_MESSAGE,
      BEGIN OF ZI_AIRLINETP_PROPERTY,
 TO_PARENT                      TYPE /BOBF/OBM_ASSOC_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23673B8D',
      END OF ZI_AIRLINETP_PROPERTY,
    END OF SC_ASSOCIATION .
  constants:
    BEGIN OF SC_ASSOCIATION_ATTRIBUTE,
      BEGIN OF ZI_AIRLINEPLANETP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZI_AIRLINEPLANETP,
      BEGIN OF ZI_AIRLINETP,
        BEGIN OF PROPERTY,
 ALL_NODE_PROPERTY              TYPE STRING VALUE 'ALL_NODE_PROPERTY',
 ALL_NODE_ATTRIBUTE_PROPERTY    TYPE STRING VALUE 'ALL_NODE_ATTRIBUTE_PROPERTY',
 ALL_ASSOCIATION_PROPERTY       TYPE STRING VALUE 'ALL_ASSOCIATION_PROPERTY',
 ALL_ASSOCIATION_ATTRIBUTE_PROP TYPE STRING VALUE 'ALL_ASSOCIATION_ATTRIBUTE_PROP',
 ALL_ACTION_PROPERTY            TYPE STRING VALUE 'ALL_ACTION_PROPERTY',
 ALL_ACTION_ATTRIBUTE_PROPERTY  TYPE STRING VALUE 'ALL_ACTION_ATTRIBUTE_PROPERTY',
 ALL_QUERY_PROPERTY             TYPE STRING VALUE 'ALL_QUERY_PROPERTY',
 ALL_QUERY_ATTRIBUTE_PROPERTY   TYPE STRING VALUE 'ALL_QUERY_ATTRIBUTE_PROPERTY',
 ALL_SUBTREE_PROPERTY           TYPE STRING VALUE 'ALL_SUBTREE_PROPERTY',
        END OF PROPERTY,
      END OF ZI_AIRLINETP,
    END OF SC_ASSOCIATION_ATTRIBUTE .
  constants:
    SC_BO_KEY  TYPE /BOBF/OBM_BO_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2363FB8D' .
  constants:
    SC_BO_NAME TYPE /BOBF/OBM_NAME VALUE 'ZI_AIRLINETP' .
  constants:
    BEGIN OF SC_DETERMINATION,
      BEGIN OF ZI_AIRLINEPLANETP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500D9B8D',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500DDB8D',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500DBB8D',
      END OF ZI_AIRLINEPLANETP,
      BEGIN OF ZI_AIRLINETP,
 ACTION_AND_FIELD_CONTROL       TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500BFB8D',
 CENTRAL_ADMIN_DATA             TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500C1B8D',
 DELETE_DRAFT_WHN_ACTIVE_DELETE TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500CFB8D',
 DRAFT_ACTION_CONTROL           TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500CDB8D',
 DRAFT_SYS_ADMIN_DATA           TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500CBB8D',
 DURABLE_LOCK_CLEANUP_CLEANUP   TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500C9B8D',
 DURABLE_LOCK_CLEANUP_DELETE    TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500C3B8D',
 DURABLE_LOCK_CLEANUP_FAIL_SAVE TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500C7B8D',
 DURABLE_LOCK_CLEANUP_SUCC_SAVE TYPE /BOBF/DET_KEY VALUE 'AB90E47E1A041EEDAEA5D876500C5B8D',
      END OF ZI_AIRLINETP,
    END OF SC_DETERMINATION .
  constants:
    BEGIN OF SC_GROUP,
 DRAFT_CONSISTENCY              TYPE /BOBF/OBM_GROUP_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23677B8D',
    END OF SC_GROUP .
  constants:
    SC_MODEL_VERSION TYPE /BOBF/CONF_VERSION VALUE '00000' .
  constants:
    BEGIN OF SC_NODE,
 ZI_AIRLINEPLANETP              TYPE /BOBF/OBM_NODE_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2367DB8D',
 ZI_AIRLINEPLANETP_MESSAGE      TYPE /BOBF/OBM_NODE_KEY VALUE 'AB90E47E1A041EEDAEA5D876501D9B8D',
 ZI_AIRLINEPLANETP_PROPERTY     TYPE /BOBF/OBM_NODE_KEY VALUE 'AB90E47E1A041EEDAEA5D876501DDB8D',
 ZI_AIRLINETP                   TYPE /BOBF/OBM_NODE_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23643B8D',
 ZI_AIRLINETP_LOCK              TYPE /BOBF/OBM_NODE_KEY VALUE 'AB90E47E1A041EEDAEA5D84E2364BB8D',
 ZI_AIRLINETP_MESSAGE           TYPE /BOBF/OBM_NODE_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23647B8D',
 ZI_AIRLINETP_PROPERTY          TYPE /BOBF/OBM_NODE_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23657B8D',
    END OF SC_NODE .
  constants:
    BEGIN OF SC_NODE_ATTRIBUTE,
      BEGIN OF ZI_AIRLINEPLANETP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  PLANETYPE                      TYPE STRING VALUE 'PLANETYPE',
  SNUMBER                        TYPE STRING VALUE 'SNUMBER',
  ACTIVEUUID                     TYPE STRING VALUE 'ACTIVEUUID',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTADMINISTRATIVEDATAUUID    TYPE STRING VALUE 'DRAFTADMINISTRATIVEDATAUUID',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  DRAFTENTITYOPERATIONCODE       TYPE STRING VALUE 'DRAFTENTITYOPERATIONCODE',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF ZI_AIRLINEPLANETP,
      BEGIN OF ZI_AIRLINETP,
  NODE_DATA                      TYPE STRING VALUE 'NODE_DATA',
  CARRID                         TYPE STRING VALUE 'CARRID',
  CARRNAME                       TYPE STRING VALUE 'CARRNAME',
  CURRCODE                       TYPE STRING VALUE 'CURRCODE',
  URL                            TYPE STRING VALUE 'URL',
  CREATE_DATE                    TYPE STRING VALUE 'CREATE_DATE',
  CREATE_TIME                    TYPE STRING VALUE 'CREATE_TIME',
  CREATE_BY                      TYPE STRING VALUE 'CREATE_BY',
  LASTCHANGETIME                 TYPE STRING VALUE 'LASTCHANGETIME',
  ACTIVEUUID                     TYPE STRING VALUE 'ACTIVEUUID',
  HASACTIVEENTITY                TYPE STRING VALUE 'HASACTIVEENTITY',
  DRAFTENTITYCREATIONDATETIME    TYPE STRING VALUE 'DRAFTENTITYCREATIONDATETIME',
  DRAFTENTITYLASTCHANGEDATETIME  TYPE STRING VALUE 'DRAFTENTITYLASTCHANGEDATETIME',
  DRAFTADMINISTRATIVEDATAUUID    TYPE STRING VALUE 'DRAFTADMINISTRATIVEDATAUUID',
  DRAFTENTITYCONSISTENCYSTATUS   TYPE STRING VALUE 'DRAFTENTITYCONSISTENCYSTATUS',
  DRAFTENTITYOPERATIONCODE       TYPE STRING VALUE 'DRAFTENTITYOPERATIONCODE',
  ISACTIVEENTITY                 TYPE STRING VALUE 'ISACTIVEENTITY',
      END OF ZI_AIRLINETP,
    END OF SC_NODE_ATTRIBUTE .
  constants:
    BEGIN OF SC_NODE_CATEGORY,
      BEGIN OF ZI_AIRLINEPLANETP,
 ZI_AIRLINEPLANETP              TYPE /BOBF/OBM_NODE_CAT_KEY VALUE 'AB90E47E1A041EEDAEA5D876501C7B8D',
      END OF ZI_AIRLINEPLANETP,
      BEGIN OF ZI_AIRLINETP,
 ROOT                           TYPE /BOBF/OBM_NODE_CAT_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23645B8D',
      END OF ZI_AIRLINETP,
    END OF SC_NODE_CATEGORY .
  constants:
    BEGIN OF SC_STATUS_VARIABLE,
      BEGIN OF ZI_AIRLINETP,
 DRAFT_CONSISTENCY_STATUS       TYPE /BOBF/STA_VAR_KEY VALUE 'AB90E47E1A041EEDAEA5D84E23675B8D',
      END OF ZI_AIRLINETP,
    END OF SC_STATUS_VARIABLE .
  constants:
    BEGIN OF SC_VALIDATION,
      BEGIN OF ZI_AIRLINETP,
 DURABLE_LOCK_CREATE_FOR_NEW    TYPE /BOBF/VAL_KEY VALUE 'AB90E47E1A041EEDAEA5D876500D1B8D',
      END OF ZI_AIRLINETP,
    END OF SC_VALIDATION .
endinterface.