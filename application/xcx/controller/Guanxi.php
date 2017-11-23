<?php
namespace app\xcx\Controller;
use think\Controller;
use app\xcx\model\UserModel;
use think\Db;
class Guanxi extends Controller
{	
	public function xiaji(){
		if(input()){
		$arr['method']=1;
			//通过openID来获取用户id;
			$id=UserModel::where(['openid'=>input('openid')])->value('id');
			$ar=Db::name('user')->where(['id'=>$id])->select();
			//如果存在该用户
			if($ar){
				$ID=$ar[0]['id'];
				//返回他所有的下级
				for($a=0;$a<3;$a++){
						$ar1=Db::name("user")->where(['PID'=>$ID])->select();
						if($ar1){
							$ID=$ar1[0]['id'];
							$arr['xia'.$a]=$ar1;
						}else{
							$arr['xia'.$a]=0;
							break;
						}
				}
			}else{
				//用户不存在
				$arr['user']=0;
			}
		}else{
			//参数为空
			$arr['method']=0;
		}

		return json_encode($arr);
	}
	//推荐人
	public function tuijian(){
		//通过openID来获取用户上级id;
		//在此也可以获取用户级别
		$id=UserModel::where(['openid'=>input('openid')])->value('PID');
		if($id==0){
			//该用户为以及分销商
			return '0';
		}else{
			$name=UserModel::where(['id'=>$id])->value('user_name');
			return $name;
		}
		

	}
}
