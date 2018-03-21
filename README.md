BBox-Label-Tool
===============

A simple tool for labeling object bounding boxes in images, implemented with Python Tkinter.

**Updates:**
- 2017.5.21 Check out the ```multi-class``` branch for a multi-class version implemented by @jxgu1016

**Screenshot:**
![Label Tool](./screenshot.png)

Data Organization
-----------------
LabelTool  
|  
|--main.py   *# source code for the tool*  
|  
|--Images/   *# direcotry containing the images to be labeled*  
|  
|--Labels/   *# direcotry for the labeling results*  
|  
|--Examples/  *# direcotry for the example bboxes*  

Environment
----------
- python 2.7
- python PIL (Pillow)

Run
-------
$ python main.py

Usage
-----
0. The current tool requires that **the images to be labeled reside in /Images/001, /Images/002, etc. You will need to modify the code if you want to label images elsewhere**.
1. Input a folder number (e.g, 1, 2, 5...), and click `Load`. The images in the folder, along with a few example results will be loaded.
2. To create a new bounding box, left-click to select the first vertex. Moving the mouse to draw a rectangle, and left-click again to select the second vertex.
  - To cancel the bounding box while drawing, just press `<Esc>`.
  - To delete a existing bounding box, select it from the listbox, and click `Delete`.
  - To delete all existing bounding boxes in the image, simply click `ClearAll`.
3. After finishing one image, click `Next` to advance. Likewise, click `Prev` to reverse. Or, input an image id and click `Go` to navigate to the speficied image.
  - Be sure to click `Next` after finishing a image, or the result won't be saved.

  **New Feature To Add Labels**
  -----------------------------
  1. The tool now supports adding class labels to a bounding box.
  2. Each class has been assigned a number.
  3. Each bounding box has been assigned a label. If no label is specified, the box is allocated '0'.
  4. To allocate a label to a box select it from the list of bounding boxes and press the button corresponding to the class you want to allocate it to (or press the corresponding number key).
  5. Be sure to click `Next` (or `Prev` ) after finishing to save your changes.
  6. The label number to text correspondance can be changed by editing the map on `line 44` of main.py ( and changing the text on the button too!)

  *NOTE*: The text file with the bounding boxes stores the text and not the number.
  
  
  **Usage of Automation  scripts.**
  
  0. The scripts helps in automation of tasks like making seperate directories for each video file with folder names 001/002/etc, also helps in automating running  python script which helps in dividing the video into frames.
  
  1. First set executable permission to all script files.
   
> $ chmod +x  *.sh
  
  2. Now, first run ./no_of_mp4.sh to find the total no of mp4 files present.
  
>    $ ./no_of_mp4.sh
   
  3. It will return a number, now create directories using mkdir {000..00N}
  
> ex: say there are 130 files then

> $ mkdir {000..130}
 
  4. Now run copy_script.sh which moves each mp4 file to a folder.
>    $ ./copy_script.sh
  5. Now final step, run the run_script.sh, which runs the vid.py file in each and every folder.    
>   $ ./run_script.sh
>    
  All the images rendered from the folder's mp4 will be stored in that folder only.
