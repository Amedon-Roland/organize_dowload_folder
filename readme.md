# 📁 Download Organizer

A simple and efficient bash script to automatically organize your downloaded files by type.

## ✨ Features

- **Automatic organization**: Sorts your files by extension into dedicated folders
- **Full logging**: Records all operations with timestamps
- **Multi-format support**: Images, videos, audio, documents, archives, and installers
- **Error handling**: Checks if the Downloads folder exists
- **"Others" folder**: Unrecognized files are automatically sorted

## 🗂️ Organization Structure

The script organizes your files into the following folders:

| File Type      | Supported Extensions                      | Destination Folder |
| -------------- | ----------------------------------------- | ------------------ |
| **Images**     | jpg, jpeg, png, gif, webp, avif, svg      | `Pictures/`        |
| **Videos**     | mp4, mkv, avi, mov                        | `Videos/`          |
| **Audio**      | mp3, wav, flac, m4a, opus                 | `Audio/`           |
| **Documents**  | pdf, doc, docx, xls, xlsx, ppt, pptx, txt | `Docs/`            |
| **Archives**   | zip, tar, gz, rar, 7z                     | `Archives/`        |
| **Installers** | exe, appimage, deb, rpm                   | `Installers/`      |
| **Others**     | All other formats                         | `Other/`           |

## 🚀 Installation & Usage

### Prerequisites

- Linux system with bash
- Existing `~/Downloads` folder

### Installation

1. **Clone the repository**

   ```bash
   git clone https://github.com/Amedon-Roland/organize_dowload_folder.git
   cd organize_dowload_folder
   ```

2. **Make the script executable**

   ```bash
   chmod +x script.sh
   ```

3. **Run the script**
   ```bash
   ./script.sh
   ```

### Automation (optional)

To run the script automatically, add it to your crontab:

```bash
# Run every hour
0 * * * * /path/to/script.sh

# Run every day at 11:00 PM
0 23 * * * /path/to/script.sh
```

## 📋 Logging

The script generates a detailed log file in `~/organiser_telechargements.log` containing:

- Timestamp of each execution
- List of all moved files
- Destination of each file
- Any error messages

Example log:

```
==== 2025-05-29 14:30:15 ====
Moved: document.pdf → Docs/
Moved: photo.jpg → Pictures/
Moved: video.mp4 → Videos/
Organization complete.
```

## 🎯 Supported Platforms

- ✅ **Linux** - Current version
- ⏳ **Windows** - In development

> 🚧 **Coming soon**: A PowerShell version for Windows will be available soon!

## 🤝 Contributing

Contributions are welcome! Feel free to:

- Report bugs
- Suggest new features
- Improve documentation
- Add new file types

## 📝 License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## 🛠️ Support

If you encounter issues or have questions:

- Open an issue on GitHub
- Check the logs in `~/logs/download_files_organizer.log`
- Make sure the `~/Downloads` folder exists

---

**Made with ❤️ by [RolandTech](https://github.com/Amedon-Roland)**

> ⭐ If this project helps you, please consider giving it a star on GitHub!
