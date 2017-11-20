# Build a widget

## config.xml.in file

To build a widget you need a _config.xml_ file describing what is your apps and
how Application Framework would launch it. This repo provide a simple default
file _config.xml.in_ that should work for simple application without
interactions with others bindings.

It is recommanded that you use the sample one which is more complete. You can
find it at the same location under the name _config.xml.in.sample_ (stunning
isn't it). Just copy the sample file to your _conf.d/wgt_ directory and name it
_config.xml.in_, then edit it to fit your needs.

> ***CAUTION*** : The default file is only meant to be use for a
> simple widget app, more complicated ones which needed to export
> their api, or ship several app in one widget need to use the provided
> _config.xml.in.sample_ which had all new Application Framework
> features explained and examples.

## Using cmake template macros

To leverage all cmake templates features, you have to specify ***properties***
on your targets. Some macros will not works without specifying which is the
target type.

As the type is not always specified for some custom targets, like an ***HTML5***
application, macros make the difference using ***LABELS*** property.

Choose between:

- **BINDING**: Shared library that be loaded by the AGL Application Framework
- **BINDINGV2**: Shared library that be loaded by the AGL Application Framework.
 This has to be accompagnied with a JSON file named like the *${OUTPUT_NAME}-apidef* of
 the target that describe the API with OpenAPI syntax (e.g: *mybinding-apidef*).
 Or you can choose the name by setting the *CACHE* cmake variable *OPENAPI_DEF*
 (***CAUTION***: setting a CACHE variable is needed, or set a normal variable
 with the *PARENT_SCOPE* option to make it visible for the parent scope
 where the target is defined) JSON file will be used to generate header file
 using `afb-genskel` tool.
- **HTDOCS**: Root directory of a web app. This target has to build its
 directory and puts its files in the ${CMAKE_CURRENT_BINARY_DIR}/${TARGET_NAME}
- **DATA**: Resources used by your application. This target has to build its
 directory and puts its files in the ${CMAKE_CURRENT_BINARY_DIR}/${TARGET_NAME}
- **EXECUTABLE**: Entry point of your application executed by the AGL
 Application Framework

> **TIP** you should use the prefix _afb-_ with your **BINDING* targets which
> stand for **Application Framework Binding**.

Example:

```cmake
SET_TARGET_PROPERTIES(${TARGET_NAME} PROPERTIES
		LABELS "HTDOCS"
		OUTPUT_NAME dist.prod
	)
```

> **NOTE**: You doesn't need to specify an **INSTALL** command for these
> targets. This is already handle by template and will be installed in the
> following path : **${CMAKE_INSTALL_PREFIX}/${PROJECT_NAME}**

## Macro reference

### PROJECT_TARGET_ADD

Typical usage would be to add the target to your project using macro
`PROJECT_TARGET_ADD` with the name of your target as parameter.

Example:

```cmake
PROJECT_TARGET_ADD(low-can-demo)
```

> ***NOTE***: This will make available the variable `${TARGET_NAME}`
> set with the specificied name. This variable will change at the next call
> to this macros.

### project_subdirs_add

This macro will search in all subfolder any `CMakeLists.txt` file. If found then
it will be added to your project. This could be use in an hybrid application by
example where the binding lay in a sub directory.

Usage :

```cmake
project_subdirs_add()
```

You also can specify a globbing pattern as argument to filter which folders
will be looked for.

To filter all directories that begin with a number followed by a dash the
anything:

```cmake
project_subdirs_add("[0-9]-*")
```
