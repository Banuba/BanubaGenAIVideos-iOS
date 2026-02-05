#import <AVKit/AVKit.h>

NS_ASSUME_NONNULL_BEGIN
NS_SWIFT_NAME(FaceRecognizerInteractor)

// MARK: - FaceRecognizerInteractor interactor
__attribute__((weak_import)) @interface FaceRecognizerInteractor : NSObject

+ (BOOL)isFrameworkAvailable;

- (nonnull instancetype)initWithToken:(NSString *)token;
- (NSInteger)getNumberOfFacesAtImage: (UIImage *)image;

@end
NS_ASSUME_NONNULL_END
