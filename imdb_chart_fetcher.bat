@echo off

if "%1"=="" goto :help
if "%2"=="" goto :help

set chart_url=%1
set items_count=%2

:: echo Chart_Url is : %chart_url%
:: echo items_count is : %items_count%
:: set api_url=%chart_url%/%2


curl -L -H "Accept: application/json" %chart_url%



goto :eof

:help
echo Usage : imdb_chart_fetcher chart_url items_count (chart_url is url for fetching imdb movies chart)