<?php
namespace app\admin\controller;
use think\Controller;

class openid extends Controller
{	
	 //获取openid
	 public function openid(){
	 	$appid="wx0f7e1cbd3b8a65d4";
	 	$secret="a43ceda010f2e01ec601a3ed0240637e";
	 	$resCode=$_GET['code'];
	 	$url="https://api.weixin.qq.com/sns/jscode2session?appid=$appid&secret=$secret&js_code=$resCode&grant_type=authorization_code";
	 	$weixin=file_get_contents("https://api.weixin.qq.com/sns/jscode2session?appid=$appid&secret=$secret&js_code=$resCode&grant_type=authorization_code");
 		//通过code换取网页授权access_token
	    $jsondecode = json_decode($weixin); //对JSON格式的字符串进行编码
		$array = get_object_vars($jsondecode);//转换成数组
		$openid = $array['openid'];//输出openid

		//数据库 查询openid 看看是否存在
		$ok=db('user')->where('openid',$openid)->find();
		
		//用户存在	
		if($ok){
			array_push($array,"true");
		}
		else{
			array_push($array,"true");
			$data['openid']=$openid;
            db('user')->insert($data);
		}
		echo json_encode($array);
	 }
}
?>