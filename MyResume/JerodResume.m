//
//  JerodResume.m
//  Jerod
//
//  Created by Jerod on 16/11/1.
//  Copyright © 2016年 Jerod. All rights reserved.
//

#import "JerodResume.h"

@implementation DataModel
static DataModel* dataIns = nil;
+ (DataModel*)sharedInstance
{
    if (dataIns) {
        return dataIns;
    }
    dataIns = [[DataModel alloc] init];
    return dataIns;
}
@end

@implementation JerodResume
- (instancetype)init
{
    self = [super init];
    
    _Jerod.myDescrip    = [[NSMutableArray alloc] init];
    _Jerod.technologies = [[NSMutableArray alloc] init];
    [_Jerod.myDescrip retain];
    [_Jerod.technologies retain];
    
    if (self) {
        _Jerod = [DataModel sharedInstance];
    }
    return self;
}
- (void)dealloc
{
    if (_Jerod.myDescrip) {
        [_Jerod.myDescrip release];
        _Jerod.myDescrip = nil;
    }
    if (_Jerod.technologies) {
        [_Jerod.technologies release];
        _Jerod.technologies = nil;
    }
    [super dealloc];
}

/**********************  简 介  **********************/
- (void)myIntroduction
{
    _Jerod.name   = @"吉久东";
    _Jerod.star   = @"2年iOS开发 APP与SDK客户端独立开发经验";
    _Jerod.age    = @"24岁";
    _Jerod.sex    = @"男";
    _Jerod.degree = @"本科";
    _Jerod.iPhone = @"13764182923";
    _Jerod.email  = @"jjd510@163.com";
}

/*******************  期 望 工 作  *******************/
- (void)myExpectWork
{
    _Jerod.expectJob    = @"iOS开发";
    _Jerod.expectCity   = @"上海";
    _Jerod.expectSalary = @"15k/monthly";
}

/*******************  工 作 经 历  *******************/
- (void)workExperience
{
    //工作一
    _Jerod.jobYH.company     = @"上海银河数娱网络科技有限公司";
    _Jerod.jobYH.workingTime = @"2015.11 - 2016.11";
    _Jerod.jobYH.position    = @"iOS SDK开发工程师";
    _Jerod.jobYH.jobContent  = @"1.渠道对接； 2.恒象、银河平台客户端开发； 3.负责平台的登录与支付功能； 4.功能需求开发；自动打包维护。";
    //工作二
    _Jerod.jobAW.company     = @"苏州艾薇信息科技有限公司";
    _Jerod.jobAW.workingTime = @"2015.1 - 2015.11";
    _Jerod.jobAW.position    = @"ios开发工程师";
    _Jerod.jobAW.jobContent  = @"1.负责移动平台IOS客户端的应用开发； 2.按需求文档完成产品模块的代码。";
    //工作三
    _Jerod.jobBD.company     = @"苏州北斗夹具装备有限公司";
    _Jerod.jobBD.workingTime = @"2014.6 - 2015.12";
    _Jerod.jobBD.position    = @"电气工程师";
    _Jerod.jobBD.jobContent  = @"1.机器人布线、接线以及运动轨迹调整； 2.PLC控制夹具编程； 3.PCB电路板焊制。";
}

/*******************  教 育 经 历  *******************/
- (void)educationExperience
{
    _Jerod.school         = @"江苏大学";
    _Jerod.professional   = @"电气工程及其自动化";
    _Jerod.diploma        = @"本科";
    _Jerod.graduationTime = @"2014.6";
}

/*******************  项 目 经 验  *******************/
- (void)projectExperience
{
    //项目一
    _Jerod.wsxsm.name        = @"无双小师妹";
    _Jerod.wsxsm.responsibes = @"1.负责登录、IAP内购功能； 2.恒象、银河平台，越狱渠道接入与调试； 3.解决iOS相关bug； 4.开发U3D项目组需求。";
    _Jerod.wsxsm.time        = @"2015.12 - 2016.11";
    _Jerod.wsxsm.description = @"原创IP手游，进过appstore付费手游前50。";
    _Jerod.wsxsm.link        = @"https://itunes.apple.com/cn/app/wu-shuang-xiao-shi-mei-deng/id1095219324?mt=8";
    //项目二
    _Jerod.dragon.name        = @"巨龙城堡";
    _Jerod.dragon.responsibes = @"1.海外渠道Facebook对接； 2.SDK登录功能； 3.内购； 4.国内渠道对接、提审";
    _Jerod.dragon.time        = @"2015.12 - 2016.11";
    _Jerod.dragon.description = @"香港海外渠道,原创IP。";
    //项目三
    _Jerod.mryx.name          = @"每日一笑";
    _Jerod.mryx.responsibes   = @"MVC、通知、代理、单例；使用xib、静态storyboard、json解析等；白天和夜间模式；使用了一些常见的第三方开源库。";
    _Jerod.dragon.time        = @"2015.10 - 2015.12";
    _Jerod.dragon.description = @"天天happy好心情。";
    //项目四
    _Jerod.readleaf.name        = @"ReadLeaf";
    _Jerod.readleaf.responsibes = @"独立开发,负责从架构,布局到所有的实现等等..";
    _Jerod.readleaf.time        = @"2015.04 - 2015.05";
    _Jerod.readleaf.description = @"每日带给您不同的声音和文章,在声音和文章中感受生活.简约加小清新的设计风格,给您每日带来好心情.";
    _Jerod.readleaf.link        = @"https://itunes.apple.com/cn/app/yue-ling/id1001015513?mt=8";
}

/*******************  自 我 描 述  *******************/
- (void)myDescription
{
    [_Jerod.myDescrip addObject:@"自学能力强，能够较快学习接受新事物、新技术；"];
    [_Jerod.myDescrip addObject:@"近2年ios开发经验，1年app开发，1年SDK开发，独立的客户端开发经验；"];
    [_Jerod.myDescrip addObject:@"工作认真负责，追求完美；"];
    [_Jerod.myDescrip addObject:@"能够承担较大的工作压力（但是拒绝长期大压力工作，毕竟身体也很重要）；"];
}

/*******************  掌 握 技 能  *******************/
- (void)myTechnologies
{
    [_Jerod.technologies addObject:@"Objective-C与常用设计模式MVC、单例、代理等，了解swift；"];
    [_Jerod.technologies addObject:@"MRC、ARC机制编程，内存管理；"];
    [_Jerod.technologies addObject:@"SDK开发流程、架构与Framework开发技术"];
    [_Jerod.technologies addObject:@"UI，多线程，网络编程，数据结构；"];
    [_Jerod.technologies addObject:@"AppStore上架流程与规则；"];
    [_Jerod.technologies addObject:@"crash分析、解决；"];
    [_Jerod.technologies addObject:@"制作插件；"];
    [_Jerod.technologies addObject:@"IAP内购；"];
    [_Jerod.technologies addObject:@"ipa重签名；"];
    [_Jerod.technologies addObject:@"跨平台；"];
    [_Jerod.technologies addObject:@"......"];
}

@end
