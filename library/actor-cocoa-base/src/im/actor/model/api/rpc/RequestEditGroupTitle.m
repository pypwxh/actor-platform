//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestEditGroupTitle.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestEditGroupTitle.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/GroupOutPeer.h"
#include "im/actor/model/api/rpc/RequestEditGroupTitle.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestEditGroupTitle () {
 @public
  ImActorModelApiGroupOutPeer *groupPeer_;
  jlong rid_;
  NSString *title_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestEditGroupTitle, groupPeer_, ImActorModelApiGroupOutPeer *)
J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestEditGroupTitle, title_, NSString *)


#line 20
@implementation ImActorModelApiRpcRequestEditGroupTitle


#line 23
+ (ImActorModelApiRpcRequestEditGroupTitle *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestEditGroupTitle_fromBytesWithByteArray_(data);
}


#line 31
- (instancetype)initWithImActorModelApiGroupOutPeer:(ImActorModelApiGroupOutPeer *)groupPeer
                                           withLong:(jlong)rid
                                       withNSString:(NSString *)title {
  ImActorModelApiRpcRequestEditGroupTitle_initWithImActorModelApiGroupOutPeer_withLong_withNSString_(self, groupPeer, rid, title);
  return self;
}


#line 37
- (instancetype)init {
  ImActorModelApiRpcRequestEditGroupTitle_init(self);
  return self;
}


#line 41
- (ImActorModelApiGroupOutPeer *)getGroupPeer {
  return self->groupPeer_;
}

- (jlong)getRid {
  return self->rid_;
}

- (NSString *)getTitle {
  return self->title_;
}


#line 54
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->groupPeer_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_ImActorModelApiGroupOutPeer_init()];
  self->rid_ = [values getLongWithInt:4];
  self->title_ = [values getStringWithInt:3];
}


#line 61
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->groupPeer_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->groupPeer_];
  [writer writeLongWithInt:4 withLong:self->rid_];
  if (self->title_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:3 withNSString:self->title_];
}


#line 74
- (NSString *)description {
  NSString *res = @"rpc EditGroupTitle{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"groupPeer=", self->groupPeer_));
  res = JreStrcat("$$", res, JreStrcat("$J", @", rid=", self->rid_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", title=", self->title_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 84
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestEditGroupTitle_HEADER;
}

@end


#line 23
ImActorModelApiRpcRequestEditGroupTitle *ImActorModelApiRpcRequestEditGroupTitle_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestEditGroupTitle_initialize();
  
#line 24
  return ((ImActorModelApiRpcRequestEditGroupTitle *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestEditGroupTitle_init(), data));
}


#line 31
void ImActorModelApiRpcRequestEditGroupTitle_initWithImActorModelApiGroupOutPeer_withLong_withNSString_(ImActorModelApiRpcRequestEditGroupTitle *self, ImActorModelApiGroupOutPeer *groupPeer, jlong rid, NSString *title) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 32
  self->groupPeer_ = groupPeer;
  self->rid_ = rid;
  self->title_ = title;
}


#line 31
ImActorModelApiRpcRequestEditGroupTitle *new_ImActorModelApiRpcRequestEditGroupTitle_initWithImActorModelApiGroupOutPeer_withLong_withNSString_(ImActorModelApiGroupOutPeer *groupPeer, jlong rid, NSString *title) {
  ImActorModelApiRpcRequestEditGroupTitle *self = [ImActorModelApiRpcRequestEditGroupTitle alloc];
  ImActorModelApiRpcRequestEditGroupTitle_initWithImActorModelApiGroupOutPeer_withLong_withNSString_(self, groupPeer, rid, title);
  return self;
}

void ImActorModelApiRpcRequestEditGroupTitle_init(ImActorModelApiRpcRequestEditGroupTitle *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 37
ImActorModelApiRpcRequestEditGroupTitle *new_ImActorModelApiRpcRequestEditGroupTitle_init() {
  ImActorModelApiRpcRequestEditGroupTitle *self = [ImActorModelApiRpcRequestEditGroupTitle alloc];
  ImActorModelApiRpcRequestEditGroupTitle_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestEditGroupTitle)
