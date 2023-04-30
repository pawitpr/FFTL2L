# Fast File Transfer Linux to Linux (FFTL2L)

FFTL2L is a fast file transfer tool that allows you to transfer files between Linux systems without relying on high-level protocols like TCP or UDP. It uses system calls to achieve faster transfer speeds compared to traditional file transfer protocols like FTP.

## How to Use

To use FFTL2L, follow these steps:

1. Clone this repo to your machine
2. Give the permision to the file `chmod +x tr.sh`
3. Transfer your Files
# On the receiving machine:
```bash
$ bash server.sh 1234
Waiting for a connection on port 1234...
```
# On the sending machine:
```bash
$ bash client.sh 192.168.1.100 1234 file.txt
``` 
5. The file transfer will begin, and you will be able to see the transfer progress in the terminal.

## Features

- Fast file transfer speeds using system calls
- No need to rely on high-level protocols like TCP or UDP
- Simple and easy-to-use command line interface
- Supports file transfer between Linux systems

## Limitations

- Only supports file transfer between Linux systems
- May not be as reliable as high-level protocols like TCP or UDP
- Only support Linux system
## License

FFTL2L is licensed under the [MIT License](https://opensource.org/licenses/MIT). You are free to use, modify, and distribute the software as you see fit. 

## Credits

FFTL2L was developed by [Your Name Here] as a personal project. If you have any questions or feedback, please reach out to me at [Your Email Address].

