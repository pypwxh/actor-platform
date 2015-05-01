//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExChangedAvatar.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/ServiceExChangedAvatar.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/Avatar.h"
#include "im/actor/model/api/ServiceEx.h"
#include "im/actor/model/api/ServiceExChangedAvatar.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"

@interface ImActorModelApiServiceExChangedAvatar () {
 @public
  ImActorModelApiAvatar *avatar_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiServiceExChangedAvatar, avatar_, ImActorModelApiAvatar *)


#line 19
@implementation ImActorModelApiServiceExChangedAvatar


#line 23
- (instancetype)initWithImActorModelApiAvatar:(ImActorModelApiAvatar *)avatar {
  ImActorModelApiServiceExChangedAvatar_initWithImActorModelApiAvatar_(self, avatar);
  return self;
}


#line 27
- (instancetype)init {
  ImActorModelApiServiceExChangedAvatar_init(self);
  return self;
}


#line 31
- (jint)getHeader {
  return 6;
}

- (ImActorModelApiAvatar *)getAvatar {
  return self->avatar_;
}


#line 40
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->avatar_ = [((BSBserValues *) nil_chk(values)) optObjWithInt:1 withBSBserObject:new_ImActorModelApiAvatar_init()];
}


#line 45
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->avatar_ != nil) {
    [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->avatar_];
  }
}


#line 52
- (NSString *)description {
  NSString *res = @"struct ServiceExChangedAvatar{";
  res = JreStrcat("$$", res, JreStrcat("$$", @"avatar=", (self->avatar_ != nil ? @"set" : @"empty")));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end


#line 23
void ImActorModelApiServiceExChangedAvatar_initWithImActorModelApiAvatar_(ImActorModelApiServiceExChangedAvatar *self, ImActorModelApiAvatar *avatar) {
  (void) ImActorModelApiServiceEx_init(self);
  
#line 24
  self->avatar_ = avatar;
}


#line 23
ImActorModelApiServiceExChangedAvatar *new_ImActorModelApiServiceExChangedAvatar_initWithImActorModelApiAvatar_(ImActorModelApiAvatar *avatar) {
  ImActorModelApiServiceExChangedAvatar *self = [ImActorModelApiServiceExChangedAvatar alloc];
  ImActorModelApiServiceExChangedAvatar_initWithImActorModelApiAvatar_(self, avatar);
  return self;
}


#line 27
void ImActorModelApiServiceExChangedAvatar_init(ImActorModelApiServiceExChangedAvatar *self) {
  (void) ImActorModelApiServiceEx_init(self);
}


#line 27
ImActorModelApiServiceExChangedAvatar *new_ImActorModelApiServiceExChangedAvatar_init() {
  ImActorModelApiServiceExChangedAvatar *self = [ImActorModelApiServiceExChangedAvatar alloc];
  ImActorModelApiServiceExChangedAvatar_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiServiceExChangedAvatar)
