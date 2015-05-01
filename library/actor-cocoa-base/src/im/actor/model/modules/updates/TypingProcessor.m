//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/TypingProcessor.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/modules/updates/TypingProcessor.java"

#include "J2ObjC_source.h"
#include "im/actor/model/api/Peer.h"
#include "im/actor/model/api/PeerType.h"
#include "im/actor/model/api/TypingType.h"
#include "im/actor/model/droidkit/actors/ActorRef.h"
#include "im/actor/model/modules/BaseModule.h"
#include "im/actor/model/modules/Modules.h"
#include "im/actor/model/modules/typing/TypingActor.h"
#include "im/actor/model/modules/updates/TypingProcessor.h"

@interface ImActorModelModulesUpdatesTypingProcessor () {
 @public
  DKActorRef *typingActor_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelModulesUpdatesTypingProcessor, typingActor_, DKActorRef *)


#line 16
@implementation ImActorModelModulesUpdatesTypingProcessor


#line 20
- (instancetype)initWithImActorModelModulesModules:(ImActorModelModulesModules *)modules {
  ImActorModelModulesUpdatesTypingProcessor_initWithImActorModelModulesModules_(self, modules);
  return self;
}


#line 26
- (void)onTypingWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                withInt:(jint)uid
      withImActorModelApiTypingTypeEnum:(ImActorModelApiTypingTypeEnum *)type {
  if ([((ImActorModelApiPeer *) nil_chk(peer)) getType] == ImActorModelApiPeerTypeEnum_get_PRIVATE()) {
    [((DKActorRef *) nil_chk(typingActor_)) sendOnceWithId:new_ImActorModelModulesTypingTypingActor_PrivateTyping_initWithInt_withImActorModelApiTypingTypeEnum_(uid, type)];
  }
  else
#line 29
  if ([peer getType] == ImActorModelApiPeerTypeEnum_get_GROUP()) {
    [((DKActorRef *) nil_chk(typingActor_)) sendOnceWithId:new_ImActorModelModulesTypingTypingActor_GroupTyping_initWithInt_withInt_withImActorModelApiTypingTypeEnum_([peer getId], uid, type)];
  }
  else {
  }
}


#line 37
- (void)onMessageWithImActorModelApiPeer:(ImActorModelApiPeer *)peer
                                 withInt:(jint)uid {
  if ([((ImActorModelApiPeer *) nil_chk(peer)) getType] == ImActorModelApiPeerTypeEnum_get_PRIVATE()) {
    [((DKActorRef *) nil_chk(typingActor_)) sendOnceWithId:new_ImActorModelModulesTypingTypingActor_StopTyping_initWithInt_(uid)];
  }
  else
#line 40
  if ([peer getType] == ImActorModelApiPeerTypeEnum_get_GROUP()) {
    [((DKActorRef *) nil_chk(typingActor_)) sendOnceWithId:new_ImActorModelModulesTypingTypingActor_StopGroupTyping_initWithInt_withInt_([peer getId], uid)];
  }
  else {
  }
}

@end


#line 20
void ImActorModelModulesUpdatesTypingProcessor_initWithImActorModelModulesModules_(ImActorModelModulesUpdatesTypingProcessor *self, ImActorModelModulesModules *modules) {
  (void) ImActorModelModulesBaseModule_initWithImActorModelModulesModules_(self, modules);
  self->typingActor_ = ImActorModelModulesTypingTypingActor_getWithImActorModelModulesModules_(modules);
}


#line 20
ImActorModelModulesUpdatesTypingProcessor *new_ImActorModelModulesUpdatesTypingProcessor_initWithImActorModelModulesModules_(ImActorModelModulesModules *modules) {
  ImActorModelModulesUpdatesTypingProcessor *self = [ImActorModelModulesUpdatesTypingProcessor alloc];
  ImActorModelModulesUpdatesTypingProcessor_initWithImActorModelModulesModules_(self, modules);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelModulesUpdatesTypingProcessor)
