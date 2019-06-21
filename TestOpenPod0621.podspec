
Pod::Spec.new do |spec|

  spec.name         = "TestOpenPod0621"
  spec.version      = "0.0.1"
  spec.summary      = " OpenPodTest0621 0621"

  
  spec.description  = <<-DESC
                      OpenPodTest0621 0621 from 部署一个开源的pod
                      DESC

  spec.homepage     = "https://github.com/Moschino8606/TestOpenPod0621"
  spec.license      = "MIT"
  spec.author             = { "Zhu jia" => "zhujia8606@163.com" }
  
  spec.platform     = :ios, "8.0"

  spec.source       = { :git => "https://github.com/Moschino8606/TestOpenPod0621.git", :tag => "#{spec.version}" }

  spec.source_files  = "Sources/*.{h,m}"
  spec.requires_arc = true


end