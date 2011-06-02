# -*- cmake -*-

# The copy_win_libs folder contains file lists and a script used to 
# copy dlls, exes and such needed to run the SecondLife from within 
# VisualStudio. 

include(CMakeCopyIfDifferent)

set(vivox_src_dir "${CMAKE_SOURCE_DIR}/newview/vivox-runtime/i686-win32")
set(vivox_files
    SLVoice.exe
    alut.dll
    vivoxsdk.dll
    ortp.dll
    wrap_oal.dll
    )
copy_if_different(
    ${vivox_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/Debug"
    out_targets
    ${vivox_files}
    )
set(all_targets ${all_targets} ${out_targets})



set(debug_src_dir "${CMAKE_SOURCE_DIR}/../libraries/i686-win32/lib/debug")
set(debug_files
    libapr-1.dll
    libaprutil-1.dll
    libapriconv-1.dll
    )

copy_if_different(
    ${debug_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/Debug"
    out_targets 
    ${debug_files}
    )
set(all_targets ${all_targets} ${out_targets})

set(debug_src_dir "${CMAKE_SOURCE_DIR}/../fmodapi375win/api")
set(debug_files
    fmod.dll
    )
    
copy_if_different(
    ${debug_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/Debug"
    out_targets 
    ${debug_files}
    )
set(all_targets ${all_targets} ${out_targets})

# Debug config runtime files required for the plugin test mule
set(plugintest_debug_src_dir "${CMAKE_SOURCE_DIR}/../libraries/i686-win32/lib/debug")
set(plugintest_debug_files
    libeay32.dll
    libglib-2.0-0.dll
    libgmodule-2.0-0.dll
    libgobject-2.0-0.dll
    libgthread-2.0-0.dll
    qtcored4.dll
    qtguid4.dll
    qtnetworkd4.dll
    qtopengld4.dll
    qtwebkitd4.dll
    ssleay32.dll
    )
copy_if_different(
    ${plugintest_debug_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/../test_apps/llplugintest/Debug"
    out_targets
    ${plugintest_debug_files}
    )
set(all_targets ${all_targets} ${out_targets})

# Debug config runtime files required for the plugin test mule (Qt image format plugins)
set(plugintest_debug_src_dir "${CMAKE_SOURCE_DIR}/../libraries/i686-win32/lib/debug/imageformats")
set(plugintest_debug_files
    qgifd4.dll
    qicod4.dll
    qjpegd4.dll
    qmngd4.dll
    qsvgd4.dll
    qtiffd4.dll
    )
copy_if_different(
    ${plugintest_debug_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/../test_apps/llplugintest/Debug/imageformats"
    out_targets
    ${plugintest_debug_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugintest_debug_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/llplugin/imageformats"
    out_targets
    ${plugintest_debug_files}
    )
set(all_targets ${all_targets} ${out_targets})

# Release & ReleaseDebInfo config runtime files required for the plugin test mule
set(plugintest_release_src_dir "${CMAKE_SOURCE_DIR}/../libraries/i686-win32/lib/release")
set(plugintest_release_files
    libeay32.dll
    libglib-2.0-0.dll
    libgmodule-2.0-0.dll
    libgobject-2.0-0.dll
    libgthread-2.0-0.dll
#    llkdu.dll        (not required for plugin test)
    qtcore4.dll
    qtgui4.dll
    qtnetwork4.dll
    qtopengl4.dll
    qtwebkit4.dll
    ssleay32.dll
    )
copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/../test_apps/llplugintest/Release"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/../test_apps/llplugintest/ReleaseSSE2"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/../test_apps/llplugintest/RelWithDebInfo"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

# Release & ReleaseDebInfo config runtime files required for the plugin test mule (Qt image format plugins)
set(plugintest_release_src_dir "${CMAKE_SOURCE_DIR}/../libraries/i686-win32/lib/release/imageformats")
set(plugintest_release_files
    qgif4.dll
    qico4.dll
    qjpeg4.dll
    qmng4.dll
    qsvg4.dll
    qtiff4.dll
    )
copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/../test_apps/llplugintest/Release/imageformats"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/../test_apps/llplugintest/ReleaseSSE2/imageformats"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/../test_apps/llplugintest/RelWithDebInfo/imageformats"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/Release/llplugin/imageformats"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/ReleaseSSE2/llplugin/imageformats"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugintest_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/RelWithDebInfo/llplugin/imageformats"
    out_targets
    ${plugintest_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

# Debug config runtime files required for the plugins
set(plugins_debug_src_dir "${CMAKE_SOURCE_DIR}/../libraries/i686-win32/lib/debug")
set(plugins_debug_files
    libeay32.dll
    qtcored4.dll
    qtguid4.dll
    qtnetworkd4.dll
    qtopengld4.dll
    qtwebkitd4.dll
    ssleay32.dll
    )
copy_if_different(
    ${plugins_debug_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/Debug/llplugin"
    out_targets
    ${plugins_debug_files}
    )
set(all_targets ${all_targets} ${out_targets})

# Release & ReleaseDebInfo config runtime files required for the plugins
set(plugins_release_src_dir "${CMAKE_SOURCE_DIR}/../libraries/i686-win32/lib/release")
set(plugins_release_files
    libeay32.dll
    qtcore4.dll
    qtgui4.dll
    qtnetwork4.dll
    qtopengl4.dll
    qtwebkit4.dll
    ssleay32.dll
    )
copy_if_different(
    ${plugins_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/Release/llplugin"
    out_targets
    ${plugins_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugins_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/ReleaseSSE2/llplugin"
    out_targets
    ${plugins_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${plugins_release_src_dir}
    "${CMAKE_CURRENT_BINARY_DIR}/RelWithDebInfo/llplugin"
    out_targets
    ${plugins_release_files}
    )
set(all_targets ${all_targets} ${out_targets})

set(release_src_dir "${CMAKE_SOURCE_DIR}/../libraries/i686-win32/lib/release")
set(release_files
 libapr-1.dll
    libaprutil-1.dll
    libapriconv-1.dll
    libtcmalloc_minimal.dll
    )
    
copy_if_different(
    ${release_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/Release"
    out_targets 
    ${release_files}
    )
set(all_targets ${all_targets} ${out_targets})

set(release_src_dir "${CMAKE_SOURCE_DIR}/../fmodapi375win/api")
set(release_files
    fmod.dll
    )
    
copy_if_different(
    ${release_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/Release"
    out_targets 
    ${release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${vivox_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/Release"
    out_targets 
    ${vivox_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${release_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/ReleaseSSE2"
    out_targets 
    ${release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${vivox_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/ReleaseSSE2"
    out_targets 
    ${vivox_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${release_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/RelWithDebInfo"
    out_targets 
    ${release_files}
    )
set(all_targets ${all_targets} ${out_targets})

copy_if_different(
    ${vivox_src_dir} 
    "${CMAKE_CURRENT_BINARY_DIR}/RelWithDebInfo"
    out_targets 
    ${vivox_files}
    )
set(all_targets ${all_targets} ${out_targets})

set(internal_llkdu_path "${CMAKE_SOURCE_DIR}/llkdu")
if(EXISTS ${internal_llkdu_path})
    set(internal_llkdu_src "${CMAKE_BINARY_DIR}/llkdu/${CMAKE_CFG_INTDIR}/llkdu.dll")
    set(llkdu_dst "${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_CFG_INTDIR}/llkdu.dll")
    ADD_CUSTOM_COMMAND(
        OUTPUT  ${llkdu_dst}
        COMMAND ${CMAKE_COMMAND} -E copy_if_different ${internal_llkdu_src} ${llkdu_dst}
        DEPENDS ${internal_llkdu_src}
        COMMENT "Copying llkdu.dll ${CMAKE_CURRENT_BINARY_DIR}/${CMAKE_CFG_INTDIR}"
        )
    set(all_targets ${all_targets} ${llkdu_dst})
else(EXISTS ${internal_llkdu_path})
    if (EXISTS "${debug_src_dir}/llkdu.dll")
        set(debug_llkdu_src "${debug_src_dir}/llkdu.dll")
        set(debug_llkdu_dst "${CMAKE_CURRENT_BINARY_DIR}/Debug/llkdu.dll")
        ADD_CUSTOM_COMMAND(
            OUTPUT  ${debug_llkdu_dst}
            COMMAND ${CMAKE_COMMAND} -E copy_if_different ${debug_llkdu_src} ${debug_llkdu_dst}
            DEPENDS ${debug_llkdu_src}
            COMMENT "Copying llkdu.dll ${CMAKE_CURRENT_BINARY_DIR}/Debug"
            )
        set(all_targets ${all_targets} ${debug_llkdu_dst})
    endif (EXISTS "${debug_src_dir}/llkdu.dll")

    if (EXISTS "${release_src_dir}/llkdu.dll")
        set(release_llkdu_src "${release_src_dir}/llkdu.dll")
        set(release_llkdu_dst "${CMAKE_CURRENT_BINARY_DIR}/Release/llkdu.dll")
        ADD_CUSTOM_COMMAND(
            OUTPUT  ${release_llkdu_dst}
            COMMAND ${CMAKE_COMMAND} -E copy_if_different ${release_llkdu_src} ${release_llkdu_dst}
            DEPENDS ${release_llkdu_src}
            COMMENT "Copying llkdu.dll ${CMAKE_CURRENT_BINARY_DIR}/Release"
            )
        set(all_targets ${all_targets} ${release_llkdu_dst})
        
        set(releasesse2_llkdu_dst "${CMAKE_CURRENT_BINARY_DIR}/ReleaseSSE2/llkdu.dll")
        ADD_CUSTOM_COMMAND(
            OUTPUT  ${releasesse2_llkdu_dst}
            COMMAND ${CMAKE_COMMAND} -E copy_if_different ${release_llkdu_src} ${releasesse2_llkdu_dst}
            DEPENDS ${release_llkdu_src}
            COMMENT "Copying llkdu.dll ${CMAKE_CURRENT_BINARY_DIR}/ReleaseSSE2"
            )
        set(all_targets ${all_targets} ${releasesse2_llkdu_dst})

        set(relwithdebinfo_llkdu_dst "${CMAKE_CURRENT_BINARY_DIR}/RelWithDebInfo/llkdu.dll")
        ADD_CUSTOM_COMMAND(
            OUTPUT  ${relwithdebinfo_llkdu_dst}
            COMMAND ${CMAKE_COMMAND} -E copy_if_different ${release_llkdu_src} ${relwithdebinfo_llkdu_dst}
            DEPENDS ${release_llkdu_src}
            COMMENT "Copying llkdu.dll ${CMAKE_CURRENT_BINARY_DIR}/RelWithDebInfo"
            )
        set(all_targets ${all_targets} ${relwithdebinfo_llkdu_dst})
    endif (EXISTS "${release_src_dir}/llkdu.dll")
   
endif (EXISTS ${internal_llkdu_path})

# Copy MS C runtime dlls, required for packaging.
# Simms - Adapted this to support VC10
if (MSVC)
    FIND_PATH(debug_msvc10_redist_path msvcr100d.dll
        PATHS
        ${MSVC_DEBUG_REDIST_PATH}
#  (32bits)       [HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\10.0\\Setup\\VC;ProductDir]/redist/Debug_NonRedist/x86/Microsoft.VC100.DebugCRT
		 [HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\VisualStudio\\10.0\\Setup\\VC;ProductDir]/redist/Debug_NonRedist/x86/Microsoft.VC100.DebugCRT
        NO_DEFAULT_PATH
        NO_DEFAULT_PATH
        )

    if(EXISTS ${debug_msvc10_redist_path})
        set(debug_msvc10_files
            msvcr100d.dll
            msvcp100d.dll
            )

        copy_if_different(
            ${debug_msvc10_redist_path} 
            "${CMAKE_CURRENT_BINARY_DIR}/Debug"
            out_targets 
            ${debug_msvc10_files}
            )
        set(all_targets ${all_targets} ${out_targets})

    endif ()

    FIND_PATH(release_msvc10_redist_path msvcr100.dll
        PATHS
        ${MSVC_REDIST_PATH}
#  (32bits)     [HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\VisualStudio\\10.0\\Setup\\VC;ProductDir]/redist/x86/Microsoft.VC100.CRT
		 [HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node\\Microsoft\\VisualStudio\\10.0\\Setup\\VC;ProductDir]/redist/x86/Microsoft.VC100.CRT
        NO_DEFAULT_PATH
        NO_DEFAULT_PATH
        )

    if(EXISTS ${release_msvc10_redist_path})
        set(release_msvc10_files
            msvcr100.dll
            msvcp100.dll
            )

        copy_if_different(
            ${release_msvc10_redist_path} 
            "${CMAKE_CURRENT_BINARY_DIR}/Release"
            out_targets 
            ${release_msvc10_files}
            )
        set(all_targets ${all_targets} ${out_targets})

        copy_if_different(
            ${release_msvc10_redist_path} 
            "${CMAKE_CURRENT_BINARY_DIR}/ReleaseSSE2"
            out_targets 
            ${release_msvc10_files}
            )
        set(all_targets ${all_targets} ${out_targets})
          
    endif ()
    
        copy_if_different(
            ${release_msvc10_redist_path} 
            "${CMAKE_CURRENT_BINARY_DIR}/RelWithDebInfo"
            out_targets 
            ${release_msvc10_files}
            )
        set(all_targets ${all_targets} ${out_targets})
          
endif (MSVC)

add_custom_target(copy_win_libs ALL
  DEPENDS 
    ${all_targets}
  
  )
add_dependencies(copy_win_libs prepare)

if(EXISTS ${internal_llkdu_path})
    add_dependencies(copy_win_libs llkdu)
endif(EXISTS ${internal_llkdu_path})
