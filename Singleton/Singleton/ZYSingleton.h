
#define ZYSingleH(name) +(instancetype)share##name;

#if __has_feature(objc_arc)
//条件满足 ARC
#define ZYSingleM(name) static id _instance;\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [super allocWithZone:zone];\
});\
\
return _instance;\
}\
\
+(instancetype)share##name\
{\
return [[self alloc]init];\
}\
\
-(id)copyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
\
-(id)mutableCopyWithZone:(NSZone *)zone\
{\
return _instance;\
}

#else
//MRC
#define ZYSingleM(name) static id _instance;\
+(instancetype)allocWithZone:(struct _NSZone *)zone\
{\
static dispatch_once_t onceToken;\
dispatch_once(&onceToken, ^{\
_instance = [super allocWithZone:zone];\
});\
\
return _instance;\
}\
\
+(instancetype)share##name\
{\
return [[self alloc]init];\
}\
\
-(id)copyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
\
-(id)mutableCopyWithZone:(NSZone *)zone\
{\
return _instance;\
}\
-(oneway void)release\
{\
}\
\
-(instancetype)retain\
{\
return _instance;\
}\
\
-(NSUInteger)retainCount\
{\
return MAXFLOAT;\
}
#endif
