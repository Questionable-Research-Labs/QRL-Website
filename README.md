# Getting started

## How to use github/git
> Most of you can skip this section, the following instructions should be executed in the project directory.

Before anything, you must download the repository containing the website. If not, no problems, here is a basic guide.

First of all open a command prompt and execute `git --version` to verify that you have it installed. If not, download from [here](https://git-scm.com/downloads). Once done, open a command prompt in the desired directory for the project to be downloaded to.

> The best way to do this on windows is to type `cmd` in the file explorer Address bar.

Now, run these commands to download the repository:
```
git clone https://github.com/Questionable-Research-Labs/QRL-Website
cd QRL-Website
```
The repository with all the website code is now downloaded and you can get started setting up your Environment.

## Environment
This website uses [Jekyll](https://jekyllrb.com/) to pre-compile the site into a static format. To preview the site, you must install it along with it's dependencies.

### Ruby
Go [here](https://www.ruby-lang.org/en/documentation/installation/#rubyinstaller) and install for the correct operating system (Use [ruby installer](https://www.ruby-lang.org/en/documentation/installation/#rubyinstaller) for windows). This should mean you get output from:
`ruby -v`

### Jekyll
To install, use the now installed gem command:

`gem install bundler jekyll`

Then, install all the dependencies of this site:

`bundle install`

### Running the dev server

To test out the formatting of the project you are going to write and that everything is working, you need to start the Jekyll development server by running this command:

`bundle exec jekyll serve`

It is also recommended that you use live reload with the server, so use:

`bundle exec jekyll serve -l`

You should now see the website at [localhost:4000](http://localhost:4000)

## Writing your project

### Setting up your project
To add your project to the site, you need to do three things:

1. Create a file called `your-project-name-here.md` in the `_projects` folder. 
2. Head that markdown file with this metadata:
```
---
title: Your project name here
author: Your name and any other major people (use Questionable Research Labs if N/A)
date: month dayNum, year
color: "#some random hex colour that isn't neon"
thumbnail: "/project-assets/your-project-name-here/thumbnail-o.jpg"
layout: default
description: Wow, you should change this to describe your project. This is displayed in the project archival page.
---
```
3. Create a folder called `your-project-name-here` in the `project-assets` folder, this is where you can put your photos, and any other assets you want.

### Actually writing it

It is recommend that you write your project up in a normal word processor, and then formate it other into a markdown editor like [VS-Code](https://code.visualstudio.com/) or [Sublime Text](https://www.sublimetext.com/). You can use tools like [docs to markdown](https://gsuite.google.com/u/0/marketplace/app/docs_to_markdown/700168918607?hl=en&pann=docs_addon_widget) to ease this process.

If you want, you can directly embed html/css/js into the markdown, if possible, use markdown, but it is always an option if you wanted, for example, embed a Youtube video.

### Chose your thumbnail

You need to chose a photo to use as a thumbnail, this photo will be gray-scaled so the colour dose not matter. Some suggestions:

- Always use a physical photo or render, don't use a screenshot. If need be you can use a photo of your screen or an generic image.
- It needs to look good at 400x800 resolution (Don't use super detailed images, portrait images will be center cropped)
### Before publishing

Before you publish your new project, the last step to do is to get it web ready by compressing the photos and thumbnail.

This has been automated so their is consistent styling across the website.

To use the automated process, first make sure you have got all of your images in your `project-assets\your-project-name-here` folder. Next go to the site root and to the `photo-compressor` folder. Finally double check you have python3 and pip installed.

If your on windows, run the `start.bat`, if on linux, run the shell script `start.sh`. This will install dependencies, and ask you to select your thumbnail and the rest of the photos used.

It will compress and format the photos and place them in the originating directory with the `*-o.*` format, and name the thumbnail `thumbnail-o.*`.

### Publishing your project

To publish your new project to the website, just commit, push and the site will auto-rebuild. For the people who don't know how to, here is a quick guide again:

In order and from a terminal in the base of the website, run:
```bash
git add . #Stages all your new files
git commit -m "Added project your-project-name-here to the site"
git pull #Pulls any new changes from the remote repository
git push #Pushes your new commit with your changes to the remote repository
```
All done, in a minute, your changes should be live! If not, check what went wrong [here](https://github.com/Questionable-Research-Labs/QRL-Website/deployments/activity_log?environment=github-pages).

# Additional info

## Hosting - GitHub Pages

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in the qrl website, from the content of your Markdown files and theme files. You can find the output of the process [here](https://github.com/Questionable-Research-Labs/QRL-Website/deployments/activity_log?environment=github-pages).

## Markdown

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold**, _Italic_ and `Code` text

[Link](url) and ![Image](src "Tool tip")
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

There is plenty more features, if you want to have a feature, it likely exists already.
