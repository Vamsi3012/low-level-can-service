# Advanced customization

## Including additionnals cmake files

### Machine and system custom cmake files

Advanced tuning is possible using addionnals cmake files that are included
automatically from some specifics locations. They are included in that order:

- Project CMake files normaly located in _<project-root-path>/conf.d/app-templates/cmake/cmake.d_
- Home CMake files located in _$HOME/.config/app-templates/cmake.d_
- System CMake files located in _/etc/app-templates/cmake.d_

CMake files has to be named using the following convention: `XX-common*.cmake`
or `XX-${PROJECT_NAME}*.cmake`, where `XX` are numbers, `*` file name
(ie. `99-common-my_customs.cmake`).

> **NOTE** You need to specify after numbers that indicate include order, to
which project that file applies, if it applies to all project then use keyword
`common`.

So, saying that you should be aware that every normal cmake variables used at
project level could be overwrited by home or system located cmake files if
variables got the same name. Exceptions are cached variables set using
**CACHE** keyword:

Example:

```cmake
set(VARIABLE_NAME 'value string random' CACHE STRING 'docstring')
```

### OS custom cmake files

This is meant to personalize the project depending on the OS your are using.
At the end of config.cmake, common.cmake will include lot of cmake file to
customize project build depending on your plateform. It will detect your OS
deducing it from file _/etc/os-release_ now as default in almost all Linux
distribution.

So you can use the value of field **ID_LIKE** or **ID** if the
first one doesn't exists and add a cmake file for that distribution in your
_conf.d/cmake/_ directory or relatively to your _app-templates_ submodule path
_app-templates/../cmake/_

Those files has to be named use the following scheme _XX-${OSRELEASE}*.cmake_
where _XX_ are numbers, ${OSRELEASE} the **ID_LIKE** or **ID** field from
_/etc/os-release_ file.

## Include customs templated scripts

As well as for additionnals cmake files you can include your own templated
scripts that will be passed to cmake command `configure_file`.

Just create your own script to the following directories:

- Home location in _$HOME/.config/app-templates/scripts_
- System location in _/etc/app-templates/scripts_

Scripts only needs to use the extension `.in` to be parsed and configured by
CMake command.
