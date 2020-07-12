note
 description:"[
		OEML - REST API
 		This section will provide necessary information about the `CoinAPI OEML REST API` protocol. 
  		The version of the OpenAPI document: v1
 	    

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class TIME_IN_FORCE

feature -- Access

  value: detachable STRING_32
      -- enumerated value.
    note
            option: stable
    attribute
    end

feature -- Enum

 val_good_till_cancel: TIME_IN_FORCE
    once
      create Result
      Result.set_value ("GOOD_TILL_CANCEL")
    end

 val_good_till_time_exchange: TIME_IN_FORCE
    once
      create Result
      Result.set_value ("GOOD_TILL_TIME_EXCHANGE")
    end

 val_good_till_time_oms: TIME_IN_FORCE
    once
      create Result
      Result.set_value ("GOOD_TILL_TIME_OMS")
    end

 val_fill_or_kill: TIME_IN_FORCE
    once
      create Result
      Result.set_value ("FILL_OR_KILL")
    end

 val_immediate_or_cancel: TIME_IN_FORCE
    once
      create Result
      Result.set_value ("IMMEDIATE_OR_CANCEL")
    end


feature -- Element Change

  set_value (a_val: like value)
      -- Set `value' with `a_value'.
    do
      value := a_val
    ensure
      value_set: value = a_val
    end


end


