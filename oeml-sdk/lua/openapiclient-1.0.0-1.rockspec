package = "openapiclient"
version = "1.0.0-1"
source = {
	url = "https://github.com/GIT_USER_ID/GIT_REPO_ID.git"
}

description = {
	summary = "API client genreated by OpenAPI Generator",
	detailed = [[
This section will provide necessary information about the `CoinAPI OEML REST API` protocol. ]],
	homepage = "https://openapi-generator.tech",
	license = "Unlicense",
	maintainer = "OpenAPI Generator contributors",
}

dependencies = {
	"lua >= 5.2",
	"http",
	"dkjson",
	"basexx"
}

build = {
	type = "builtin",
	modules = {
		["openapiclient.api.balances_api"] = "openapiclient/api/balances_api.lua";
		["openapiclient.api.orders_api"] = "openapiclient/api/orders_api.lua";
		["openapiclient.api.positions_api"] = "openapiclient/api/positions_api.lua";
		["openapiclient.model.balance"] = "openapiclient/model/balance.lua";
		["openapiclient.model.balance_data"] = "openapiclient/model/balance_data.lua";
		["openapiclient.model.create_order_validation_error"] = "openapiclient/model/create_order_validation_error.lua";
		["openapiclient.model.execution_report"] = "openapiclient/model/execution_report.lua";
		["openapiclient.model.execution_report_all_of"] = "openapiclient/model/execution_report_all_of.lua";
		["openapiclient.model.message"] = "openapiclient/model/message.lua";
		["openapiclient.model.new_order_single"] = "openapiclient/model/new_order_single.lua";
		["openapiclient.model.ord_side"] = "openapiclient/model/ord_side.lua";
		["openapiclient.model.ord_status"] = "openapiclient/model/ord_status.lua";
		["openapiclient.model.ord_type"] = "openapiclient/model/ord_type.lua";
		["openapiclient.model.order_cancel_all_request"] = "openapiclient/model/order_cancel_all_request.lua";
		["openapiclient.model.order_cancel_single_request"] = "openapiclient/model/order_cancel_single_request.lua";
		["openapiclient.model.position"] = "openapiclient/model/position.lua";
		["openapiclient.model.position_data"] = "openapiclient/model/position_data.lua";
		["openapiclient.model.severity"] = "openapiclient/model/severity.lua";
		["openapiclient.model.time_in_force"] = "openapiclient/model/time_in_force.lua";
	}
}
