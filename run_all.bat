@echo off
REM Batch file to run both backend and frontend servers

REM Start backend server
start cmd /k "cd /d backend && npm install && npm start"

REM Fix styled-components version conflict and start frontend server with OpenSSL legacy provider
start cmd /k "cd /d frontend && npm install styled-components@^5.1.0 --save && npm install && set NODE_OPTIONS=--openssl-legacy-provider && npm start"
