///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGGetSharedLinkMetadataArg.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGGetSharedLinkMetadataArg

#pragma mark - Constructors

- (instancetype)initWithUrl:(NSString *)url path:(NSString *)path linkPassword:(NSString *)linkPassword {
  [DBStoneValidators
   nullableValidator:[DBStoneValidators stringValidator:nil maxLength:nil pattern:@"/(.|[\\r\\n])*"]](path);

  self = [super init];
  if (self) {
    _url = url;
    _path = path;
    _linkPassword = linkPassword;
  }
  return self;
}

- (instancetype)initWithUrl:(NSString *)url {
  return [self initWithUrl:url path:nil linkPassword:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGGetSharedLinkMetadataArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGGetSharedLinkMetadataArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGGetSharedLinkMetadataArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGGetSharedLinkMetadataArgSerializer

+ (NSDictionary *)serialize:(DBSHARINGGetSharedLinkMetadataArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"url"] = valueObj.url;
  if (valueObj.path) {
    jsonDict[@"path"] = valueObj.path;
  }
  if (valueObj.linkPassword) {
    jsonDict[@"link_password"] = valueObj.linkPassword;
  }

  return jsonDict;
}

+ (DBSHARINGGetSharedLinkMetadataArg *)deserialize:(NSDictionary *)valueDict {
  NSString *url = valueDict[@"url"];
  NSString *path = valueDict[@"path"] ?: nil;
  NSString *linkPassword = valueDict[@"link_password"] ?: nil;

  return [[DBSHARINGGetSharedLinkMetadataArg alloc] initWithUrl:url path:path linkPassword:linkPassword];
}

@end