if @coupon
	node(:coupon) { |coupon| partial('api/v1/products/coupon', :object => @coupon)}
end

if @vouchers.length > 0
	node(:vouchers) { Voucher.to_json(@vouchers) }
end

node(:shipping_cost) { @shipping_cost }
node(:total) { @total }
node(:discount) { @discount }