///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBFILESDimensions.h"
#import "DBFILESGpsCoordinates.h"
#import "DBFILESMediaMetadata.h"
#import "DBFILESVideoMetadata.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBFILESVideoMetadata

#pragma mark - Constructors

- (instancetype)initWithDimensions:(DBFILESDimensions *)dimensions
                          location:(DBFILESGpsCoordinates *)location
                         timeTaken:(NSDate *)timeTaken
                          duration:(NSNumber *)duration {

  self = [super initWithDimensions:dimensions location:location timeTaken:timeTaken];
  if (self) {
    _duration = duration;
  }
  return self;
}

- (instancetype)init {
  return [self initWithDimensions:nil location:nil timeTaken:nil duration:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBFILESVideoMetadataSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBFILESVideoMetadataSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBFILESVideoMetadataSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBFILESVideoMetadataSerializer

+ (NSDictionary *)serialize:(DBFILESVideoMetadata *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if (valueObj.dimensions) {
    jsonDict[@"dimensions"] = [DBFILESDimensionsSerializer serialize:valueObj.dimensions];
  }
  if (valueObj.location) {
    jsonDict[@"location"] = [DBFILESGpsCoordinatesSerializer serialize:valueObj.location];
  }
  if (valueObj.timeTaken) {
    jsonDict[@"time_taken"] = [DBNSDateSerializer serialize:valueObj.timeTaken dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
  }
  if (valueObj.duration) {
    jsonDict[@"duration"] = valueObj.duration;
  }

  return jsonDict;
}

+ (DBFILESVideoMetadata *)deserialize:(NSDictionary *)valueDict {
  DBFILESDimensions *dimensions =
      valueDict[@"dimensions"] ? [DBFILESDimensionsSerializer deserialize:valueDict[@"dimensions"]] : nil;
  DBFILESGpsCoordinates *location =
      valueDict[@"location"] ? [DBFILESGpsCoordinatesSerializer deserialize:valueDict[@"location"]] : nil;
  NSDate *timeTaken = valueDict[@"time_taken"]
                          ? [DBNSDateSerializer deserialize:valueDict[@"time_taken"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"]
                          : nil;
  NSNumber *duration = valueDict[@"duration"] ?: nil;

  return [[DBFILESVideoMetadata alloc] initWithDimensions:dimensions
                                                 location:location
                                                timeTaken:timeTaken
                                                 duration:duration];
}

@end
