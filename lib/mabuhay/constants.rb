module Mabuhay
  VERSION = File.read( 'version' ) if File.exists?( 'version' )

  MABUHAY_DESCRIPTION = %q{A Ruby GUI framework designed to leverage web technologies without the need to write anything but Ruby.}
end
