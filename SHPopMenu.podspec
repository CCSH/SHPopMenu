Pod::Spec.new do |s|
    s.name         = "SHPopMenu"
    s.version      = "1.0.0"
    s.summary      = "气泡弹框"
    s.homepage     = "https://github.com/CCSH/SHPopMenu"
    s.license      = "MIT"
    s.authors      = { "CSH" => "624089195@qq.com" }
    s.platform     = :ios, "6.0"
    s.requires_arc = true
    s.source       = { :git => "https://github.com/CCSH/SHPopMenu.git", :tag => s.version }
    s.source_files = "SHPopMenu/*.{h,m}"
    s.resource     = "SHPopMenu/popu_arrow.png"
end
