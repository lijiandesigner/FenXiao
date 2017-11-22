<?php
namespace app\admin\Controller;
use think\Controller;
use think\Db;
class Vipmess extends Controller
{
	public function index(){
		$arr=Array();
		$re=Db::name("user")->select();
		if($re){
			$arr['data']=$re;
		}else{
			$arr['shuju']=0;
		}
		return json_encode($arr);
	}
}