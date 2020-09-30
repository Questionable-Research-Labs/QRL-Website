from PIL import Image
import PIL
import os
import sys
import glob
import tkinter
from tkinter import filedialog, messagebox

maxHorizontalResolution = 1500
thumbnailResolution = (800,450)

def compress_thumbnail(filename):
	imageSource = Image.open(filename)
	print("Image size: ",imageSource.size)

	imageCompressed = imageSource.resize((thumbnailResolution[0],int(imageSource.size[1]*(thumbnailResolution[0]/imageSource.size[0]))), reducing_gap = 3)

	cropCords = (0,int((imageCompressed.size[1]-thumbnailResolution[1])/2),thumbnailResolution[0],int((imageCompressed.size[1]-thumbnailResolution[1])/2 + thumbnailResolution[1]))
	imageCompressed = imageCompressed.crop(cropCords)
	
	imageCompressed = imageCompressed.convert(mode="L") #BW conversion

	print("Filename:",filename,", Dir:",os.path.dirname(filename))
	resizedImageFileName = os.path.dirname(filename) + "/thumbnail_o." + filename.split(".")[-1:][0]
	print("Resized filename",resizedImageFileName)
	imageCompressed.save("".join(resizedImageFileName), optimize=True, quality=60)

def compress_image(filename):
	imageSource = Image.open(filename)

	if imageSource.size[0] > maxHorizontalResolution: #Caps resloution to stop people from uploading 50 Gig images
		resize = (maxHorizontalResolution,int(imageSource.size[1]*(maxHorizontalResolution/imageSource.size[0]))) #Keeps aspect ratio
		imageCompressed = imageSource.resize(resize, reducing_gap = 3)
	else:
		imageCompressed = imageSource #No need to compress
	
	resizedImageFileName = filename.split(".")
	resizedImageFileName.insert(len(resizedImageFileName)-1,"_o.")

	imageCompressed.save("".join(resizedImageFileName), optimize=True, quality=60)

def get_image_paths():
	root = tkinter.Tk()
	root.withdraw()

	startingDirectory = __file__
	try: #Get starting directory
		siteRoot = os.path.dirname(os.getcwd()+__file__)
		startingDirectory = siteRoot + "\\project-assets"
	except Exception:
		pass
	print("Site root: ",siteRoot,", Starting directory: ",startingDirectory," File:",__file__)

	messagebox.showinfo("Thumbnail","Please select your thumbnail image to be compressed")
	thumbnailPath = filedialog.askopenfilename(
		parent=root,
		initialdir=startingDirectory,
		title='Choose a file'
		)

	if thumbnailPath != "":
		startingDirectory = os.path.dirname(thumbnailPath) #Start at location of other image

	messagebox.showinfo("Images","Please select the rest of your images to be compressed")
	imagePaths = list(filedialog.askopenfilenames(
		parent=root,
		title='Choose a file',
		initialdir=startingDirectory
		))
	
	return (imagePaths,thumbnailPath)

def main():
	imagesToCompress, thumbnailToCompress = get_image_paths()
	if thumbnailToCompress != "":
		print("Compressing Thumbnail")
		compress_thumbnail(thumbnailToCompress)
	if len(imagesToCompress) > 0:
		print("Compressing rest of images")
		for image in imagesToCompress:
			compress_image(image)
	print("Done.")
if __name__ == "__main__":
	main()