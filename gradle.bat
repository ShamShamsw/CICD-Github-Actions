@rem
@rem Copyright 2025 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Gradle startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with Windows NT shell
if "%OS%"=="Windows_NT" setlocal

set "DIRNAME=%~dp0"
if "%DIRNAME%" == "" set "DIRNAME=."
set "APP_BASE_NAME=%~n0"
set "APP_HOME=%DIRNAME%"

@rem Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
if not defined DEFAULT_JVM_OPTS set "DEFAULT_JVM_OPTS=-Xmx64m -Xms64m"

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set "JAVA_EXE=java.exe"
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
goto fail

:findJavaFromJavaHome
set "JAVA_HOME=%JAVA_HOME:"=%"
set "JAVA_EXE=%JAVA_HOME%\bin\java.exe"

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set "CMD_LINE_ARGS="
set "_SKIP=2"

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set "CMD_LINE_ARGS=%*"

:execute
@rem Setup the command line

set "CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar"

if not exist "%CLASSPATH%" (
    echo.
    echo ERROR: gradle-wrapper.jar not found in %APP_HOME%\gradle\wrapper.
    echo Please ensure the wrapper is properly configured.
    goto fail
)

@rem Execute Gradle
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %GRADLE_OPTS% "-Dorg.gradle.appname=%APP_BASE_NAME%" -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with Windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
@rem Set variable GRADLE_EXIT_CONSOLE if you need the _script_ return code instead of
@rem the _cmd.exe /c_ return code!
if not "" == "%GRADLE_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

@rem This batch script is a Gradle startup script for Windows. It performs the following tasks:

@rem 1. Sets up local variables and paths, including `DIRNAME`, `APP_BASE_NAME`, and `APP_HOME`.
@rem 2. Configures default JVM options (`DEFAULT_JVM_OPTS`) if not already defined.
@rem 3. Checks for the presence of Java by verifying `JAVA_HOME` or locating `java.exe` in the system's PATH.
@rem 4. Validates the existence of the Gradle wrapper JAR file (`gradle-wrapper.jar`) in the expected directory.
@rem 5. Executes the Gradle wrapper (`org.gradle.wrapper.GradleWrapperMain`) with the provided command-line arguments.
@rem 6. Handles errors, such as missing Java or the Gradle wrapper JAR, and provides appropriate error messages.
@rem 7. Ends with cleanup of local variables and returns the appropriate exit code.