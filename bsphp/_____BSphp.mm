#line 1 "/Users/momo/Desktop/ApibugTheos/BsphpCrack/bsphp/_____BSphp.xm"



#import <UIKit/UIKit.h>
#include <CydiaSubstrate.h>

#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class NSString; @class NSJSONSerialization; 
static BOOL (*_logos_orig$_ungrouped$NSString$containsString$)(_LOGOS_SELF_TYPE_NORMAL NSString* _LOGOS_SELF_CONST, SEL, NSString *); static BOOL _logos_method$_ungrouped$NSString$containsString$(_LOGOS_SELF_TYPE_NORMAL NSString* _LOGOS_SELF_CONST, SEL, NSString *); static id (*_logos_meta_orig$_ungrouped$NSJSONSerialization$JSONObjectWithData$options$error$)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSData *, NSJSONReadingOptions, NSError **); static id _logos_meta_method$_ungrouped$NSJSONSerialization$JSONObjectWithData$options$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL, NSData *, NSJSONReadingOptions, NSError **); 

#line 6 "/Users/mac10157/Desktop/出售的破解源码/高级工程师BSphp/高级工程师BSphp/_____BSphp.xm"
NSDictionary *dict3 = nil;


static BOOL _logos_method$_ungrouped$NSString$containsString$(_LOGOS_SELF_TYPE_NORMAL NSString* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSString * str) {
if ([str length]==36) {
return YES;
}

return _logos_orig$_ungrouped$NSString$containsString$(self, _cmd, str);
}





static id _logos_meta_method$_ungrouped$NSJSONSerialization$JSONObjectWithData$options$error$(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, NSData * data, NSJSONReadingOptions opt, NSError ** error) {
NSString * str  =[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
NSString *YY =[NSString stringWithFormat:@"%@",str];
if([YY containsString:@"\"response\":"]
){
NSDictionary *dict = _logos_meta_orig$_ungrouped$NSJSONSerialization$JSONObjectWithData$options$error$(self, _cmd, data,opt,error);
NSMutableDictionary *datalist= dict.mutableCopy;
NSMutableDictionary *datalist1= [datalist valueForKey:@"response"];
NSMutableDictionary *dataArry = [datalist1 valueForKey:@"data"];
NSString *YY2 =[NSString stringWithFormat:@"%@",dataArry];
if([YY2 containsString:@"不存在"]
){
[datalist1 setValue: @"01|1081|58A65867-41E9-4152-8D23-1FD8FB71ED56|验证数据|官网:www.apibug.com" forKey:@"data"];
dict3 = dict;
return dict;
}
return _logos_meta_orig$_ungrouped$NSJSONSerialization$JSONObjectWithData$options$error$(self, _cmd, data, opt, error);
}
if([YY containsString:@"-1000"]
){
return dict3;
}
return _logos_meta_orig$_ungrouped$NSJSONSerialization$JSONObjectWithData$options$error$(self, _cmd, data, opt, error);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$NSString = objc_getClass("NSString"); { MSHookMessageEx(_logos_class$_ungrouped$NSString, @selector(containsString:), (IMP)&_logos_method$_ungrouped$NSString$containsString$, (IMP*)&_logos_orig$_ungrouped$NSString$containsString$);}Class _logos_class$_ungrouped$NSJSONSerialization = objc_getClass("NSJSONSerialization"); Class _logos_metaclass$_ungrouped$NSJSONSerialization = object_getClass(_logos_class$_ungrouped$NSJSONSerialization); { MSHookMessageEx(_logos_metaclass$_ungrouped$NSJSONSerialization, @selector(JSONObjectWithData:options:error:), (IMP)&_logos_meta_method$_ungrouped$NSJSONSerialization$JSONObjectWithData$options$error$, (IMP*)&_logos_meta_orig$_ungrouped$NSJSONSerialization$JSONObjectWithData$options$error$);}} }
#line 46 "/Users/momo/Desktop/ApibugTheos/BsphpCrack/bsphp/_____BSphp.xm"
