///
//  Generated code. Do not modify.
//  source: sys_account_models.proto
//
// @dart = 2.3
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

const Roles$json = const {
  '1': 'Roles',
  '2': const [
    const {'1': 'INVALID', '2': 0},
    const {'1': 'GUEST', '2': 1},
    const {'1': 'USER', '2': 2},
    const {'1': 'ADMIN', '2': 3},
    const {'1': 'SUPERADMIN', '2': 4},
  ],
};

const UserRoles$json = const {
  '1': 'UserRoles',
  '2': const [
    const {'1': 'role', '3': 1, '4': 1, '5': 14, '6': '.v2.sys_account.services.Roles', '10': 'role'},
    const {'1': 'project_id', '3': 2, '4': 1, '5': 9, '10': 'projectId'},
    const {'1': 'org_id', '3': 3, '4': 1, '5': 9, '10': 'orgId'},
  ],
};

const ErrorReason$json = const {
  '1': 'ErrorReason',
  '2': const [
    const {'1': 'reason', '3': 1, '4': 1, '5': 9, '10': 'reason'},
  ],
};

const RegisterRequest$json = const {
  '1': 'RegisterRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'password_confirm', '3': 3, '4': 1, '5': 9, '10': 'passwordConfirm'},
  ],
};

const LoginRequest$json = const {
  '1': 'LoginRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
  ],
};

const LoginResponse$json = const {
  '1': 'LoginResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'access_token', '3': 2, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'refresh_token', '3': 3, '4': 1, '5': 9, '10': 'refreshToken'},
    const {'1': 'error_reason', '3': 4, '4': 1, '5': 11, '6': '.v2.sys_account.services.ErrorReason', '10': 'errorReason'},
    const {'1': 'last_login', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastLogin'},
  ],
};

const RegisterResponse$json = const {
  '1': 'RegisterResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'success_msg', '3': 2, '4': 1, '5': 9, '10': 'successMsg'},
    const {'1': 'error_reason', '3': 3, '4': 1, '5': 11, '6': '.v2.sys_account.services.ErrorReason', '10': 'errorReason'},
    const {'1': 'verify_token', '3': 4, '4': 1, '5': 9, '10': 'verifyToken'},
    const {'1': 'temp_user_id', '3': 5, '4': 1, '5': 9, '10': 'tempUserId'},
  ],
};

const ForgotPasswordRequest$json = const {
  '1': 'ForgotPasswordRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
  ],
};

const ForgotPasswordResponse$json = const {
  '1': 'ForgotPasswordResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'success_msg', '3': 2, '4': 1, '5': 9, '10': 'successMsg'},
    const {'1': 'error_reason', '3': 3, '4': 1, '5': 11, '6': '.v2.sys_account.services.ErrorReason', '10': 'errorReason'},
    const {'1': 'forgot_password_requested_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'forgotPasswordRequestedAt'},
  ],
};

const ResetPasswordRequest$json = const {
  '1': 'ResetPasswordRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'password_confirm', '3': 3, '4': 1, '5': 9, '10': 'passwordConfirm'},
    const {'1': 'verify_token', '3': 4, '4': 1, '5': 9, '10': 'verifyToken'},
  ],
};

const ResetPasswordResponse$json = const {
  '1': 'ResetPasswordResponse',
  '2': const [
    const {'1': 'success', '3': 1, '4': 1, '5': 8, '10': 'success'},
    const {'1': 'success_msg', '3': 2, '4': 1, '5': 9, '10': 'successMsg'},
    const {'1': 'error_reason', '3': 3, '4': 1, '5': 11, '6': '.v2.sys_account.services.ErrorReason', '10': 'errorReason'},
    const {'1': 'reset_password_requested_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'resetPasswordRequestedAt'},
  ],
};

const RefreshAccessTokenRequest$json = const {
  '1': 'RefreshAccessTokenRequest',
  '2': const [
    const {'1': 'refresh_token', '3': 1, '4': 1, '5': 9, '10': 'refreshToken'},
  ],
};

const RefreshAccessTokenResponse$json = const {
  '1': 'RefreshAccessTokenResponse',
  '2': const [
    const {'1': 'access_token', '3': 1, '4': 1, '5': 9, '10': 'accessToken'},
    const {'1': 'error_reason', '3': 2, '4': 1, '5': 11, '6': '.v2.sys_account.services.ErrorReason', '10': 'errorReason'},
  ],
};

const UserDefinedFields$json = const {
  '1': 'UserDefinedFields',
  '2': const [
    const {'1': 'fields', '3': 1, '4': 1, '5': 12, '10': 'fields'},
  ],
};

const VerifyAccountRequest$json = const {
  '1': 'VerifyAccountRequest',
  '2': const [
    const {'1': 'verify_token', '3': 1, '4': 1, '5': 9, '10': 'verifyToken'},
    const {'1': 'account_id', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

const Project$json = const {
  '1': 'Project',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'logo_resource_id', '3': 3, '4': 1, '5': 9, '10': 'logoResourceId'},
    const {'1': 'created_at', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'creator_id', '3': 5, '4': 1, '5': 9, '10': 'creatorId'},
    const {'1': 'org_id', '3': 6, '4': 1, '5': 9, '10': 'orgId'},
    const {'1': 'org', '3': 7, '4': 1, '5': 11, '6': '.v2.sys_account.services.Org', '10': 'org'},
    const {'1': 'logo', '3': 8, '4': 1, '5': 12, '10': 'logo'},
  ],
};

const ProjectRequest$json = const {
  '1': 'ProjectRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'logo_filepath', '3': 2, '4': 1, '5': 9, '10': 'logoFilepath'},
    const {'1': 'creator_id', '3': 3, '4': 1, '5': 9, '10': 'creatorId'},
    const {'1': 'org_id', '3': 4, '4': 1, '5': 9, '10': 'orgId'},
    const {'1': 'org_name', '3': 5, '4': 1, '5': 9, '10': 'orgName'},
    const {'1': 'logo_upload_bytes', '3': 6, '4': 1, '5': 9, '10': 'logoUploadBytes'},
  ],
};

const ProjectUpdateRequest$json = const {
  '1': 'ProjectUpdateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'logo_filepath', '3': 3, '4': 1, '5': 9, '10': 'logoFilepath'},
    const {'1': 'logo_upload_bytes', '3': 4, '4': 1, '5': 12, '10': 'logoUploadBytes'},
  ],
};

