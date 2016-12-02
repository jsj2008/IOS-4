///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESLookupError.h"
#import "DBFILESPathRootError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESLookupError

@synthesize malformedPath = _malformedPath;
@synthesize invalidPathRoot = _invalidPathRoot;

#pragma mark - Constructors

- (instancetype)initWithMalformedPath:(NSString *)malformedPath {
  self = [super init];
  if (self) {
    _tag = DBFILESLookupErrorMalformedPath;
    _malformedPath = malformedPath;
  }
  return self;
}

- (instancetype)initWithNotFound {
  self = [super init];
  if (self) {
    _tag = DBFILESLookupErrorNotFound;
  }
  return self;
}

- (instancetype)initWithNotFile {
  self = [super init];
  if (self) {
    _tag = DBFILESLookupErrorNotFile;
  }
  return self;
}

- (instancetype)initWithNotFolder {
  self = [super init];
  if (self) {
    _tag = DBFILESLookupErrorNotFolder;
  }
  return self;
}

- (instancetype)initWithRestrictedContent {
  self = [super init];
  if (self) {
    _tag = DBFILESLookupErrorRestrictedContent;
  }
  return self;
}

- (instancetype)initWithInvalidPathRoot:(DBFILESPathRootError *)invalidPathRoot {
  self = [super init];
  if (self) {
    _tag = DBFILESLookupErrorInvalidPathRoot;
    _invalidPathRoot = invalidPathRoot;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBFILESLookupErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

- (NSString *)malformedPath {
  if (![self isMalformedPath]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESLookupErrorMalformedPath, but was %@.", [self tagName]];
  }
  return _malformedPath;
}

- (DBFILESPathRootError *)invalidPathRoot {
  if (![self isInvalidPathRoot]) {
    [NSException raise:@"IllegalStateException"
                format:@"Invalid tag: required DBFILESLookupErrorInvalidPathRoot, but was %@.", [self tagName]];
  }
  return _invalidPathRoot;
}

#pragma mark - Tag state methods

- (BOOL)isMalformedPath {
  return _tag == DBFILESLookupErrorMalformedPath;
}

- (BOOL)isNotFound {
  return _tag == DBFILESLookupErrorNotFound;
}

- (BOOL)isNotFile {
  return _tag == DBFILESLookupErrorNotFile;
}

- (BOOL)isNotFolder {
  return _tag == DBFILESLookupErrorNotFolder;
}

- (BOOL)isRestrictedContent {
  return _tag == DBFILESLookupErrorRestrictedContent;
}

- (BOOL)isInvalidPathRoot {
  return _tag == DBFILESLookupErrorInvalidPathRoot;
}

- (BOOL)isOther {
  return _tag == DBFILESLookupErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBFILESLookupErrorMalformedPath:
    return @"DBFILESLookupErrorMalformedPath";
  case DBFILESLookupErrorNotFound:
    return @"DBFILESLookupErrorNotFound";
  case DBFILESLookupErrorNotFile:
    return @"DBFILESLookupErrorNotFile";
  case DBFILESLookupErrorNotFolder:
    return @"DBFILESLookupErrorNotFolder";
  case DBFILESLookupErrorRestrictedContent:
    return @"DBFILESLookupErrorRestrictedContent";
  case DBFILESLookupErrorInvalidPathRoot:
    return @"DBFILESLookupErrorInvalidPathRoot";
  case DBFILESLookupErrorOther:
    return @"DBFILESLookupErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESLookupErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESLookupErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESLookupErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESLookupErrorSerializer

+ (NSDictionary *)serialize:(DBFILESLookupError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isMalformedPath]) {
    if (valueObj.malformedPath) {
      jsonDict[@"malformed_path"] = valueObj.malformedPath;
    }
    jsonDict[@".tag"] = @"malformed_path";
  } else if ([valueObj isNotFound]) {
    jsonDict[@".tag"] = @"not_found";
  } else if ([valueObj isNotFile]) {
    jsonDict[@".tag"] = @"not_file";
  } else if ([valueObj isNotFolder]) {
    jsonDict[@".tag"] = @"not_folder";
  } else if ([valueObj isRestrictedContent]) {
    jsonDict[@".tag"] = @"restricted_content";
  } else if ([valueObj isInvalidPathRoot]) {
    jsonDict[@"invalid_path_root"] = [[DBFILESPathRootErrorSerializer serialize:valueObj.invalidPathRoot] mutableCopy];
    jsonDict[@".tag"] = @"invalid_path_root";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBFILESLookupError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"malformed_path"]) {
    NSString *malformedPath = valueDict[@"malformed_path"] ? valueDict[@"malformed_path"] : nil;
    return [[DBFILESLookupError alloc] initWithMalformedPath:malformedPath];
  } else if ([tag isEqualToString:@"not_found"]) {
    return [[DBFILESLookupError alloc] initWithNotFound];
  } else if ([tag isEqualToString:@"not_file"]) {
    return [[DBFILESLookupError alloc] initWithNotFile];
  } else if ([tag isEqualToString:@"not_folder"]) {
    return [[DBFILESLookupError alloc] initWithNotFolder];
  } else if ([tag isEqualToString:@"restricted_content"]) {
    return [[DBFILESLookupError alloc] initWithRestrictedContent];
  } else if ([tag isEqualToString:@"invalid_path_root"]) {
    DBFILESPathRootError *invalidPathRoot = [DBFILESPathRootErrorSerializer deserialize:valueDict];
    return [[DBFILESLookupError alloc] initWithInvalidPathRoot:invalidPathRoot];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBFILESLookupError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
