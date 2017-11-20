file(REMOVE_RECURSE
  "low-can-service.wgt"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/packaging.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
