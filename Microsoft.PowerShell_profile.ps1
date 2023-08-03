Function Start-WslDocker {
  wsl docker $args
}

Function Start-WslDockerCompose {
  wsl docker-compose $args
}

Set-Alias -Name docker -Value Start-WslDocker
Set-Alias -Name docker-compose -Value Start-WslDockerCompose

Function Service-Wsl {
  wsl sudo service $args
}

Set-Alias -Name service -Value Service-Wsl
