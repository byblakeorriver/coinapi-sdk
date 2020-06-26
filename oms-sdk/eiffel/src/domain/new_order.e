note
 description:"[
		OMS - REST API
 		Lorem2 Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. ###Lifecycle Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. ###Lifecycle 2 Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackhama. 
  		The version of the OpenAPI document: v1
 	    

  	NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).

 		 Do not edit the class manually.
 	]"
	date: "$Date$"
	revision: "$Revision$"
	EIS:"Eiffel openapi generator", "src=https://openapi-generator.tech", "protocol=uri"
class NEW_ORDER 

inherit

  ANY
      redefine
          out 
      end


feature --Access

    exchange_id: detachable STRING_32 
      -- Exchange name
    client_order_id: detachable STRING_32 
      -- Client unique identifier for the trade.
    symbol_exchange: detachable STRING_32 
      -- The symbol of the order.
    symbol_coinapi: detachable STRING_32 
      -- The CoinAPI symbol of the order.
    amount_order: REAL_32 
      -- Quoted decimal amount to purchase.
    price: REAL_32 
      -- Quoted decimal amount to spend per unit.
    side: detachable STRING_32 
      -- Buy or Sell
    order_type: detachable STRING_32 
      -- The order type.
    time_in_force: detachable TIME_IN_FORCE 
      
    expire_time: detachable DATE 
      -- Required for orders with time_in_force = GOOD_TILL_TIME_EXCHANGE, GOOD_TILL_TIME_OMS
    exec_inst: detachable LIST [STRING_32] 
      -- TODO: description exec inst  | Parameter | Description | |-----------|--------| | `MAKER_OR_CANCEL` | Rests on the continuous order book at a specified price. If any quantity can be filled immediately, the entire order is canceled. | ##### Exec inst options  | Exchange | MAKER_OR_CANCEL | | --- | --- | | BINANCE | X | | BITFINEX | X | | BITMEX | X | | BLOCKCHAINEXCHANGE | X | | BITSTAMP |  | | COINBASE | X | | GEMINI | X | | KRAKEN | X | | POLONIEX | X | | HITBTC |  | | KRAKENFTS | X | 

feature -- Change Element  
 
    set_exchange_id (a_name: like exchange_id)
        -- Set 'exchange_id' with 'a_name'.
      do
        exchange_id := a_name
      ensure
        exchange_id_set: exchange_id = a_name		
      end

    set_client_order_id (a_name: like client_order_id)
        -- Set 'client_order_id' with 'a_name'.
      do
        client_order_id := a_name
      ensure
        client_order_id_set: client_order_id = a_name		
      end

    set_symbol_exchange (a_name: like symbol_exchange)
        -- Set 'symbol_exchange' with 'a_name'.
      do
        symbol_exchange := a_name
      ensure
        symbol_exchange_set: symbol_exchange = a_name		
      end

    set_symbol_coinapi (a_name: like symbol_coinapi)
        -- Set 'symbol_coinapi' with 'a_name'.
      do
        symbol_coinapi := a_name
      ensure
        symbol_coinapi_set: symbol_coinapi = a_name		
      end

    set_amount_order (a_name: like amount_order)
        -- Set 'amount_order' with 'a_name'.
      do
        amount_order := a_name
      ensure
        amount_order_set: amount_order = a_name		
      end

    set_price (a_name: like price)
        -- Set 'price' with 'a_name'.
      do
        price := a_name
      ensure
        price_set: price = a_name		
      end

    set_side (a_name: like side)
        -- Set 'side' with 'a_name'.
      do
        side := a_name
      ensure
        side_set: side = a_name		
      end

    set_order_type (a_name: like order_type)
        -- Set 'order_type' with 'a_name'.
      do
        order_type := a_name
      ensure
        order_type_set: order_type = a_name		
      end

    set_time_in_force (a_name: like time_in_force)
        -- Set 'time_in_force' with 'a_name'.
      do
        time_in_force := a_name
      ensure
        time_in_force_set: time_in_force = a_name		
      end

    set_expire_time (a_name: like expire_time)
        -- Set 'expire_time' with 'a_name'.
      do
        expire_time := a_name
      ensure
        expire_time_set: expire_time = a_name		
      end

    set_exec_inst (a_name: like exec_inst)
        -- Set 'exec_inst' with 'a_name'.
      do
        exec_inst := a_name
      ensure
        exec_inst_set: exec_inst = a_name		
      end


 feature -- Status Report

    out: STRING
          -- <Precursor>
      do
        create Result.make_empty
        Result.append("%Nclass NEW_ORDER%N")
        if attached exchange_id as l_exchange_id then
          Result.append ("%Nexchange_id:")
          Result.append (l_exchange_id.out)
          Result.append ("%N")    
        end  
        if attached client_order_id as l_client_order_id then
          Result.append ("%Nclient_order_id:")
          Result.append (l_client_order_id.out)
          Result.append ("%N")    
        end  
        if attached symbol_exchange as l_symbol_exchange then
          Result.append ("%Nsymbol_exchange:")
          Result.append (l_symbol_exchange.out)
          Result.append ("%N")    
        end  
        if attached symbol_coinapi as l_symbol_coinapi then
          Result.append ("%Nsymbol_coinapi:")
          Result.append (l_symbol_coinapi.out)
          Result.append ("%N")    
        end  
        if attached amount_order as l_amount_order then
          Result.append ("%Namount_order:")
          Result.append (l_amount_order.out)
          Result.append ("%N")    
        end  
        if attached price as l_price then
          Result.append ("%Nprice:")
          Result.append (l_price.out)
          Result.append ("%N")    
        end  
        if attached side as l_side then
          Result.append ("%Nside:")
          Result.append (l_side.out)
          Result.append ("%N")    
        end  
        if attached order_type as l_order_type then
          Result.append ("%Norder_type:")
          Result.append (l_order_type.out)
          Result.append ("%N")    
        end  
        if attached time_in_force as l_time_in_force then
          Result.append ("%Ntime_in_force:")
          Result.append (l_time_in_force.out)
          Result.append ("%N")    
        end  
        if attached expire_time as l_expire_time then
          Result.append ("%Nexpire_time:")
          Result.append (l_expire_time.out)
          Result.append ("%N")    
        end  
        if attached exec_inst as l_exec_inst then
          across l_exec_inst as ic loop
            Result.append ("%N exec_inst:")
            Result.append (ic.item.out)
            Result.append ("%N")
          end
        end 
      end
end


