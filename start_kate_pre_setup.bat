@echo off
powershell -Command "Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force"
powershell -ExecutionPolicy Unrestricted -File "%~dp0pre_installations_for_kate.ps1"
