# DO NOT EDIT
# This makefile makes sure all linkable targets are
# up-to-date with anything they link to
default:
	echo "Do not invoke directly"

# Rules to remove targets that are older than anything to which they
# link.  This forces Xcode to relink the targets from scratch.  It
# does not seem to check these dependencies itself.
PostBuild.geometry.Debug:
/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/Debug/libgeometry.a:
	/bin/rm -f /Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/Debug/libgeometry.a


PostBuild.tester.Debug:
PostBuild.geometry.Debug: /Users/dongdong/desktop/test_cmake/build-xcode/src/Debug/tester
/Users/dongdong/desktop/test_cmake/build-xcode/src/Debug/tester:\
	/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/Debug/libgeometry.a
	/bin/rm -f /Users/dongdong/desktop/test_cmake/build-xcode/src/Debug/tester


PostBuild.geometry.Release:
/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/Release/libgeometry.a:
	/bin/rm -f /Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/Release/libgeometry.a


PostBuild.tester.Release:
PostBuild.geometry.Release: /Users/dongdong/desktop/test_cmake/build-xcode/src/Release/tester
/Users/dongdong/desktop/test_cmake/build-xcode/src/Release/tester:\
	/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/Release/libgeometry.a
	/bin/rm -f /Users/dongdong/desktop/test_cmake/build-xcode/src/Release/tester


PostBuild.geometry.MinSizeRel:
/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/MinSizeRel/libgeometry.a:
	/bin/rm -f /Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/MinSizeRel/libgeometry.a


PostBuild.tester.MinSizeRel:
PostBuild.geometry.MinSizeRel: /Users/dongdong/desktop/test_cmake/build-xcode/src/MinSizeRel/tester
/Users/dongdong/desktop/test_cmake/build-xcode/src/MinSizeRel/tester:\
	/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/MinSizeRel/libgeometry.a
	/bin/rm -f /Users/dongdong/desktop/test_cmake/build-xcode/src/MinSizeRel/tester


PostBuild.geometry.RelWithDebInfo:
/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/RelWithDebInfo/libgeometry.a:
	/bin/rm -f /Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/RelWithDebInfo/libgeometry.a


PostBuild.tester.RelWithDebInfo:
PostBuild.geometry.RelWithDebInfo: /Users/dongdong/desktop/test_cmake/build-xcode/src/RelWithDebInfo/tester
/Users/dongdong/desktop/test_cmake/build-xcode/src/RelWithDebInfo/tester:\
	/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/RelWithDebInfo/libgeometry.a
	/bin/rm -f /Users/dongdong/desktop/test_cmake/build-xcode/src/RelWithDebInfo/tester




# For each target create a dummy ruleso the target does not have to exist
/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/Debug/libgeometry.a:
/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/MinSizeRel/libgeometry.a:
/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/RelWithDebInfo/libgeometry.a:
/Users/dongdong/desktop/test_cmake/build-xcode/geometry/src/Release/libgeometry.a:
