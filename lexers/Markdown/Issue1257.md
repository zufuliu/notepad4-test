___
this fork
call NtCreateUserProcess directly without using syscalls so i can test my sandbox because he cannot catch syscalls
i m creating a virtual launcher able to sandbox tools like sandboxie, so i need to test if it can sandbox everything. i have problems to find tools that use NtCreateUserProcess to start processes in windows 7, all tools i find are for win 10+ , so i want to create a simple command line tool able to run calc.exe in windows 7, i was able to create one but it can run only cmd, calc is more complex because it use sxs folders to find its dependecies, so i always get an error of a missing dll. but i found a tool able to run calc in windows 7  using NtCreateUserProcess  but it does not use NtCreateUserProcess  directly , it uses syscalls which is more advanced, but my sandbox is not able to intercept syscalls because it s a simple user  land process that does not use a driver or intercept kernel. so i cannot sandbox it, but i still need to sandbox normal NtCreateUserProcess that do not use syscalls. so if that tool is able to run calc using syscall which is harder to do then i must be able to use the direct NtCreateUserProcess  without using syscalls too and it should be easier than using syscalls
i already attempted to create one with you several times but nothing worked , you always fail to run calc , only cmd worked,   now that i found this working tool  i want you to learn from this tool how he do to solve it and how he fixed the sxs problem,  then do it like him but using direct NtCreateUserProcess  , do not use syscalls to call NtCreateUserProcess  , i need to test only NtCreateUserProcess so this one should not use syscall. so edit the attached code to use direct NtCreateUserProcess
___

# NtCreateUserProcess-Post && NtCreateUserProcess-Native
NtCreateUserProcess with CsrClientCallServer for mainstream Windows x64 version.  

Reimplement this: __NtCreateUserProcess->BasepConstructSxsCreateProcessMessage->  
->CsrCaptureMessageMultiUnicodeStringsInPlace->CsrClientCallServer__  

__This project could be useless, however it's also useful to learn!__  
  
I'll try to fix some known bugs, Any questions,suggestions and pulls are welcomed __:)__  
__I will mainly try to support ALL Windows x64 verison from win 7 to win 11.__  

NtCreateUserProcess-Native support Standard IO Redirect.  
NtCreateUserProcess-Native is the Native Edition which remove BasepConstructSxsCreateProcessMessage, RtlCreateProcessParametersEx,   CsrCaptureMessageMultiUnicodeStringsInPlace...  just prevent any function hook?  

NtCreateUserProcess-Native is created for OPSEC, RedTeam purpose.  
__I have enabled CFG in NtCreateUserProcess-Native Project Settings.__  

__There is no plan to support AppX Package in this project.__  
<del>__I have nearly finished Reverse Engineering of CreateProcessInternalW of Windows 21H*,__</del>  
<del>__but a few improvement,struct, data type... required, I need more time...__</del>  
__Try [CreateProcessInternalW-Full](https://github.com/je5442804/CreateProcessInternalW-Full) instead__  
Hope the later CreateProcessInternalW project will help you gain different knowledge and understanding,  
which reimplement to support AppX, 16 bit RaiseError, .bat && .cmd File.   