const Org$json = const {
  '1': 'Org',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'logo_resource_id', '3': 3, '4': 1, '5': 9, '10': 'logoResourceId'},
    const {'1': 'contact', '3': 4, '4': 1, '5': 9, '10': 'contact'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'creator_id', '3': 6, '4': 1, '5': 9, '10': 'creatorId'},
    const {'1': 'projects', '3': 7, '4': 3, '5': 11, '6': '.v2.sys_account.services.Project', '10': 'projects'},
    const {'1': 'logo', '3': 8, '4': 1, '5': 12, '10': 'logo'},
  ],
};

const OrgRequest$json = const {
  '1': 'OrgRequest',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'logo_filepath', '3': 2, '4': 1, '5': 9, '10': 'logoFilepath'},
    const {'1': 'contact', '3': 3, '4': 1, '5': 9, '10': 'contact'},
    const {'1': 'creator_id', '3': 4, '4': 1, '5': 9, '10': 'creatorId'},
    const {'1': 'logo_upload_bytes', '3': 5, '4': 1, '5': 9, '10': 'logoUploadBytes'},
  ],
};

const OrgUpdateRequest$json = const {
  '1': 'OrgUpdateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'contact', '3': 3, '4': 1, '5': 9, '10': 'contact'},
    const {'1': 'logo_filepath', '3': 4, '4': 1, '5': 9, '10': 'logoFilepath'},
    const {'1': 'logo_upload_bytes', '3': 5, '4': 1, '5': 12, '10': 'logoUploadBytes'},
  ],
};

const IdRequest$json = const {
  '1': 'IdRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

const ListRequest$json = const {
  '1': 'ListRequest',
  '2': const [
    const {'1': 'per_page_entries', '3': 1, '4': 1, '5': 3, '10': 'perPageEntries'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 9, '10': 'orderBy'},
    const {'1': 'current_page_id', '3': 3, '4': 1, '5': 9, '10': 'currentPageId'},
    const {'1': 'is_descending', '3': 4, '4': 1, '5': 8, '10': 'isDescending'},
    const {'1': 'filters', '3': 5, '4': 1, '5': 12, '10': 'filters'},
    const {'1': 'account_id', '3': 6, '4': 1, '5': 9, '10': 'accountId'},
    const {'1': 'matcher', '3': 7, '4': 1, '5': 9, '10': 'matcher'},
  ],
};

const ListResponse$json = const {
  '1': 'ListResponse',
  '2': const [
    const {'1': 'projects', '3': 1, '4': 3, '5': 11, '6': '.v2.sys_account.services.Project', '10': 'projects'},
    const {'1': 'orgs', '3': 2, '4': 3, '5': 11, '6': '.v2.sys_account.services.Org', '10': 'orgs'},
    const {'1': 'next_page_id', '3': 3, '4': 1, '5': 9, '10': 'nextPageId'},
  ],
};

const NewUserRoles$json = const {
  '1': 'NewUserRoles',
  '2': const [
    const {'1': 'role', '3': 1, '4': 1, '5': 14, '6': '.v2.sys_account.services.Roles', '10': 'role'},
    const {'1': 'project_id', '3': 2, '4': 1, '5': 9, '10': 'projectId'},
    const {'1': 'org_id', '3': 3, '4': 1, '5': 9, '10': 'orgId'},
    const {'1': 'project_name', '3': 4, '4': 1, '5': 9, '10': 'projectName'},
  ],
};

const Permission$json = const {
  '1': 'Permission',
  '2': const [
    const {'1': 'resource', '3': 1, '4': 1, '5': 9, '10': 'resource'},
    const {'1': 'resource_kind', '3': 2, '4': 1, '5': 9, '10': 'resourceKind'},
    const {'1': 'activities', '3': 3, '4': 3, '5': 9, '10': 'activities'},
  ],
};

const Account$json = const {
  '1': 'Account',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'roles', '3': 4, '4': 3, '5': 11, '6': '.v2.sys_account.services.UserRoles', '10': 'roles'},
    const {'1': 'created_at', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'createdAt'},
    const {'1': 'updated_at', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'updatedAt'},
    const {'1': 'last_login', '3': 7, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'lastLogin'},
    const {'1': 'disabled', '3': 8, '4': 1, '5': 8, '10': 'disabled'},
    const {'1': 'verified', '3': 9, '4': 1, '5': 8, '10': 'verified'},
    const {'1': 'avatar_resource_id', '3': 10, '4': 1, '5': 9, '10': 'avatarResourceId'},
    const {'1': 'avatar', '3': 11, '4': 1, '5': 12, '10': 'avatar'},
  ],
};

