# starship prompt 设置
Invoke-Expression (&starship init powershell)

# 补全
# 需要 Set-PSReadline 版本>=2.1
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete # 启用
Set-PSReadLineOption -BellStyle None # 关闭补全提示音
Set-PSReadLineOption -PredictionSource History # 启用类似 zsh autosuggestion 的功能
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

# 快捷键
Set-PSReadLineKeyHandler -Chord Ctrl+e -Function MoveToEndOfLine
Set-PSReadLineKeyHandler -Chord Ctrl+a -Function GotoFirstNonBlankOfLine
Set-PSReadLineKeyHandler -Chord Ctrl+w -Function BackwardDeleteWord
Set-PSReadLineKeyHandler -Chord Ctrl+u -Function DeleteLine
# Set-PSReadLineKeyHandler -Chord Ctrl+d -Function ViExit


# git 快捷键设定
function gss {
    git status -s $args
}
function gaa {
    git add --all $args
}
function gc {
    git commit -v $args
}
function gp {
    git push $args
}
function gcl {
    git clone --recurse-submodules $args
}


# 常用命令封装
Set-Alias touch New-Item