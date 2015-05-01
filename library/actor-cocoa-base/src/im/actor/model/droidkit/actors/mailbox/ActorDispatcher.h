//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/droidkit/actors/mailbox/ActorDispatcher.java
//

#ifndef _DKActorDispatcher_H_
#define _DKActorDispatcher_H_

#include "J2ObjC_header.h"

@class DKAbstractDispatcher;
@class DKActorEndpoint;
@class DKActorRef;
@class DKActorScope;
@class DKActorSystem;
@class DKEnvelope;
@class DKProps;

@interface DKActorDispatcher : NSObject

#pragma mark Public

- (instancetype)initWithNSString:(NSString *)name
               withDKActorSystem:(DKActorSystem *)actorSystem;

- (void)cancelSendWithDKActorEndpoint:(DKActorEndpoint *)endpoint
                               withId:(id)message
                       withDKActorRef:(DKActorRef *)sender;

- (NSString *)getName;

- (void)killGracefullyWithDKActorScope:(DKActorScope *)scope;

- (DKActorRef *)referenceActorWithNSString:(NSString *)path
                               withDKProps:(DKProps *)props;

- (void)sendMessageWithDKActorEndpoint:(DKActorEndpoint *)endpoint
                                withId:(id)message
                              withLong:(jlong)time
                        withDKActorRef:(DKActorRef *)sender;

- (void)sendMessageOnceWithDKActorEndpoint:(DKActorEndpoint *)endpoint
                                    withId:(id)message
                                  withLong:(jlong)time
                            withDKActorRef:(DKActorRef *)sender;

#pragma mark Protected

- (void)initDispatcherWithDKAbstractDispatcher:(DKAbstractDispatcher *)dispatcher OBJC_METHOD_FAMILY_NONE;

- (void)processEnvelopeWithDKEnvelope:(DKEnvelope *)envelope;

@end

J2OBJC_EMPTY_STATIC_INIT(DKActorDispatcher)

FOUNDATION_EXPORT void DKActorDispatcher_initWithNSString_withDKActorSystem_(DKActorDispatcher *self, NSString *name, DKActorSystem *actorSystem);

J2OBJC_TYPE_LITERAL_HEADER(DKActorDispatcher)

typedef DKActorDispatcher ImActorModelDroidkitActorsMailboxActorDispatcher;

#endif // _DKActorDispatcher_H_
