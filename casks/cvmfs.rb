cask "cvmfs" do
    version "2.12.0"
  
    name "CERN-VM FS macOS FUSE client"
    desc "Filesystem client for accessing scientific data using macOS FUSE"
    homepage "https://cernvm.cern.ch/fs/"
  
    # Declare dependency on another cask
    depends_on cask: "macos-fuse-t/homebrew-cask/fuse-t"

    if Hardware::CPU.arm? 
      url "https://ecsft.cern.ch/dist/cvmfs/cvmfs-#{version}/cvmfs-#{version}.fuse-t.arm64.pkg"
      sha256 "8e28e5ffdc82dca9b0c88e6ff2d7ef285ca9a76b6e96966ff1c0c395b50784d8"
      # Use the 'pkg' stanza for .pkg installation
      pkg "cvmfs-#{version}.fuse-t.arm64.pkg"
    end
    if Hardware::CPU.intel?
      url "https://ecsft.cern.ch/dist/cvmfs/cvmfs-#{version}/cvmfs-#{version}.fuse-t.intel.pkg"
      sha256 "bc6dad1dd88aa38f84ebcc658c28e643ef05fe1a010559f0b24e57119d9cca30"
      pkg "cvmfs-#{version}.fuse-t.intel.pkg"
    end

  
  
  end
  
