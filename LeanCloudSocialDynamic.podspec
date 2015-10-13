Pod::Spec.new do |s|

  component      = "LeanCloudSocial"

  s.name         = "LeanCloudSocialDynamic"
  s.version      = "0.0.5"
  s.summary      = "LeanCloud iOS Social SDK for mobile backend."
  s.homepage     = "https://leancloud.cn"
  s.license      = { :type => "Commercial", :text => "© Copyright 2015 LeanCloud, Inc. See https://leancloud.cn/terms.html" }
  s.author       = { "LeanCloud" => "support@leancloud.cn" }
  s.documentation_url = "https://leancloud.cn/docs/sns.html"
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/leancloud/leancloud-social-ios.git", :tag => s.version.to_s }
  s.source_files = "Classes/*.{h,m}"
  s.public_header_files = "Classes/*.h"

  s.dependency "AVOSCloudDynamic", "~> 3.1"
  s.dependency "AFNetworking", "~> 2.0"

  s.xcconfig = {
      "OTHER_LDFLAGS" => "$(inherited) -ObjC",
      "FRAMEWORK_SEARCH_PATHS" => "\"${PODS_ROOT}/#{s.name}/**\"",
      "LD_RUNPATH_SEARCH_PATHS" => "@loader_path/../Frameworks"
  }
end
