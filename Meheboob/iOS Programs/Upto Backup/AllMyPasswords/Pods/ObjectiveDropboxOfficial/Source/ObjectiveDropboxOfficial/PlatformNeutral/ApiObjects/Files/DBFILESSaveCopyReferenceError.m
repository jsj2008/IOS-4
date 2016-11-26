///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESSaveCopyReferenceError.h"
#import "DBFILESWriteError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESSaveCopyReferenceError

@synthesize path = _path;

#pragma mark - Constructors

- (instancetype)initWithPath:(DBFILESWriteError *)path {
  self = [super init];
  if (self) {
    _tag = DBFILESSaveCopyReferenceErrorPath;
    _path = path;
  }
  return self;
}

- (instancetype)initWithInvalidCopyReference {
  self = [super init];
  if (self) {
    _tag = DBFILESSaveCopyReferenceErrorInvalidCopyReference;
  }
  return self;
}

- (instancetype)initWithNoPermission {
  self = [super init];
  if (self) {
    _tag = DBFILESSaveCopyReferenceErrorNoPermission;
  }
  return self;
}

- (instancetype)initWithNotFound {
  self = [super init];
  if (self) {
    _tag = DBFILESSaveCopyReferenceErrorNotFound;
  }
  return self;
}

- (instancetype)initWithTooManyFiles {
  self = [super init];
  if (self) {
    _tag = DBFILESSaveCopyReferenceErrorTooManyFiles;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESSaveCopyReferenceErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (DBFILESWriteError *)path {
  if (![self isPath]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESSaveCopyReferenceErrorPath, but was %@.", [self tagName]];
  }
  return _path;
}

#pragma mark - Tag state methods

- (BOOL)isPath {
  return _tag == DBFILESSaveCopyReferenceErrorPath;
}

- (BOOL)isInvalidCopyReference {
  return _tag == DBFILESSaveCopyReferenceErrorInvalidCopyReference;
}

- (BOOL)isNoPermission {
  return _tag == DBFILESSaveCopyReferenceErrorNoPermission;
}

- (BOOL)isNotFound {
  return _tag == DBFILESSaveCopyReferenceErrorNotFound;
}

- (BOOL)isTooManyFiles {
  return _tag == DBFILESSaveCopyReferenceErrorTooManyFiles;
}

- (BOOL)isOther {
  return _tag == DBFILESSaveCopyReferenceErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESSaveCopyReferenceErrorPath:
    return @"DBFILESSaveCopyReferenceErrorPath";
  case DBFILESSaveCopyReferenceErrorInvalidCopyReference:
    return @"DBFILESSaveCopyReferenceErrorInvalidCopyReference";
  case DBFILESSaveCopyReferenceErrorNoPermission:
    return @"DBFILESSaveCopyReferenceErrorNoPermission";
  case DBFILESSaveCopyReferenceErrorNotFound:
    return @"DBFILESSaveCopyReferenceErrorNotFound";
  case DBFILESSaveCopyReferenceErrorTooManyFiles:
    return @"DBFILESSaveCopyReferenceErrorTooManyFiles";
  case DBFILESSaveCopyReferenceErrorOther:
    return @"DBFILESSaveCopyReferenceErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESSaveCopyReferenceErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESSaveCopyReferenceErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESSaveCopyReferenceErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESSaveCopyReferenceErrorSerializer

+ (NSDictionary *)serialize:(DBFILESSaveCopyReferenceError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isPath]) {
    jsonDict[@"path"] = [[DBFILESWriteErrorSerializer serialize:valueObj.path] mutableCopy];
    jsonDict[@".tag"] = @"path";
  } else if ([valueObj isInvalidCopyReference]) {
    jsonDict[@".tag"] = @"invalid_copy_reference";
  } else if ([valueObj isNoPermission]) {
    jsonDict[@".tag"] = @"no_permission";
  } else if ([valueObj isNotFound]) {
    jsonDict[@".tag"] = @"not_found";
  } else if ([valueObj isTooManyFiles]) {
    jsonDict[@".tag"] = @"too_many_files";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBFILESSaveCopyReferenceError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"path"]) {
    DBFILESWriteError *path = [DBFILESWriteErrorSerializer deserialize:valueDict[@"path"]];
    return [[DBFILESSaveCopyReferenceError alloc] initWithPath:path];
  } else if ([tag isEqualToString:@"invalid_copy_reference"]) {
    return [[DBFILESSaveCopyReferenceError alloc] initWithInvalidCopyReference];
  } else if ([tag isEqualToString:@"no_permission"]) {
    return [[DBFILESSaveCopyReferenceError alloc] initWithNoPermission];
  } else if ([tag isEqualToString:@"not_found"]) {
    return [[DBFILESSaveCopyReferenceError alloc] initWithNotFound];
  } else if ([tag isEqualToString:@"too_many_files"]) {
    return [[DBFILESSaveCopyReferenceError alloc] initWithTooManyFiles];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESSaveCopyReferenceError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
