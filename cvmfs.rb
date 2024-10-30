cask "cvmfs" do
    version "2.11.5"
    sha256 "204ede424c5e38563070b68a2034fb01400707e7cb98f28d05a71abc2143e9d7"
  
    url "https://ecsft.cern.ch/dist/cvmfs/cvmfs-#{version}/cvmfs-#{version}.pkg"
    name "CERN-VM FS macOS FUSE client"
    desc "Filesystem client for accessing scientific data using macOS FUSE"
    homepage "https://cernvm.cern.ch/fs/"
  
    # Declare dependency on another cask
    depends_on cask: "macos-fuse-t/homebrew-cask/fuse-t"
  
    # Use the 'pkg' stanza for .pkg installation
    pkg "cvmfs-#{version}.pkg"
  
  end
  