///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMRevokeDeviceSessionError;
@class DBTEAMRevokeDeviceSessionStatus;

#pragma mark - API Object

///
/// The `RevokeDeviceSessionStatus` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMRevokeDeviceSessionStatus : NSObject <DBSerializable>

#pragma mark - Instance fields

/// Result of the revoking request
@property (nonatomic, readonly) NSNumber * _Nonnull success;

/// The error cause in case of a failure
@property (nonatomic, readonly) DBTEAMRevokeDeviceSessionError * _Nullable errorType;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param success Result of the revoking request
/// @param errorType The error cause in case of a failure
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSuccess:(NSNumber * _Nonnull)success
                              errorType:(DBTEAMRevokeDeviceSessionError * _Nullable)errorType;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param success Result of the revoking request
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithSuccess:(NSNumber * _Nonnull)success;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `RevokeDeviceSessionStatus` struct.
///
@interface DBTEAMRevokeDeviceSessionStatusSerializer : NSObject

///
/// Serializes `DBTEAMRevokeDeviceSessionStatus` instances.
///
/// @param instance An instance of the `DBTEAMRevokeDeviceSessionStatus` API
/// object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMRevokeDeviceSessionStatus` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMRevokeDeviceSessionStatus * _Nonnull)instance;

///
/// Deserializes `DBTEAMRevokeDeviceSessionStatus` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMRevokeDeviceSessionStatus` API object.
///
/// @return An instantiation of the `DBTEAMRevokeDeviceSessionStatus` object.
///
+ (DBTEAMRevokeDeviceSessionStatus * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
