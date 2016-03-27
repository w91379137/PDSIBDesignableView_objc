Pod::Spec.new do |s|
    s.name     = 'PDSIBDesignableView_objc'
    s.version  = '0.0.1'
    s.summary  = 'Description'
    s.license  = {
        :type => 'MIT',
        :file => 'LICENSE'
    }
    s.author   = {
        'w91379137' => 'w91379137'
    }
    s.homepage = 'https://github.com/w91379137/PDSIBDesignableView_objc'

    s.source   = {
        :git => 'https://github.com/w91379137/PDSIBDesignableView_objc.git',
        :tag => s.version.to_s
    }
    s.source_files = 'PDSIBDesignableView_objc/*{.h,.c,.m,.rtf}'
    s.requires_arc = true

    s.platform = :ios
    s.ios.deployment_target = '8.0'

#s.dependency 'PDSSetting_objc', :git => 'https://github.com/w91379137/PDSSetting_objc.git'

    s.dependency 'Masonry'

end
