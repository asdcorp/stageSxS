stageSxS
========
A collection of scripts for CBSS-style staging of Windows 11 Enterprise (10.0.22000.1) images.

Usage
-----
Run `cbss.cmd` to stage an image, or `cbsscapture.cmd` to stage and capture to `install.wim`.

These scripts require a fast drive (such as RamDisk) mounted on X: which will be formatted during the operation.
Before executing a desired script you need to retrieve the following dependencies from UUP and extract to `sxs` directory:
 * Microsoft-Windows-Foundation-Package
 * Microsoft-Windows-EditionSpecific-Professional-Package
 * Microsoft-Windows-EditionSpecific-Professional-WOW64-Package
 * Microsoft-Windows-Client-Desktop-Required-Package
 * Microsoft-Windows-Client-Desktop-Required-WOW64-Package
 * Microsoft-Windows-Client-Features-Package
 * Microsoft-Windows-Client-Features-WOW64-Package
 * Microsoft-Windows-EditionPack-Professional-Package
 * Microsoft-Windows-EditionPack-Professional-WOW64-Package
 * Microsoft-Windows-RegulatedPackages-Package
 * Microsoft-Windows-RegulatedPackages-WOW64-Package
 * Microsoft-Windows-Not-Supported-On-LTSB-Package
 * Microsoft-Windows-Not-Supported-On-LTSB-WOW64-Package
 * Microsoft-Windows-Required-ShellExperiences-Desktop-Package
 * Microsoft-Windows-Required-ShellExperiences-Desktop-WOW64-Package
 * Microsoft-Windows-Client-LanguagePack-Package (en-US)

License
-------
The project is licensed under the terms of the GNU General Public License v3.0
