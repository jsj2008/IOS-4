///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMAddPropertyTemplateResult.h"

#pragma mark - API Object

@implementation DBTEAMAddPropertyTemplateResult

#pragma mark - Constructors

- (instancetype)initWithTemplateId:(NSString *)templateId {
  [DBStoneValidators stringValidator:@(1) maxLength:nil pattern:@"(/|ptid:).*"](templateId);

  self = [super init];
  if (self) {
    _templateId = templateId;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMAddPropertyTemplateResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMAddPropertyTemplateResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMAddPropertyTemplateResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMAddPropertyTemplateResultSerializer

+ (NSDictionary *)serialize:(DBTEAMAddPropertyTemplateResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"template_id"] = valueObj.templateId;

  return jsonDict;
}

+ (DBTEAMAddPropertyTemplateResult *)deserialize:(NSDictionary *)valueDict {
  NSString *templateId = valueDict[@"template_id"];

  return [[DBTEAMAddPropertyTemplateResult alloc] initWithTemplateId:templateId];
}

@end
