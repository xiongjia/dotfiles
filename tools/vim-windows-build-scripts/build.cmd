pushd vim\src
if /i [%1] == [clean] (
  call "%VS_DIR%\Community\VC\Tools\MSVC\14.16.27023\bin\Hostx64\x64\nmake" -f Make_mvc.mak clean
) else (
  call "%VS_DIR%\Community\VC\Tools\MSVC\14.16.27023\bin\Hostx64\x64\nmake" -f Make_mvc.mak
)
popd
