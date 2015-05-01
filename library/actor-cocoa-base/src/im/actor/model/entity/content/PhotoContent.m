//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: /Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/PhotoContent.java
//


#line 1 "/Users/ex3ndr/Develop/actor-model/library/actor-cocoa-base/build/java/im/actor/model/entity/content/PhotoContent.java"

#include "IOSClass.h"
#include "IOSPrimitiveArray.h"
#include "J2ObjC_source.h"
#include "im/actor/model/droidkit/bser/Bser.h"
#include "im/actor/model/droidkit/bser/BserObject.h"
#include "im/actor/model/droidkit/bser/BserValues.h"
#include "im/actor/model/droidkit/bser/BserWriter.h"
#include "im/actor/model/entity/content/AbsContent.h"
#include "im/actor/model/entity/content/DocumentContent.h"
#include "im/actor/model/entity/content/FastThumb.h"
#include "im/actor/model/entity/content/FileSource.h"
#include "im/actor/model/entity/content/PhotoContent.h"
#include "java/io/IOException.h"

@interface AMPhotoContent () {
 @public
  jint w_;
  jint h_;
}

@end


#line 12
@implementation AMPhotoContent

+ (AMPhotoContent *)photoFromBytesWithByteArray:(IOSByteArray *)data {
  return AMPhotoContent_photoFromBytesWithByteArray_(data);
}


#line 21
- (instancetype)initWithAMFileSource:(AMFileSource *)location
                        withNSString:(NSString *)mimetype
                        withNSString:(NSString *)name
                     withAMFastThumb:(AMFastThumb *)fastThumb
                             withInt:(jint)w
                             withInt:(jint)h {
  AMPhotoContent_initWithAMFileSource_withNSString_withNSString_withAMFastThumb_withInt_withInt_(self, location, mimetype, name, fastThumb, w, h);
  return self;
}


#line 27
- (instancetype)init {
  AMPhotoContent_init(self);
  return self;
}


#line 31
- (jint)getW {
  return w_;
}

- (jint)getH {
  return h_;
}


#line 40
- (AMAbsContent_ContentTypeEnum *)getContentType {
  return AMAbsContent_ContentTypeEnum_get_DOCUMENT_PHOTO();
}


#line 45
- (void)parseWithBSBserValues:(BSBserValues *)values {
  [super parseWithBSBserValues:values];
  w_ = [((BSBserValues *) nil_chk(values)) getIntWithInt:10];
  h_ = [values getIntWithInt:11];
}


#line 52
- (void)serializeWithBSBserWriter:(BSBserWriter *)writer {
  [super serializeWithBSBserWriter:writer];
  [((BSBserWriter *) nil_chk(writer)) writeIntWithInt:10 withInt:w_];
  [writer writeIntWithInt:11 withInt:h_];
}

@end


#line 14
AMPhotoContent *AMPhotoContent_photoFromBytesWithByteArray_(IOSByteArray *data) {
  AMPhotoContent_initialize();
  
#line 15
  return ((AMPhotoContent *) BSBser_parseWithBSBserObject_withByteArray_(new_AMPhotoContent_init(), data));
}

void AMPhotoContent_initWithAMFileSource_withNSString_withNSString_withAMFastThumb_withInt_withInt_(AMPhotoContent *self, AMFileSource *location, NSString *mimetype, NSString *name, AMFastThumb *fastThumb, jint w, jint h) {
  (void) AMDocumentContent_initWithAMFileSource_withNSString_withNSString_withAMFastThumb_(self, location, mimetype, name, fastThumb);
  self->w_ = w;
  self->h_ = h;
}


#line 21
AMPhotoContent *new_AMPhotoContent_initWithAMFileSource_withNSString_withNSString_withAMFastThumb_withInt_withInt_(AMFileSource *location, NSString *mimetype, NSString *name, AMFastThumb *fastThumb, jint w, jint h) {
  AMPhotoContent *self = [AMPhotoContent alloc];
  AMPhotoContent_initWithAMFileSource_withNSString_withNSString_withAMFastThumb_withInt_withInt_(self, location, mimetype, name, fastThumb, w, h);
  return self;
}

void AMPhotoContent_init(AMPhotoContent *self) {
  (void) AMDocumentContent_init(self);
}


#line 27
AMPhotoContent *new_AMPhotoContent_init() {
  AMPhotoContent *self = [AMPhotoContent alloc];
  AMPhotoContent_init(self);
  return self;
}

J2OBJC_CLASS_TYPE_LITERAL_SOURCE(AMPhotoContent)
