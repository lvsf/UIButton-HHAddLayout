Pod::Spec.new do |s|
    s.name         = 'UIButton+HHAddLayout'
    s.version      = '0.0.1'
    s.summary      = '使用UIButton扩展方便地调整按钮原本图片和文本的位置'
    s.homepage     = 'https://github.com/lvsf/UIButton-HHAddLayout'
    s.license      = 'MIT'
    s.authors      = {'lvsf' => 'lvsf1992@163.com'}
    s.platform     = :ios, '7.0'
    s.source       = {:git => 'https://github.com/lvsf/UIButton-HHAddLayout.git', :tag => s.version}
    s.source_files = 'UIButton-HHAddLayout/Class/*.{h,m}'
    s.requires_arc = true
end
