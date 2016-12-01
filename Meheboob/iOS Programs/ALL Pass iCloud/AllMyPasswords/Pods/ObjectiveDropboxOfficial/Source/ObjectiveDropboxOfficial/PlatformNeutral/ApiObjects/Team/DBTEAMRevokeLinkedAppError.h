///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBSerializableProtocol.h"

@class DBTEAMRevokeLinkedAppError;

#pragma mark - API Object

///
/// The `RevokeLinkedAppError` union.
///
/// Error returned by `linkedAppsRevokeLinkedApp`.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBTEAMRevokeLinkedAppError : NSObject <DBSerializable>

#pragma mark - Instance fields

/// The `DBTEAMRevokeLinkedAppErrorTag` enum type represents the possible tag
/// states with which the `DBTEAMRevokeLinkedAppError` union can exist.
typedef NS_ENUM(NSInteger, DBTEAMRevokeLinkedAppErrorTag) {
  /// Application not found.
  DBTEAMRevokeLinkedAppErrorAppNotFound,

  /// Member not found.
  DBTEAMRevokeLinkedAppErrorMemberNotFound,

  /// (no description).
  DBTEAMRevokeLinkedAppErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBTEAMRevokeLinkedAppErrorTag tag;

#pragma mark - Constructors

///
/// Initializes union class with tag state of "app_not_found".
///
/// Description of the "app_not_found" tag state: Application not found.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithAppNotFound;

///
/// Initializes union class with tag state of "member_not_found".
///
/// Description of the "member_not_found" tag state: Member not found.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithMemberNotFound;

///
/// Initializes union class with tag state of "other".
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithOther;

#pragma mark - Tag state methods

///
/// Retrieves whether the union's current tag state has value "app_not_found".
///
/// @return Whether the union's current tag state has value "app_not_found".
///
- (BOOL)isAppNotFound;

///
/// Retrieves whether the union's current tag state has value
/// "member_not_found".
///
/// @return Whether the union's current tag state has value "member_not_found".
///
- (BOOL)isMemberNotFound;

///
/// Retrieves whether the union's current tag state has value "other".
///
/// @return Whether the union's current tag state has value "other".
///
- (BOOL)isOther;

///
/// Retrieves string value of union's current tag state.
///
/// @return A human-readable string representing the union's current tag state.
///
- (NSString * _Nonnull)tagName;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `DBTEAMRevokeLinkedAppError` union.
///
@interface DBTEAMRevokeLinkedAppErrorSerializer : NSObject

///
/// Serializes `DBTEAMRevokeLinkedAppError` instances.
///
/// @param instance An instance of the `DBTEAMRevokeLinkedAppError` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBTEAMRevokeLinkedAppError` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBTEAMRevokeLinkedAppError * _Nonnull)instance;

///
/// Deserializes `DBTEAMRevokeLinkedAppError` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBTEAMRevokeLinkedAppError` API object.
///
/// @return An instantiation of the `DBTEAMRevokeLinkedAppError` object.
///
+ (DBTEAMRevokeLinkedAppError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
