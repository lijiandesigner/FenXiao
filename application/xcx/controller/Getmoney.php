<?php
namespace app\xcx\Controller;
use think\Controller;
use app\xcx\model\FoodModel;
use app\xcx\model\BrandModel;
use app\xcx\model\UserModel;
use app\xcx\model\VipDistributorModel;
use think\Db;
class Getmoney extends Controller
{	
	//获取用户佣金
	public function getmoney(){
		
		$arr=Array();
		if(input()){
			//通过openID来获取用户id;
			$id=UserModel::where(['openid'=>input('openid')])->value('id');
			$arr['method']=1;
			$re=VipDistributorModel::where(['id'=>$id])->value('FxMoney');
			//dump($re);
		}else{
			$arr['method']=0;
		}
		return json_encode($arr);
	}
	public function bili(){
		$arr=Array();
		$re=Db::name("platform_config")->select();
		$arr['data']=$re;
		return json_encode($arr);
	}
}