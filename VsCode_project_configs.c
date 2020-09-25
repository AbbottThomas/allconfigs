/*https://code.visualstudio.com/docs/cpp/config-mingw*/
/*官网、（一定要看官网的操作步骤，这次好像不是配置文件错了，选东西选错了，编译可以先编译）*/
/*原理、（找可以解释原理的资料或操作，可以正确显示错误原因的）*/
/*最简单实践，成功后比对错误（完成照抄，先成功一次）*/
/*出错后怎么办(原因，继续，分割或换路)*/
/*用多了，看熟悉了每个部分的细节*/


/*另外，可以参考这次，手动配值复杂工程结构的项目。多目录，多文件*/


/*编译和调试，可以先执行生成任务，再来调试*/


/*seting*/


/*cpp_c*/
/*选编译器，标准，头文件路径等*/




/*(入口，运行里，添加配置，选有exe的)*/
/*launch.json*/
/*五个比较重要*/
/*type,request,program,miDebuggerPath,preLaunchTask*/


/*{*/
    /*// 使用 IntelliSense 了解相关属性。 */
    /*// 悬停以查看现有属性的描述。*/
    /*// 欲了解更多信息，请访问: https://go.microsoft.com/fwlink/?linkid=830387*/
    /*"version": "0.2.0",*/
    /*"configurations": [*/
        /*{*/
            /*"name": "the first debug by Vs Code",*/
            /*"type": "cppdbg",*/
            /*"request": "launch",*/
            /*"program": "${fileDirname}\\${fileBasenameNoExtension}.exe",*/
            /*"args": [],*/
            /*"stopAtEntry": false,*/
            /*"cwd": "${workspaceFolder}",*/
            /*"environment": [],*/
            /*"externalConsole": false,*/
            /*"MIMode": "gdb",*/
            /*"miDebuggerPath": "D:\\Mingw\\mingw64\\bin\\gdb.exe",*/
            /*"setupCommands": [*/
                /*{*/
                    /*"description": "为 gdb 启用整齐打印",*/
                    /*"text": "-enable-pretty-printing",*/
                    /*"ignoreFailures": true*/
                /*}*/
            /*],*/
            /*"preLaunchTask": "Build"*/
        /*}*/
    /*]*/
/*}*/





/*入口，运行里，配置默认生成任务，选有exe的*/
/*tasks.josn*/
/*四个比较重要*/
/*label,commad,type,args*/

/*{*/
    /*"version": "2.0.0",*/
    /*"tasks": [*/
        /*{*/
            /*"type": "shell",*/
            /*"label": "Build",*/
            /*"command": "D:\\Mingw\\mingw64\\bin\\gcc.exe",*/
            /*"args": [*/
                /*"-g",*/
                /*"${workspaceFolder}\\*.c",*/
                /*"-o",*/
                /*"${fileDirname}\\${fileBasenameNoExtension}.exe"*/
            /*],*/
            /*"options": {*/
                /*"cwd": "${workspaceFolder}"*/
            /*},*/
            /*"problemMatcher": [*/
                /*"$gcc"*/
            /*],*/
            /*"group": "build"*/
        /*},*/
        /*{*/
            /*"type": "shell",*/
            /*"label": "C/C++: gcc.exe build active file",*/
            /*"command": "D:\\Mingw\\mingw64\\bin\\gcc.exe",*/
            /*"args": [*/
                /*"-g",*/
                /*"${file}",*/
                /*"-o",*/
                /*"${fileDirname}\\${fileBasenameNoExtension}.exe"*/
            /*],*/
            /*"options": {*/
                /*"cwd": "${workspaceFolder}"*/
            /*},*/
            /*"problemMatcher": [*/
                /*"$gcc"*/
            /*],*/
            /*"group": {*/
                /*"kind": "build",*/
                /*"isDefault": true*/
            /*}*/
        /*}*/
    /*]*/
/*}*/
