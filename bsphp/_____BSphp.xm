#import <UIKit/UIKit.h>
#import "substrate.h"
NSDictionary *dict3 = nil;//
%hook NSString
- (BOOL)containsString:(NSString *)str
{
if ([str length]==36) {//
return YES;
}

return %orig;
}
%end

%hook NSJSONSerialization

+ (id)JSONObjectWithData:(NSData *)data options:(NSJSONReadingOptions)opt error:(NSError **)error
{
NSString * str  =[[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
NSString *YY =[NSString stringWithFormat:@"%@",str];
if([YY containsString:@"\"response\":"]
){
NSDictionary *dict = %orig(data,opt,error);
NSMutableDictionary *datalist= dict.mutableCopy;
NSMutableDictionary *datalist1= [datalist valueForKey:@"response"];
NSMutableDictionary *dataArry = [datalist1 valueForKey:@"data"];
NSString *YY2 =[NSString stringWithFormat:@"%@",dataArry];
if([YY2 containsString:@"不存在"]
){
[datalist1 setValue: @"01|1081|58A65867-41E9-4152-8D23-1FD8FB71ED56|验证数据|官网:www.apibug.com|||||" forKey:@"data"];
dict3 = dict;
return dict;
}
return %orig;
}
if([YY containsString:@"-1000"]
){
return dict3;
}
return %orig;
}
%end
