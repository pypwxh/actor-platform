//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestLoadHistory.java
//

#ifndef _ImActorModelApiRpcRequestLoadHistory_H_
#define _ImActorModelApiRpcRequestLoadHistory_H_

#include "J2ObjC_header.h"
#include "im/actor/model/network/parser/Request.h"

@class BSBserValues;
@class BSBserWriter;
@class IOSByteArray;
@class ImActorModelApiOutPeer;

#define ImActorModelApiRpcRequestLoadHistory_HEADER 118

@interface ImActorModelApiRpcRequestLoadHistory : ImActorModelNetworkParserRequest

#pragma mark Public

- (instancetype)init;

- (instancetype)initWithImActorModelApiOutPeer:(ImActorModelApiOutPeer *)peer
                                      withLong:(jlong)minDate
                                       withInt:(jint)limit;

+ (ImActorModelApiRpcRequestLoadHistory *)fromBytesWithByteArray:(IOSByteArray *)data;

- (jint)getHeaderKey;

- (jint)getLimit;

- (jlong)getMinDate;

- (ImActorModelApiOutPeer *)getPeer;

- (void)parseWithBSBserValues:(BSBserValues *)values;

- (void)serializeWithBSBserWriter:(BSBserWriter *)writer;

- (NSString *)description;

@end

J2OBJC_EMPTY_STATIC_INIT(ImActorModelApiRpcRequestLoadHistory)

J2OBJC_STATIC_FIELD_GETTER(ImActorModelApiRpcRequestLoadHistory, HEADER, jint)

FOUNDATION_EXPORT ImActorModelApiRpcRequestLoadHistory *ImActorModelApiRpcRequestLoadHistory_fromBytesWithByteArray_(IOSByteArray *data);

FOUNDATION_EXPORT void ImActorModelApiRpcRequestLoadHistory_initWithImActorModelApiOutPeer_withLong_withInt_(ImActorModelApiRpcRequestLoadHistory *self, ImActorModelApiOutPeer *peer, jlong minDate, jint limit);

FOUNDATION_EXPORT ImActorModelApiRpcRequestLoadHistory *new_ImActorModelApiRpcRequestLoadHistory_initWithImActorModelApiOutPeer_withLong_withInt_(ImActorModelApiOutPeer *peer, jlong minDate, jint limit) NS_RETURNS_RETAINED;

FOUNDATION_EXPORT void ImActorModelApiRpcRequestLoadHistory_init(ImActorModelApiRpcRequestLoadHistory *self);

FOUNDATION_EXPORT ImActorModelApiRpcRequestLoadHistory *new_ImActorModelApiRpcRequestLoadHistory_init() NS_RETURNS_RETAINED;

J2OBJC_TYPE_LITERAL_HEADER(ImActorModelApiRpcRequestLoadHistory)

#endif // _ImActorModelApiRpcRequestLoadHistory_H_
