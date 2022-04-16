# Tool-Auto-Rename-Apk

Upgraded version from APK Batch Rename Tool (https://bit.ly/3xwLkQg)

-----------------------
New version by JiiPlus
-----------------------
*How to use:
1. Copy all your apk files (or folders with apk files in them) into "input" folder.You can copy folders of any size. Tool will still rename all subfolders of the input folder.
2. Double click "Rename APK.exe". Wait until it completes the job.
3. Find your newly named files in the "output" directory. The old file in the "input" folder will be deleted.

*Change [ 16-04-2022 ]:
- Can change the name containing special characters.
- The output file's whitespace is replaced by a hyphen.
- Cannot change apk file name whose original app name is Korean, Chinese, etc.
- Then the output file will lack Name or Version or ErroName.
- Open the file "RenameBuild.bat" with Notepat++ or change the extension to .txt and open it. Find line 27 and change the name you want.
-----------------------
APK Batch Rename Tool
-----------------------

APK Batch Rename Tool recursively crawls input folder and all of its subfolders
looking for Android Package files (.apk's). It reads Label and Version info 
from apk's found and creates a copy for each apk under the output folder but 
using the Label and Version info acquired.

For example a [com.example.hw.apk] will make [Hello World! 1.21.apk] provided 
that the label inside the package was set to Hello World! and version is 1.21.

The old and the new apk files are 100% the same in terms of content and are 
unchanged. Only the new copies are given new filenames. Input files are left
completely intact.

Why?
Have you ever wondered what are your 1500+ apk files with wierd names nested to
different wierd folders on your harddrive? Have you ever wanted to find an app 
but you were unable to because it had some undescriptive javaish name that made
no sense reflected no version and your apps were swept across a hundred junk 
folders anyway? Then APK Batch Rename is the tool for you! And me! :D
APK Batch Rename will set a human readable name for all your Android apps, and 
drop such a copy into a folder. You will finally be able to browse them, sort 
them alphabetically and be able to pick from versions available. 

How?
1. Copy all your apk files (or folders with apk files in them) into the input
   folder. You may copy folders of any depth. APK Batch Rename Tool will 
   recurse all subfolders of the input folder anyway.
2. Hit or click ApkBatchRename.bat . Wait until it finishes the job.
3. Find your freshly named files in the output folder. 

Simple as that!
Have fun!

PhSorx 
(phsorx@gmail.com)
(11-16-2010)



Recent Changes:
---------------------
1.01	First working version. (11-13-2010)
1.02	APK's with no version info, set to 0.0.0. (11-13-2010)
1.03	Drop (R) TM some punctuation from filenames. (11-14-2010)
1.04	Fix single quote file name truncation issue with cut|rev|cut|rev.
1.05	Revert 1.03 tr's while keeping 1.04 and check! (11-14-2010)
1.06	Same as 1.04 (11-14-2010)
1.07	Various bug fixes (11-14-2010)
	Fixed: Rev.exe fixed on nul input, bug introduced in 1.06
	Fixed: tr routine from 1.02
		tr -dc [A-Za-z0-9-_.!'~+[:blank:]]
		-_.!'~+		shows
		:;,%$&^@"	get dropped
	Fixed: double quote bug from 1.02: "0.0.0" "Unknown"
1.08	ApkRename to get proper argument parsing, help. (11-15-2010)
1.09	Optimized label fetching routine speed. (11-15-2010)
	Activity Label only fetched if Application Label was empty.
1.10	Clean ups. Release version. (11-16-2010)



Roadmap:
---------------------
1.20	Add a video tour. Youtube maybe.
1.30	Instead of overwriting start numbering wget style: Hello 1.0.apk.1
1.40	Option to select input, output dir.
1.50	Detect broken apk files. Throw better warning. Log them.
1.60	Release a linux and mac version based on feedback.
2.00	Graphic UI. Simple.
2.50	Drag & drop muliple input dirs. 
3.00	Archives (zip, rar, 7z, ...) crawled.	



Known Issues:
---------------------
1. Packages having the exact same label and version number are treated as
   duplicates and only one copy is kept in the output folder. This happens
   even if the apk's are not actually duplicates. This overwritin issue
   should be solved in version 1.30. Until then keep an eye on this.
2. Chinese, Japanese, Russian etc letters are dropped.
   (R) and TM signs are dropped.
   : ; , % $ & ^ @ " punctuations in labels are dropped.
   - _ . ! ' ~ +     punctuations in labels are kept.
3. If all characters are dropped from a filename Unknown will be used. 



EOF
RST
BYE
