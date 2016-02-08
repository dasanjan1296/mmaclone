module Paths_mmaclone (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName, getSysconfDir
  ) where

import qualified Control.Exception as Exception
import Data.Version (Version(..))
import System.Environment (getEnv)
import Prelude

catchIO :: IO a -> (Exception.IOException -> IO a) -> IO a
catchIO = Exception.catch

version :: Version
version = Version [0,1,0,0] []
bindir, libdir, datadir, libexecdir, sysconfdir :: FilePath

bindir     = "C:\\Users\\jin\\Documents\\Haskell\\writeyourselfscheme\\mmaclone\\.stack-work\\install\\f97f2598\\bin"
libdir     = "C:\\Users\\jin\\Documents\\Haskell\\writeyourselfscheme\\mmaclone\\.stack-work\\install\\f97f2598\\lib\\x86_64-windows-ghc-7.10.3\\mmaclone-0.1.0.0-41cGv2hBqKQ3PDe9zUlUGT"
datadir    = "C:\\Users\\jin\\Documents\\Haskell\\writeyourselfscheme\\mmaclone\\.stack-work\\install\\f97f2598\\share\\x86_64-windows-ghc-7.10.3\\mmaclone-0.1.0.0"
libexecdir = "C:\\Users\\jin\\Documents\\Haskell\\writeyourselfscheme\\mmaclone\\.stack-work\\install\\f97f2598\\libexec"
sysconfdir = "C:\\Users\\jin\\Documents\\Haskell\\writeyourselfscheme\\mmaclone\\.stack-work\\install\\f97f2598\\etc"

getBinDir, getLibDir, getDataDir, getLibexecDir, getSysconfDir :: IO FilePath
getBinDir = catchIO (getEnv "mmaclone_bindir") (\_ -> return bindir)
getLibDir = catchIO (getEnv "mmaclone_libdir") (\_ -> return libdir)
getDataDir = catchIO (getEnv "mmaclone_datadir") (\_ -> return datadir)
getLibexecDir = catchIO (getEnv "mmaclone_libexecdir") (\_ -> return libexecdir)
getSysconfDir = catchIO (getEnv "mmaclone_sysconfdir") (\_ -> return sysconfdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "\\" ++ name)