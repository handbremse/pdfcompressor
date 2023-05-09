# Free PDF Compressor for Macintosh and Linux

PDF files can often take up a lot of space, making it difficult to share or upload them. While there are many expensive options available, free tools on the internet can also raise privacy concerns. This repository provides a free and secure solution to compress PDF files using Ghostscript.

## Download and Install Ghostscript

Before you can use the script, you need to download and install Ghostscript https://www.ghostscript.com/.

> Ghostscript is an interpreter for the PostScript® language and PDF files. It is available under either the GNU GPL Affero license or licensed for commercial use from Artifex Software, Inc. It has been under active development for over 30 years and has been ported to several different systems during this time. Ghostscript consists of a PostScript interpreter layer and a graphics library.

### Step 1: Install Brew

If you don't already have it, you can install Brew by going to https://brew.sh and following the instructions.

### Step 2: Install Ghostscript

Once you have Brew installed, open up your terminal and type:

```
brew install ghostscript
```

## How to Use

1. Download or clone this repository.
2. Move the `pdfcompressor.sh` script to the folder where your PDF files are located.
3. Open your terminal and navigate to the folder containing the `pdfcompressor.sh` script.
4. Make the `pdfcompressor.sh` script executable by running the command:

```
chmod u+x pdfcompressor.sh
```

5. Finally, run the `pdfcompressor.sh` script by typing:

```
./pdfcompressor.sh
```

The script will automatically create a new folder called "compressed" and place the compressed PDF files inside it.

## Contributions

If you have any suggestions or improvements, please feel free to submit a pull request or open an issue. We welcome contributions from the community!
