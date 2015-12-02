Pod::Spec.new do |s|

  s.name         = "ijkplayer"
  s.version      = "0.4.0-ffmpeg-2.8-6"
  s.summary      = "Video player based on FFmpeg n2.7"
  s.homepage     = "https://github.com/Bilibili/ijkplayer"

  s.license      = { :type => 'LGPLv2.1+', :file => 'COPYING.LGPLv2.1.txt' }
  s.author       = { "Zhang Rui" => "bbcallen@gmail.com" }

  s.platform     = :ios, '6.0'

  s.source       = { :git => "https://github.com/boxfish-project/ijkplayer.git", :tag => "k#{s.version}" }

  s.frameworks     = 'AudioToolbox', 'AVFoundation', 'CoreAudio', 'CoreGraphics', 'CoreMedia', 'CoreVideo', 'MediaPlayer', 'OpenGLES', 'UIKit', 'QuartzCore'
  s.weak_framework = 'VideoToolbox'


  s.subspec 'IJKMediaPlayer' do |ss|
    ss.dependency 'ijkplayer/ijkplayer-ios'
    ss.dependency 'ijkplayer/ijkplayer-ios-mrc'

    ss.source_files         = 'ios/IJKMediaPlayer/IJKMediaPlayer/*.{h,m}'
    ss.public_header_files  = [
      'ios/IJKMediaPlayer/IJKMediaPlayer/IJKMediaPlayer.h',
      'ios/IJKMediaPlayer/IJKMediaPlayer/IJKMediaModule.h',
      'ios/IJKMediaPlayer/IJKMediaPlayer/IJKMediaPlayback.h',
      'ios/IJKMediaPlayer/IJKMediaPlayer/IJKMPMoviePlayerController.h',
      'ios/IJKMediaPlayer/IJKMediaPlayer/IJKAVMoviePlayerController.h',
      'ios/IJKMediaPlayer/IJKMediaPlayer/IJKFFMoviePlayerController.h',
      'ios/IJKMediaPlayer/IJKMediaPlayer/IJKFFOptions.h']
    ss.header_mappings_dir  = 'ios/IJKMediaPlayer'

    ss.exclude_files        = 'ios/IJKMediaPlayer/IJKMediaPlayer/ijkmedia/**/*'
  end


  s.subspec 'ijkplayer-ios' do |ss|
    ss.dependency 'ijkplayer/ijkplayer'
    ss.dependency 'ijkplayer/ijksdl-ios'
    ss.dependency 'ijkplayer/ijksdl-ios-mrc'
