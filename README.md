# Checksum-Verification-PS1

<div align="center">
  
<img src="https://img.shields.io/badge/powershell-5391FE?style=for-the-badge&logo=powershell&logoColor=white" /> <br/> 
<img src="https://img.shields.io/badge/Made_by-8comma1-blue" /> 
![GitHub followers](https://img.shields.io/github/followers/nestorcuevas)
![GitHub Repo stars](https://img.shields.io/github/stars/nestorcuevas/Checksum-Verification-PS1)
![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/y/nestorcuevas/Checksum-Verification-PS1)
![GitHub commits since latest release (by SemVer including pre-releases)](https://img.shields.io/github/commits-since/nestorcuevas/Checksum-Verification-PS1/latest/main)

</div>




## Description
This PowerShell script, calculates the checksum of a file using different algorithms. It provides options to choose from four different hashing algorithms: MD5, SHA1, SHA256, and SHA512.

## Usage

1. The script prompts the user to enter the file path of the file to calculate the checksum for.
2. Next, the user selects the desired algorithm for the checksum calculation.
3. The script calculates the checksum of the file using the selected algorithm and displays the result in the corresponding algorithm-specific color.
4. The user is then given the option to check another file or exit the script.
5. If the user chooses to check another file, the process is repeated from step 1.
6. If the user decides to exit, the script displays a farewell message and terminates after waiting for a key press.
7. The script also encourages the user to go forth and do great things!

**Algorithm Choices:**
- MD5 (Yellow)
- SHA1 (Cyan)
- SHA256 (Magenta)
- SHA512 (Green)

> Note: The file path is checked for existence, and if it is invalid, the user is prompted to enter a valid path. Quotes around the file path can be used as in the case of copying the filepath from a Windows file

> This script was created by **nestorcuevas**. Go forth and do great things!


## What is a Checksum?

A checksum is a value derived from a set of data that is used to detect errors during data transmission or storage. It is typically a simple mathematical calculation performed on the data, resulting in a fixed-size value. This value is then compared to a previously calculated checksum or transmitted checksum to verify the integrity of the data.

The purpose of a checksum is to ensure that data has not been corrupted or modified during its transmission or storage. When data is transmitted over a network or written to a storage medium, there is always a possibility of errors occurring due to noise, interference, or hardware/software issues. By comparing the calculated checksum with the expected checksum, it is possible to determine if the data has been altered in any way.

Checksums are widely used in various applications, including network protocols, file transfer protocols, error detection and correction algorithms, data integrity checks, and cryptographic algorithms. They provide a quick and efficient method for error detection, enabling the identification of corrupted or tampered data.

Commonly used checksum algorithms include cyclic redundancy check (CRC), message digest algorithms (such as MD5 and SHA-1), and cryptographic hash functions (such as SHA-256). The choice of checksum algorithm depends on the specific requirements of the application, including the desired level of error detection and the computational overhead involved.

## Why Check the Checksum of a File for Security

Checking the checksum of a file can help ensure its security in several ways:

1. **Data Integrity:** Verifying the checksum of a file allows you to confirm that the file has not been altered or corrupted during transmission or storage. If the calculated checksum matches the expected checksum, it provides a strong indication that the file has remained intact and has not been tampered with.

2. **Detection of Malicious Modifications:** By comparing the checksum of a file with the expected checksum, you can detect any unauthorized modifications made to the file. If the checksums do not match, it suggests that the file may have been maliciously altered, potentially indicating the presence of malware, unauthorized changes, or tampering.

3. **File Authenticity:** In some cases, a checksum can be used to verify the authenticity of a file. By comparing the checksum with a trusted source or a known checksum value provided by the file creator, you can confirm that the file has not been tampered with and originates from a trusted or verified source.

4. **Prevention of Data Corruption:** By identifying corrupted files through checksum verification, you can take necessary measures to rectify or replace them before they cause problems or propagate errors in systems or processes that rely on the file's integrity.

It's important to note that while checksum verification is a useful security measure, it is not a comprehensive solution on its own. It primarily helps with error detection and integrity verification. For stronger security, additional measures such as digital signatures, encryption, and secure file transfer protocols may be necessary depending on the specific security requirements of your application or use case.
