@echo off
REM コードページをUTF-8に設定
chcp 65001 >nul

REM 引数が指定されていない場合、エラーを表示して終了
if "%~1"=="" (
    echo コミットメッセージを指定してください。
    echo 使用例: git_commit_push.bat "コミットメッセージ"
    exit /b 1
)

REM カレントディレクトリの確認
echo 現在のディレクトリ: %cd%

REM git add
echo ファイルをステージング中...
git add .

REM git commit
echo コミットメッセージ: %~1
git commit -m "%~1"

REM git push
echo リモートリポジトリにプッシュ中...
git push

REM 終了メッセージ
echo プッシュが完了しました。
pause
