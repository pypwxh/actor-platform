//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetFileUrl.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/rpc/RequestGetFileUrl.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/FileLocation.h"
#include "im/actor/model/api/rpc/RequestGetFileUrl.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/network/parser/Request.h"
#include "java/io/IOException.h"

@interface ImActorModelApiRpcRequestGetFileUrl () {
 @public
  ImActorModelApiFileLocation *file_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiRpcRequestGetFileUrl, file_, ImActorModelApiFileLocation *)


#line 20
@implementation ImActorModelApiRpcRequestGetFileUrl


#line 23
+ (ImActorModelApiRpcRequestGetFileUrl *)fromBytesWithByteArray:(IOSByteArray *)data {
  return ImActorModelApiRpcRequestGetFileUrl_fromBytesWithByteArray_(data);
}


#line 29
- (instancetype)initWithImActorModelApiFileLocation:(ImActorModelApiFileLocation *)file {
  ImActorModelApiRpcRequestGetFileUrl_initWithImActorModelApiFileLocation_(self, file);
  return self;
}


#line 33
- (instancetype)init {
  ImActorModelApiRpcRequestGetFileUrl_init(self);
  return self;
}


#line 37
- (ImActorModelApiFileLocation *)getFile {
  return self->file_;
}


#line 42
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->file_ = [((BSBserValues *) nil_chk(values)) getObjWithInt:1 withBSBserObject:new_ImActorModelApiFileLocation_init()];
}


#line 47
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  if (self->file_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [((BSBserWriter *) nil_chk(writer)) writeObjectWithInt:1 withBSBserObject:self->file_];
}


#line 55
- (NSString *)description {
  NSString *res = @"rpc GetFileUrl{";
  res = JreStrcat("$$", res, JreStrcat("$@", @"file=", self->file_));
  res = JreStrcat("$C", res, '}');
  return res;
}


#line 63
- (jint)getHeaderKey {
  return ImActorModelApiRpcRequestGetFileUrl_HEADER;
}

@end


#line 23
ImActorModelApiRpcRequestGetFileUrl *ImActorModelApiRpcRequestGetFileUrl_fromBytesWithByteArray_(IOSByteArray *data) {
  ImActorModelApiRpcRequestGetFileUrl_initialize();
  
#line 24
  return ((ImActorModelApiRpcRequestGetFileUrl *) BSBser_parseWithBSBserObject_withByteArray_(new_ImActorModelApiRpcRequestGetFileUrl_init(), data));
}


#line 29
void ImActorModelApiRpcRequestGetFileUrl_initWithImActorModelApiFileLocation_(ImActorModelApiRpcRequestGetFileUrl *self, ImActorModelApiFileLocation *file) {
  (void) ImActorModelNetworkParserRequest_init(self);
  
#line 30
  self->file_ = file;
}


#line 29
ImActorModelApiRpcRequestGetFileUrl *new_ImActorModelApiRpcRequestGetFileUrl_initWithImActorModelApiFileLocation_(ImActorModelApiFileLocation *file) {
  ImActorModelApiRpcRequestGetFileUrl *self = [ImActorModelApiRpcRequestGetFileUrl alloc];
  ImActorModelApiRpcRequestGetFileUrl_initWithImActorModelApiFileLocation_(self, file);
  return self;
}


#line 33
void ImActorModelApiRpcRequestGetFileUrl_init(ImActorModelApiRpcRequestGetFileUrl *self) {
  (void) ImActorModelNetworkParserRequest_init(self);
}


#line 33
ImActorModelApiRpcRequestGetFileUrl *new_ImActorModelApiRpcRequestGetFileUrl_init() {
  ImActorModelApiRpcRequestGetFileUrl *self = [ImActorModelApiRpcRequestGetFileUrl alloc];
  ImActorModelApiRpcRequestGetFileUrl_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiRpcRequestGetFileUrl)
