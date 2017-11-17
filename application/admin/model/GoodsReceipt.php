<?php
namespace app\admin\model;
use think\Model;
class GoodsReceipt extends Model{
    //收货信息表
	protected $table='goods_receipt';
}
/*
澶栭敭琛ㄤ腑 car belongsTo('涓婚敭琛ㄦā鍨�','澶栭敭琛ㄥ閿垪鍚�','涓婚敭琛ㄤ富閿垪鍚�')
涓婚敭琛ㄤ腑 level hasMany('澶栭敭琛ㄦā鍨�','澶栭敭琛ㄥ閿垪鍚�','涓婚敭琛ㄤ富閿垪鍚�')
 */
?>