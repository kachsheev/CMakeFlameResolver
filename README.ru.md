# CMakeFlameResolver
Небольшая CMake-библиотека для отложенного добавления целей внутри проектов, написанных на C или C++ и разршения зависимостей внутри проектов.

## Принцип работы с библиотекой

* В любом порядке добавляются цели через функции `flame_header_library()`, `flame_compile_library()` и `flame_compile_binary()`.
* В конце вызывается функция `flame_resolve()`
* ...
* PROFIT!

## Совместимость

Библиотеку можно использовать совместно со стандартным API СMake.

Минимально требуемая версия CMake 3.14.

Поддерживаемые компиляторы: GCC, Clang и MSVC.

## Включение библиотеки для использования

Необходимо добавить следующие строки в Ваш CMakeLists.txt либо подключаемый файл:

```cmake
list(APPEND CMAKE_MODULE_PATH "${RESOLVER_PATH}/cmake" PARENT_SCOPE)
include(CmakeFlameResolver)
```
где переменная `RESOLVER_PATH` -- путь до CMakeFlameResolver

## API

### Функции

* Добавление header-only билиотек либо заголовоков к экспортируемым библиотекам

    ```cmake
    flame_header_library(
        # Опции
        DEBUG

        # Параметры
        NAME
        LIBRARY_ALIAS_NAME
        INSTALL_PATH

        # Списки
        DEPENDENCY_TARGET_LIST
        HEADER_LIST
        INCLUDE_PATHS
    )
    ```

    **FIXME:**

    **NOTE:**

* Добавление компилирующейся части библиобек:

    ```cmake
    flame_compile_library(
        # Опции
        DEBUG 
        MAKE_STATIC 
        MAKE_SHARED
        NOT_MAKE_POSITION_DEPENDENT_OBJECTS
        NOT_MAKE_POSITION_INDEPENDENT_OBJECTS
        RTTI
        NO_RTTI
        EXCEPTIONS
        NO_EXCEPTIONS
        EXPORT_ALL
        USE_RESOLVER_DEFINES

        # Параметры
        NAME
        OBJECT_ALIAS_NAME
        INDEPENDENT_OBJECT_ALIAS_NAME
        STATIC_ALIAS_NAME
        SHARED_ALIAS_NAME
        STATIC_INSTALL_PATH
        SHARED_INSTALL_PATH

        # Списки
        DEFINES
        INCLUDE_PATHS
        SOURCE_LIST
        SOURCE_LIST_STATIC
        SOURCE_LIST_SHARED
        COMPILE_FLAGS
        LINK_FLAGS
        DEPENDENCY_HEADER_TARGETS
        DEPENDENCY_TARGETS_FOR_STATIC
        DEPENDENCY_TARGETS_FOR_SHARED
    )
    ```

    **FIXME:**

    **NOTE:**

* Добавление запускающихся файлов или тестов:

    ```cmake
    flame_compile_binary(
        # Опции
        # Параметры
        # Списки
    )
    ```

* Разрешение зависимостей и добавление целей сборки

    ```cmake
    flame_resolve_targets()
    ```

#### Пример проекта

```
project
```

### Опции

#### Общие
* `FLAME_CMAKE_DEBUG`
* `FLAME_CMAKE_DEBUG_SHOW_PARSE_RESULTS`
* `FLAME_PRINT_COMMON_STATISTIC`
* `FLAME_PRINT_DETAILED_STATISTIC`
* `FLAME_LOGGING`
* `FLAME_CLEAN_AFTER_RESOLVE`
* `FLAME_THREADING`
* `FLAME_TESTING`
* `FLAME_LOCAL_INSTALL`

#### Генерация кода
* `FLAME_ONLY_POSITION_INDEPENDENT_OBJECTS` 
* `FLAME_MAKE_STATIC`
* `FLAME_MAKE_SHARED`
* `FLAME_MAKE_STANDALONE`
* `FLAME_EXPORT_ALL_SYMBOLS`

#### Флаги
* `FLAME_CXX_NO_RTTI`
* `FLAME_CXX_NO_EXCEPTIONS`
* `FLAME_PLATFORM_DEFINES`
