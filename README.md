# RSGameVlionAdSDK
瑞狮小游戏SDK

1、 SDK接入

 1.1 、SDK包的导入方式：
 
       GitHub链接：https://github.com/yang152/RSGameVlionAdSDK.git，可以直接在这里下载SDK；

       pod接入方式： pod ‘RSGameVlionAdSDK’

1.2、 info.plist配置 在info.plist配置权限：

      App Transport Security Settings

      Allow Arbitrary Loads 设置为 YES

2 、SDK接入流程

2.1 、接入SDK前需向瑞狮客服人员申请一个mediaId，申请完了后，下面是具体接入代码，把刚刚申请的id传进去

 1、 首先引入下面头文件

       #import <RSGameVlionAd/RSGameVlionAd.h>

 2、下面是调用SDK代码

      RSGameListViewController *vc = [[RSGameListViewController alloc] initWithMediaId:@"你申请的id"];

      [self.navigationController pushViewController:vc animated:YES];

 3、如果是要作为tabbar的根页面，需要加一个导航控制器，因为SDK内部有push操作，然后把导航控制器作为根控制器，示例如下：

       RSGameListViewController *vc = [[RSGameListViewController alloc] initWithMediaId:@"你申请的id"];

       UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:vc];
