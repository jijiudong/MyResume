//
//  JerodResume.h
//  Jerod
//
//  Created by Jerod on 16/11/1.
//  Copyright © 2016年 Jerod. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Job : NSObject
@property (nonatomic, copy) NSString * company;
@property (nonatomic, copy) NSString * workingTime;
@property (nonatomic, copy) NSString * position;    
@property (nonatomic, copy) NSString * jobContent;
@end

@interface Project : NSObject
@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * responsibes;
@property (nonatomic, copy) NSString * time;
@property (nonatomic, copy) NSString * description;
@property (nonatomic, copy) NSString * link;
@end

typedef NS_ENUM(NSUInteger, SEX) {
    Girl   = 0,
    Boy,
    LadyBoy
};
@interface DataModel : NSObject
//简介
@property (nonatomic, copy) NSString * name;
@property (nonatomic, copy) NSString * star;
@property (nonatomic, copy) NSString * age;
@property (nonatomic, copy) NSString * sex;
@property (nonatomic, copy) NSString * degree;
@property (nonatomic, copy) NSString * iPhone;
@property (nonatomic, copy) NSString * email;
//工作经历
@property (nonatomic, copy) Job * jobYH;
@property (nonatomic, copy) Job * jobAW;
@property (nonatomic, copy) Job * jobBD;
//教育经历
@property (nonatomic, copy) NSString * school;
@property (nonatomic, copy) NSString * professional;
@property (nonatomic, copy) NSString * diploma;
@property (nonatomic, copy) NSString * graduationTime;
//项目经验
@property (nonatomic, copy) Project  * wsxsm;
@property (nonatomic, copy) Project  * dragon;
@property (nonatomic, copy) Project  * mryx;
@property (nonatomic, copy) Project  * readleaf;
//自我描述
@property (nonatomic, copy) NSMutableArray * myDescrip;
//期望工作
@property (nonatomic, copy) NSString * expectJob;
@property (nonatomic, copy) NSString * expectCity;
@property (nonatomic, copy) NSString * expectSalary;
//掌握技能
@property (nonatomic, copy) NSMutableArray * technologies;

+ (DataModel*)sharedInstance;
@end

@interface JerodResume : NSObject
@property (nonatomic, copy) DataModel * Jerod;
@end
