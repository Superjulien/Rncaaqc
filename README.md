# Random Quote and Cow ASCII Art Generator

[![Version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://github.com/Superjulien/rncaaqc) [![Shell](https://img.shields.io/badge/Shell_Script-grey?&logo=gnu-bash&logoColor=white.svg)](https://en.wikipedia.org/wiki/Unix_shell)

This is a Bash script that generates a random quote and a randomly selected ASCII art image or a cow image, depending on the user's input. It can display either one or two sets of image and quote, depending on the input arguments.

## Usage

The script takes two optional command-line arguments:
```
$ bash rncaaqc.sh [neofetch|cowsay] [neofetch|cowsay]
```
The first argument specifies the program to use (neofetch or cowsay). If neofetch is selected, the script will display a randomly selected ASCII art image using the neofetch program. If cowsay is selected, it will display a randomly selected cow image and a quote using the cowsay program.

The second argument is optional and specifies whether to display a second set of image and quote using the same program. If a second argument is provided, the same program must be used as the first argument.

If no arguments are provided, the script will prompt the user to input the desired program (neofetch or cowsay).

The location of the quotations file (quotation.txt) needs to be modified in the script. By default, the script uses the path /Folder/quotation.txt to access the quotations file. Therefore, it is important to modify this value to correspond to the actual location of the file on your system.

To do this, you can edit the script and modify the variable puff to contain the absolute path of the quotation.txt file on your system. For example, if your quotation.txt file is located in your home folder, you can modify the puff variable as follows:
```
puff=~/quotation.txt
```
Make sure that the path you specify is correct and that the quotations file is present at that location on your system.

## Image and Quote Sources

The ASCII art images are stored in an array called neo, and the cow images are stored in an array called cow. Each image is named after the animal or object it depicts and has a .ascii file extension. The images were sourced from various websites and online repositories of ASCII art.

The quotes are stored in a file called quotation.txt. The file contains a list of quotes from various sources, separated by newline characters.

## Random Selection of Images and Quotes

The script uses the shuf command to select a random quote from quotation.txt. It then uses the /dev/urandom command to generate random numbers between 0 and 9, which are used to select a random image from the neo or cow array. The selected image is then passed to the selected program (neofetch or cowsay) along with the quote.

## Examples

Here are some example commands to run the script:

### Display a random cow and quote using cowsay
```
$ bash rncaaqc.sh cowsay
```
### Display a random ASCII art using neofetch
```
$ bash rncaaqc.sh neofetch
```
### Display a random cow and quote using cowsay, and then display a random ASCII art using neofetch
```
$ bash rncaaqc.sh cowsay neofetch
```
## Compatibility

This script should work on most Unix-like operating systems, including Linux and macOS. It requires the cowsay and neofetch programs to be installed.
```bash
sudo apt update && sudo apt upgrade -y
sudo apt install cowsay neofetch
```

## Support
For support email : 

[![Gmail: superjulien](https://img.shields.io/badge/Gmail-Contact%20Me-red.svg)](mailto:contact.superjulien@gmail.com) [![Tutanota: superjulien](https://img.shields.io/badge/Tutanota-Contact%20Me-green.svg)](mailto:contacts.superjulien@tutanota.com)

## Documentation

- [Cowsay](https://linux.die.net/man/1/cowsay)
- [Neofetch](https://github.com/dylanaraps/neofetch)
- [ASCII Art](https://textkool.com/fr)