const AccountNewRequest$json = const {
  '1': 'AccountNewRequest',
  '2': const [
    const {'1': 'email', '3': 1, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 2, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'roles', '3': 3, '4': 3, '5': 11, '6': '.v2.sys_account.services.UserRoles', '10': 'roles'},
    const {'1': 'avatar_filepath', '3': 4, '4': 1, '5': 9, '10': 'avatarFilepath'},
    const {'1': 'avatar_upload_bytes', '3': 5, '4': 1, '5': 9, '10': 'avatarUploadBytes'},
    const {'1': 'new_user_roles', '3': 6, '4': 3, '5': 11, '6': '.v2.sys_account.services.NewUserRoles', '10': 'newUserRoles'},
  ],
};

const AccountUpdateRequest$json = const {
  '1': 'AccountUpdateRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    const {'1': 'email', '3': 2, '4': 1, '5': 9, '10': 'email'},
    const {'1': 'password', '3': 3, '4': 1, '5': 9, '10': 'password'},
    const {'1': 'disabled', '3': 4, '4': 1, '5': 8, '10': 'disabled'},
    const {'1': 'verified', '3': 5, '4': 1, '5': 8, '10': 'verified'},
    const {'1': 'avatar_filepath', '3': 6, '4': 1, '5': 9, '10': 'avatarFilepath'},
    const {'1': 'avatar_upload_bytes', '3': 7, '4': 1, '5': 12, '10': 'avatarUploadBytes'},
  ],
};

const GetAccountRequest$json = const {
  '1': 'GetAccountRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
  ],
};

const ListAccountsRequest$json = const {
  '1': 'ListAccountsRequest',
  '2': const [
    const {'1': 'per_page_entries', '3': 1, '4': 1, '5': 3, '10': 'perPageEntries'},
    const {'1': 'order_by', '3': 2, '4': 1, '5': 9, '10': 'orderBy'},
    const {'1': 'current_page_id', '3': 3, '4': 1, '5': 9, '10': 'currentPageId'},
    const {'1': 'is_descending', '3': 4, '4': 1, '5': 8, '10': 'isDescending'},
    const {'1': 'filters', '3': 5, '4': 1, '5': 12, '10': 'filters'},
    const {'1': 'matcher', '3': 6, '4': 1, '5': 9, '10': 'matcher'},
  ],
};

const ListAccountsResponse$json = const {
  '1': 'ListAccountsResponse',
  '2': const [
    const {'1': 'accounts', '3': 1, '4': 3, '5': 11, '6': '.v2.sys_account.services.Account', '10': 'accounts'},
    const {'1': 'next_page_id', '3': 2, '4': 1, '5': 9, '10': 'nextPageId'},
  ],
};

const SearchAccountsRequest$json = const {
  '1': 'SearchAccountsRequest',
  '2': const [
    const {'1': 'query', '3': 1, '4': 1, '5': 12, '10': 'query'},
    const {'1': 'search_params', '3': 2, '4': 1, '5': 11, '6': '.v2.sys_account.services.ListAccountsRequest', '10': 'searchParams'},
  ],
};

const SearchAccountsResponse$json = const {
  '1': 'SearchAccountsResponse',
  '2': const [
    const {'1': 'search_response', '3': 1, '4': 1, '5': 11, '6': '.v2.sys_account.services.ListAccountsResponse', '10': 'searchResponse'},
  ],
};

const AssignAccountToRoleRequest$json = const {
  '1': 'AssignAccountToRoleRequest',
  '2': const [
    const {'1': 'assignee_account_id', '3': 1, '4': 1, '5': 9, '10': 'assigneeAccountId'},
    const {'1': 'assigned_account_id', '3': 2, '4': 1, '5': 9, '10': 'assignedAccountId'},
    const {'1': 'role', '3': 3, '4': 1, '5': 11, '6': '.v2.sys_account.services.UserRoles', '10': 'role'},
  ],
};

const DisableAccountRequest$json = const {
  '1': 'DisableAccountRequest',
  '2': const [
    const {'1': 'account_id', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
  ],
};

