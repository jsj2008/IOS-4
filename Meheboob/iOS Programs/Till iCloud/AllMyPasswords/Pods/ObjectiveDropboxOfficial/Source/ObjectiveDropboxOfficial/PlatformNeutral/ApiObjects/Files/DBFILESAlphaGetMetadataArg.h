///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DBFILESGetMetadataArg.h"
#import "DBSerializableProtocol.h"

@class DBFILESAlphaGetMetadataArg;

#pragma mark - API Object

///
/// The `AlphaGetMetadataArg` struct.
///
/// This class implements the `DBSerializable` protocol (serialize and
/// deserialize instance methods), which is required for all Obj-C SDK API route
/// objects.
///
@interface DBFILESAlphaGetMetadataArg : DBFILESGetMetadataArg <DBSerializable>

#pragma mark - Instance fields

/// If set to a valid list of template IDs, `propertyGroups` in
/// `DBFILESFileMetadata` is set for files with custom properties.
@property (nonatomic, readonly) NSArray<NSString *> * _Nullable includePropertyTemplates;

#pragma mark - Constructors

///
/// Full constructor for the struct (exposes all instance variables).
///
/// @param path The path of a file or folder on Dropbox.
/// @param includeMediaInfo If true, `mediaInfo` in `DBFILESFileMetadata` is set
/// for photo and video.
/// @param includeDeleted If true, DeletedMetadata will be returned for deleted
/// file or folder, otherwise `notFound` in `DBFILESLookupError` will be
/// returned.
/// @param includeHasExplicitSharedMembers If true, the results will include a
/// flag for each file indicating whether or not  that file has any explicit
/// members.
/// @param includePropertyTemplates If set to a valid list of template IDs,
/// `propertyGroups` in `DBFILESFileMetadata` is set for files with custom
/// properties.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path
                    includeMediaInfo:(NSNumber * _Nullable)includeMediaInfo
                      includeDeleted:(NSNumber * _Nullable)includeDeleted
     includeHasExplicitSharedMembers:(NSNumber * _Nullable)includeHasExplicitSharedMembers
            includePropertyTemplates:(NSArray<NSString *> * _Nullable)includePropertyTemplates;

///
/// Convenience constructor (exposes only non-nullable instance variables with
/// no default value).
///
/// @param path The path of a file or folder on Dropbox.
///
/// @return An initialized instance.
///
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path;

@end

#pragma mark - Serializer Object

///
/// The serialization class for the `AlphaGetMetadataArg` struct.
///
@interface DBFILESAlphaGetMetadataArgSerializer : NSObject

///
/// Serializes `DBFILESAlphaGetMetadataArg` instances.
///
/// @param instance An instance of the `DBFILESAlphaGetMetadataArg` API object.
///
/// @return A json-compatible dictionary representation of the
/// `DBFILESAlphaGetMetadataArg` API object.
///
+ (NSDictionary * _Nonnull)serialize:(DBFILESAlphaGetMetadataArg * _Nonnull)instance;

///
/// Deserializes `DBFILESAlphaGetMetadataArg` instances.
///
/// @param dict A json-compatible dictionary representation of the
/// `DBFILESAlphaGetMetadataArg` API object.
///
/// @return An instantiation of the `DBFILESAlphaGetMetadataArg` object.
///
+ (DBFILESAlphaGetMetadataArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end
