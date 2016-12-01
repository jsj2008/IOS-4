///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMMemberAddArg.h"
#import "DBTEAMMembersAddArg.h"

#pragma mark - API Object

@implementation DBTEAMMembersAddArg

#pragma mark - Constructors

- (instancetype)initWithDNewMembers:(NSArray<DBTEAMMemberAddArg *> *)dNewMembers forceAsync:(NSNumber *)forceAsync {
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](dNewMembers);

  self = [super init];
  if (self) {
    _dNewMembers = dNewMembers;
    _forceAsync = forceAsync ?: @NO;
  }
  return self;
}

- (instancetype)initWithDNewMembers:(NSArray<DBTEAMMemberAddArg *> *)dNewMembers {
  return [self initWithDNewMembers:dNewMembers forceAsync:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMMembersAddArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMMembersAddArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMMembersAddArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMMembersAddArgSerializer

+ (NSDictionary *)serialize:(DBTEAMMembersAddArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"new_members"] = [DBArraySerializer serialize:valueObj.dNewMembers
                                                withBlock:^id(id elem) {
                                                  return [DBTEAMMemberAddArgSerializer serialize:elem];
                                                }];
  jsonDict[@"force_async"] = valueObj.forceAsync;

  return jsonDict;
}

+ (DBTEAMMembersAddArg *)deserialize:(NSDictionary *)valueDict {
  NSArray<DBTEAMMemberAddArg *> *dNewMembers =
      [DBArraySerializer deserialize:valueDict[@"new_members"]
                           withBlock:^id(id elem) {
                             return [DBTEAMMemberAddArgSerializer deserialize:elem];
                           }];
  NSNumber *forceAsync = valueDict[@"force_async"] ?: @NO;

  return [[DBTEAMMembersAddArg alloc] initWithDNewMembers:dNewMembers forceAsync:forceAsync];
}

@end
