Pod::Spec.new do |spec|

    spec.name         = "RSGameVlionAdSDK"
    spec.version      = "1.4.1"
    spec.summary      = "小游戏SDK"
    
    spec.description  = <<-DESC
    包含穿山甲SDK
    安装执行
    pod 'RSGameVlionAdSDK'
                   DESC

    spec.homepage     = "https://github.com/yang152/RSGameVlionAdSDK"

    spec.license      = { :type => "MIT", :file => "LICENSE" }

    spec.author       = { "杨挺" => "625635129@qq.com" }

    spec.platform     = :ios, "9.0"

    spec.source       = { :git => "https://github.com/yang152/RSGameVlionAdSDK.git", :tag => "#{spec.version}" }

    spec.vendored_frameworks = 'RSGameVlionAdSDK.framework'
    
    spec.resource = 'RSGameVlionAd.bundle'
    
    spec.dependency 'Bytedance-UnionAD'
    
    valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']
    
    spec.xcconfig = {
    
      'VALID_ARCHS' =>  valid_archs.join(' ')
      
    }

end
