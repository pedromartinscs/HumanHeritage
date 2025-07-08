@echo off
set TEXBIN=%APPDATA%\TinyTeX\bin\windows
set PATH=%PATH%;%TEXBIN%

echo Using TEXBIN: %TEXBIN%
where pdflatex

echo Generating LPC PDF...
pandoc lpc.md -o LPC_v1.0.pdf --pdf-engine=pdflatex

IF %ERRORLEVEL% EQU 0 (
    echo ✅ PDF generated successfully: LPC_v1.0.pdf
) ELSE (
    echo ❌ PDF generation failed.
)