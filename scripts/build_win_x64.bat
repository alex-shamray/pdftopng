@echo off

vcpkg install freetype:x64-windows fontconfig:x64-windows libpng:x64-windows libjpeg-turbo:x64-windows
Rem set PATH=%PATH%;.\vcpkg\installed\x64-windows\bin

cd lib\poppler
mkdir build_x64 && cd build_x64
cmake -A x64 -DCMAKE_TOOLCHAIN_FILE=%VCPKG_INSTALLATION_ROOT%/scripts/buildsystems/vcpkg.cmake -DENABLE_QT5=OFF -DENABLE_LIBOPENJPEG=none -DENABLE_CPP=OFF ..
cmake --build . --config Release --target poppler
cd ..\..\..
