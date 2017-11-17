<?php
namespace app\admin\model;
use think\Model;
class DistrbutionPlaymoneyLog extends Model{
    //分销费用打款记录
	protected $table='distrbution_playmoney_log';

}
/*
外键表中 car belongsTo('主键表模型','外键表外键列名','主键表主键列名')
主键表中 level hasMany('外键表模型','外键表外键列名','主键表主键列名')
 */
?>