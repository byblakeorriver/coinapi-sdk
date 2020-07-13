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
class EXECUTION_REPORT_ALL_OF 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    client_order_id_format_exchange: detachable STRING_32 
      -- Hash client id
    exchange_order_id: detachable STRING_32 
      -- Exchange order id
    amount_open: REAL_32 
      -- Amount open
    amount_filled: REAL_32 
      -- Amount filled
    status: detachable ORD_STATUS 
      
    time_order: detachable LIST [LIST [STRING_32]] 
      -- History of order status changes
    error_message: detachable STRING_32 
      -- Error message

feature -- Change Element  
 
    set_client_order_id_format_exchange (a_name: like client_order_id_format_exchange)
        -- Set 'client_order_id_format_exchange' with 'a_name'.
      do
        client_order_id_format_exchange := a_name
      ensure
        client_order_id_format_exchange_set: client_order_id_format_exchange = a_name		
      end

    set_exchange_order_id (a_name: like exchange_order_id)
        -- Set 'exchange_order_id' with 'a_name'.
      do
        exchange_order_id := a_name
      ensure
        exchange_order_id_set: exchange_order_id = a_name		
      end

    set_amount_open (a_name: like amount_open)
        -- Set 'amount_open' with 'a_name'.
      do
        amount_open := a_name
      ensure
        amount_open_set: amount_open = a_name		
      end

    set_amount_filled (a_name: like amount_filled)
        -- Set 'amount_filled' with 'a_name'.
      do
        amount_filled := a_name
      ensure
        amount_filled_set: amount_filled = a_name		
      end

    set_status (a_name: like status)
        -- Set 'status' with 'a_name'.
      do
        status := a_name
      ensure
        status_set: status = a_name		
      end

    set_time_order (a_name: like time_order)
        -- Set 'time_order' with 'a_name'.
      do
        time_order := a_name
      ensure
        time_order_set: time_order = a_name		
      end

    set_error_message (a_name: like error_message)
        -- Set 'error_message' with 'a_name'.
      do
        error_message := a_name
      ensure
        error_message_set: error_message = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass EXECUTION_REPORT_ALL_OF%N")
        if attached client_order_id_format_exchange as l_client_order_id_format_exchange then
          Result.append ("%Nclient_order_id_format_exchange:")
          Result.append (l_client_order_id_format_exchange.out)
          Result.append ("%N")    
        end  
        if attached exchange_order_id as l_exchange_order_id then
          Result.append ("%Nexchange_order_id:")
          Result.append (l_exchange_order_id.out)
          Result.append ("%N")    
        end  
        if attached amount_open as l_amount_open then
          Result.append ("%Namount_open:")
          Result.append (l_amount_open.out)
          Result.append ("%N")    
        end  
        if attached amount_filled as l_amount_filled then
          Result.append ("%Namount_filled:")
          Result.append (l_amount_filled.out)
          Result.append ("%N")    
        end  
        if attached status as l_status then
          Result.append ("%Nstatus:")
          Result.append (l_status.out)
          Result.append ("%N")    
        end  
        if attached time_order as l_time_order then
          across l_time_order as ic loop
            Result.append ("%N time_order:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
        if attached error_message as l_error_message then
          Result.append ("%Nerror_message:")
          Result.append (l_error_message.out)
          Result.append ("%N")    
        end  
      end
end


