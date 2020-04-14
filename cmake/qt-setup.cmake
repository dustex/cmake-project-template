# QT5 stuff
# howto see here: https://doc.qt.io/qt-5.12/cmake-manual.html
# windeployqt: https://www.youtube.com/watch?v=8qozxqSZQEg
# and here: https://blog.nathanosman.com/2017/11/24/using-windeployqt-with-cpack.html

# path: C:\Qt\5.14.2\msvc2017\lib\cmake\Qt5
set(Qt5Core_DIR "C:/Qt/5.14.2/msvc2017/lib/cmake/Qt5Core")
set(Qt5_DIR "C:/Qt/5.14.2/msvc2017/lib/cmake/Qt5")
set(QT_QMAKE_EXECUTABLE "C:/Qt/5.14.2/msvc2017/bin/qmake.exe")

find_package(Qt5 COMPONENTS Widgets Core REQUIRED)