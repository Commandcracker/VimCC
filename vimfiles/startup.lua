shell.setCompletionFunction(
    fs.getDir(shell.getRunningProgram()).."/bin/vim", 
    function(shell, index, text)
        if index == 2 then return end
        return fs.complete(text, shell.dir(), true, false)
    end
)
