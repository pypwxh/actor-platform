//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/AuthSession.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/api/AuthSession.java"

#include "IOSClass.h"
#include "J2ObjC_source.h"
#include "im/actor/model/api/AuthHolder.h"
#include "im/actor/model/api/AuthSession.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "java/io/IOException.h"
#include "java/lang/Double.h"

@interface ImActorModelApiAuthSession () {
 @public
  jint id__;
  ImActorModelApiAuthHolderEnum *authHolder_;
  jint appId_;
  NSString *appTitle_;
  NSString *deviceTitle_;
  jint authTime_;
  NSString *authLocation_;
  JavaLangDouble *latitude_;
  JavaLangDouble *longitude_;
}

@end

J2OBJC_FIELD_SETTER(ImActorModelApiAuthSession, authHolder_, ImActorModelApiAuthHolderEnum *)
J2OBJC_FIELD_SETTER(ImActorModelApiAuthSession, appTitle_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiAuthSession, deviceTitle_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiAuthSession, authLocation_, NSString *)
J2OBJC_FIELD_SETTER(ImActorModelApiAuthSession, latitude_, JavaLangDouble *)
J2OBJC_FIELD_SETTER(ImActorModelApiAuthSession, longitude_, JavaLangDouble *)


#line 19
@implementation ImActorModelApiAuthSession


#line 31
- (instancetype)initWithInt:(jint)id_
withImActorModelApiAuthHolderEnum:(ImActorModelApiAuthHolderEnum *)authHolder
                    withInt:(jint)appId
               withNSString:(NSString *)appTitle
               withNSString:(NSString *)deviceTitle
                    withInt:(jint)authTime
               withNSString:(NSString *)authLocation
         withJavaLangDouble:(JavaLangDouble *)latitude
         withJavaLangDouble:(JavaLangDouble *)longitude {
  ImActorModelApiAuthSession_initWithInt_withImActorModelApiAuthHolderEnum_withInt_withNSString_withNSString_withInt_withNSString_withJavaLangDouble_withJavaLangDouble_(self, id_, authHolder, appId, appTitle, deviceTitle, authTime, authLocation, latitude, longitude);
  return self;
}


#line 43
- (instancetype)init {
  ImActorModelApiAuthSession_init(self);
  return self;
}


#line 47
- (jint)getId {
  return self->id__;
}

- (ImActorModelApiAuthHolderEnum *)getAuthHolder {
  return self->authHolder_;
}

- (jint)getAppId {
  return self->appId_;
}

- (NSString *)getAppTitle {
  return self->appTitle_;
}

- (NSString *)getDeviceTitle {
  return self->deviceTitle_;
}

- (jint)getAuthTime {
  return self->authTime_;
}

- (NSString *)getAuthLocation {
  return self->authLocation_;
}

- (JavaLangDouble *)getLatitude {
  return self->latitude_;
}

- (JavaLangDouble *)getLongitude {
  return self->longitude_;
}


#line 84
- (void)parseWithBSBserValues:(BSBserValues *)values {
  self->id__ = [((BSBserValues *) nil_chk(values)) getIntWithInt:1];
  self->authHolder_ = ImActorModelApiAuthHolderEnum_parseWithInt_([values getIntWithInt:2]);
  self->appId_ = [values getIntWithInt:3];
  self->appTitle_ = [values getStringWithInt:4];
  self->deviceTitle_ = [values getStringWithInt:5];
  self->authTime_ = [values getIntWithInt:6];
  self->authLocation_ = [values getStringWithInt:7];
  self->latitude_ = JavaLangDouble_valueOfWithDouble_([values optDoubleWithInt:8]);
  self->longitude_ = JavaLangDouble_valueOfWithDouble_([values optDoubleWithInt:9]);
}


#line 97
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:1 withInt:self->id__];
  if (self->authHolder_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeIntWithInt:2 withInt:[((ImActorModelApiAuthHolderEnum *) nil_chk(self->authHolder_)) getValue]];
  [writer writeIntWithInt:3 withInt:self->appId_];
  if (self->appTitle_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:4 withNSString:self->appTitle_];
  if (self->deviceTitle_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:5 withNSString:self->deviceTitle_];
  [writer writeIntWithInt:6 withInt:self->authTime_];
  if (self->authLocation_ == nil) {
    @throw new_JavaIoIOException_init();
  }
  [writer writeStringWithInt:7 withNSString:self->authLocation_];
  if (self->latitude_ != nil) {
    [writer writeDoubleWithInt:8 withDouble:[self->latitude_ doubleValue]];
  }
  if (self->longitude_ != nil) {
    [writer writeDoubleWithInt:9 withDouble:[self->longitude_ doubleValue]];
  }
}


#line 126
- (NSString *)description {
  NSString *res = @"struct AuthSession{";
  res = JreStrcat("$$", res, JreStrcat("$I", @"id=", self->id__));
  res = JreStrcat("$$", res, JreStrcat("$@", @", authHolder=", self->authHolder_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", appId=", self->appId_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", appTitle=", self->appTitle_));
  res = JreStrcat("$$", res, JreStrcat("$$", @", deviceTitle=", self->deviceTitle_));
  res = JreStrcat("$$", res, JreStrcat("$I", @", authTime=", self->authTime_));
  res = JreStrcat("$C", res, '}');
  return res;
}

@end


#line 31
void ImActorModelApiAuthSession_initWithInt_withImActorModelApiAuthHolderEnum_withInt_withNSString_withNSString_withInt_withNSString_withJavaLangDouble_withJavaLangDouble_(ImActorModelApiAuthSession *self, jint id_, ImActorModelApiAuthHolderEnum *authHolder, jint appId, NSString *appTitle, NSString *deviceTitle, jint authTime, NSString *authLocation, JavaLangDouble *latitude, JavaLangDouble *longitude) {
  (void) BSBserObject_init(self);
  
#line 32
  self->id__ = id_;
  self->authHolder_ = authHolder;
  self->appId_ = appId;
  self->appTitle_ = appTitle;
  self->deviceTitle_ = deviceTitle;
  self->authTime_ = authTime;
  self->authLocation_ = authLocation;
  self->latitude_ = latitude;
  self->longitude_ = longitude;
}


#line 31
ImActorModelApiAuthSession *new_ImActorModelApiAuthSession_initWithInt_withImActorModelApiAuthHolderEnum_withInt_withNSString_withNSString_withInt_withNSString_withJavaLangDouble_withJavaLangDouble_(jint id_, ImActorModelApiAuthHolderEnum *authHolder, jint appId, NSString *appTitle, NSString *deviceTitle, jint authTime, NSString *authLocation, JavaLangDouble *latitude, JavaLangDouble *longitude) {
  ImActorModelApiAuthSession *self = [ImActorModelApiAuthSession alloc];
  ImActorModelApiAuthSession_initWithInt_withImActorModelApiAuthHolderEnum_withInt_withNSString_withNSString_withInt_withNSString_withJavaLangDouble_withJavaLangDouble_(self, id_, authHolder, appId, appTitle, deviceTitle, authTime, authLocation, latitude, longitude);
  return self;
}


#line 43
void ImActorModelApiAuthSession_init(ImActorModelApiAuthSession *self) {
  (void) BSBserObject_init(self);
}


#line 43
ImActorModelApiAuthSession *new_ImActorModelApiAuthSession_init() {
  ImActorModelApiAuthSession *self = [ImActorModelApiAuthSession alloc];
  ImActorModelApiAuthSession_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(ImActorModelApiAuthSession)
