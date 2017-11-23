<?php
namespace app\xcx\Controller;
use think\Controller;
use think\Db;
use app\xcx\model\UserModel;
class Tixian extends Controller
{	
   	public function shenqing()
    {	
    	$arr=Array();
    	if(input()){
    		$id=UserModel::where(['openid'=>input('openid')])->value('id');//根据openid查出用户id
    		$re=Db::name('vip_withdrawals_apply')->insert(['Uid'=>$id,'MoneyNum'=>input('jine'),'WithDrawTime'=>date('Y-m-d H:i:s'),'HandleTime'=>'00','Handler'=>'暂无','State'=>1,'Description'=>'暂无']);
    		if($re){
    			$arr['add']=1;
    		}else{
    			$arr['add']=0;
    		}
    	}else{
    		$arr['method']=0;
    	}
    	return json_encode($arr);
    }
}