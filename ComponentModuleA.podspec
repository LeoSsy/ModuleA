Pod::Spec.new do |s|
s.name             = 'ComponentModuleA'
s.version          = '1.0.6'
s.summary          = '这是业务模块A 组件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
TODO: Add long description of the pod here.
DESC

s.homepage         = 'https://github.com/LeoSsy'
s.license          = "MIT"
s.author           = { 'jack' => '781739973@qq.com' }
s.source           = { :git => 'https://github.com/LeoSsy/ModuleA.git', :tag => s.version.to_s }

s.platform         = :ios, "8.0"

s.requires_arc     = true

s.subspec 'Controller' do |ss|
ss.source_files = "ComponentModuleA/Controller/*.{h,m}"
end

s.subspec 'Target' do |ss|
ss.source_files = "ComponentModuleA/Target/*.{h,m}"
ss.dependency "ComponentModuleA/Controller"
end

end

