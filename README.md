# img_checker

[![Build Status](https://travis-ci.org/Abhi2424shek/img_checker.svg)](https://travis-ci.org/Abhi2424shek/img_checker)
[![Build Status](https://app.snap-ci.com/Abhi2424shek/img_checker/branch/master/build_image)](https://app.snap-ci.com/Abhi2424shek/img_checker/branch/master)
[![Gem Version](https://badge.fury.io/rb/img_checker.svg)](https://badge.fury.io/rb/img_checker)

Simple Linter to verify image sizes.

### How to use it?
Require the gem to be there:
`require img_checker`
or place it on your Gemfile
`gem 'img_checker'`

Then just put an img_config.yml at the root of the project.

### Format of the img_config.yml file
The img_config.yml file is used to hold the directories to scan for images
and also to hold the maximum size (width and height) an image can hold in a directory

This is the basic structure for a img_config entries:
```
- directory: <directory_path>
   width: <Max width for the images in the above directory>
   height: <Max height for the images in the above directory>
```

[Example](https://github.com/Abhi2424shek/ImageSizeLinter/blob/master/lib/img_config.yml)

**Note**: The image sizes must be specified in pixels although the units shouldn't be specified.

If you only want to scan specific files then change `./foo/*.*` to `./foo/*.extension` or
`./foo/imagename.extension`, to scan sub directories as well `./fool/**/*.*`.
