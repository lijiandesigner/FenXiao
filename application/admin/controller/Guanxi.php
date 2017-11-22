<?php
namespace app\admin\Controller;
use think\Controller;
use think\Session;
use think\Db;
class Guanxi extends Controller
{	
	
	public function index(){
		$arr=Array();
		//$arr['ce']="ss";
		if(input()){
			$arr['method']=1;
			
			$ar=Db::name('user')->where(['id'=>input('id')])->select();
			//如果存在该用户
			if($ar){
				//返回他所有的上、下级
				$PID=$ar[0]['PID'];
				$ID=$ar[0]['id'];
				$PID==0?$arr['jibie']=1:$arr['jibie']=0;

				for($a=0;$a<3;$a++){
					if($PID==0){
						
						break;
					}else{
						$ar1=Db::name("vip_user")->where(['ID'=>$PID])->select();
						$PID=$ar1[0]['PID'];

						$arr['lev'.$a]=$ar1;
						if($PID==0){
							break;
						}
					}
				}
				//返回他所有的下级
				for($a=0;$a<3;$a++){
				
						$ar1=Db::name("user")->where(['PID'=>$ID])->select();
						if($ar1){
							$ID=$ar1[0]['id'];
							$arr['xia'.$a]=$ar1;
						}else{
							$arr['xia']=0;
							break;
						}
				}
			}else{
				$arr['user']=0;
			}
		}else{
			$arr['method']=0;
		}

		return json_encode($arr);
	}

}