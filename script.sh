#!/bin/bash

# Base directory
DOWNLOADS_DIR="$HOME/Downloads"
LOG_FILE="$HOME/logs/download_files_organizer.log"

# Target folders
declare -A FOLDER_MAP=(
    [jpg]="Pictures" [jpeg]="Pictures" [png]="Pictures" [gif]="Pictures" [webp]="Pictures" [avif]="Pictures" [svg]="Pictures"
    [mp4]="Videos" [mkv]="Videos" [avi]="Videos" [mov]="Videos"
    [mp3]="Audio" [wav]="Audio" [flac]="Audio" [m4a]="Audio" [opus]="Audio"
    [pdf]="Docs" [doc]="Docs" [docx]="Docs" [xls]="Docs" [xlsx]="Docs" [ppt]="Docs" [pptx]="Docs" [txt]="Docs"
    [zip]="Archives" [tar]="Archives" [gz]="Archives" [rar]="Archives" [7z]="Archives"
    [exe]="Installers" [appimage]="Installers" [deb]="Installers" [rpm]="Installers"
)

# Current date for the log
mkdir -p $HOME/logs
echo "==== $(date '+%Y-%m-%d %H:%M:%S') ====" >> "$LOG_FILE"

# Go to the downloads directory
cd "$DOWNLOADS_DIR" || {
    echo "Error : Download folder $DOWNLOADS_DIR not found" >> "$LOG_FILE"
    exit 1
}

# Loop through all files
for file in *; do
    if [[ -f "$file" ]]; then
        extension="${file##*.}"
        extension_lower=$(echo "$extension" | tr '[:upper:]' '[:lower:]')

        folder=${FOLDER_MAP[$extension_lower]}
        if [[ -n "$folder" ]]; then
            mkdir -p "$DOWNLOADS_DIR/$folder"
            mv "$file" "$DOWNLOADS_DIR/$folder/"
            echo "Moved : $file → $folder/" >> "$LOG_FILE"
        else
            mkdir -p "$DOWNLOADS_DIR/Other"
            mv "$file" "$DOWNLOADS_DIR/Other/"
            echo "Moved : $file → Other/" >> "$LOG_FILE"
        fi
    fi
done

echo "Organization complete." >> "$LOG_FILE"
echo -e "\e[32mCheck the log file at $LOG_FILE for details.\e[0m"
# End of script