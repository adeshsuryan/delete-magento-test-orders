set @increment_id='200000111';
  select @order_id:=entity_id from prefix_sales_order_entity where increment_id=@increment_id;
  delete from prefix_sales_order_entity where entity_id=@order_id or parent_id=@order_id;
  delete from prefix_sales_order where increment_id=@increment_id;
