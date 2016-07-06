## 0.9.9.5.1 (beta)

22, Jun, 2016

1. Fix a critical bug that the indent in multi-level lists may keep increasing after save.

## 0.9.9.5 (beta)

21, Jun, 2016

1. Fix a critical bug that the indents of multi-level lists are wrong when parsing and generating markdown source.
2. Better ECMAScript6 syntax highlight support for javascript code fences. Add syntax highlight support for NSIS, JSX ([React](http://facebook.github.io/react)'s JavaScript syntax extension), vue, LiveScript, mathematica, properties (and .ini), tiki wiki, dockerfile in code fences.
3. Hide auto-complete lists when scrolling.
4. Fix internal link to heading (like [this](#0.9.4.5-(beta))) not work.
5. Fix a bug sometimes, pasting would append duplicate texts.
6. Rule change: capitalized characters are not allowed in filenames for theme css file
7. Support single column table in insert table dialog.
8. Add enabled optional inline style support, like highlight or inline math, in menubar.

## 0.9.9.4.4 (beta)

15, Jun, 2016

1. Fix style that sometimes user can see script content.
2. Fix auto pair match inside image and avoid glitch when complete brackets.
3. Fix paste table, and paste inside footnotes.
4. Fix `]` cannot be escaped in footnotes.
5. Fix `cmd+6` not working on OS X, and `h6` indent inside `[TOC]`.
6. Fix multiple level lists inside blockquote cannot be parsed correctly.
7. Enable ESC key to close insert table dialog.
8. Fix outline sidebar jumpping around when scrolling.
9. Fix cmd+up/down not trigger scrolling.

## 0.9.9.4 (beta)

1, Jun, 2016

1. Make quick look up (three finger tap) work on Typora.
2. Fix a critical bug about saving in source code mode.
3. Improve logic for auto match paired quotes and brackets.
4. Fix inline math cannot be exported to some file types via pandoc.
5. Fix a bug that improper file name is auto generated when the article contains YAML forn matters.

## 0.9.9.3.5 (beta)

27, May, 2016

1. Add mobile "responsive" support for exported HTML.
2. Pandoc requires 1.16 and above. Fix exporting fail using Pandoc.
3. Avoid unnecessary dialogs when update file content changed by external apps.
4. Fix shortcut keys for `h6` not working.
5. Add syntax highlight for Powershell. 
6. Remember windows size when creating new window.
7. Fix file cannot be saved in txt or other file extensions.
8. Fix a critical bug in paste/undo which may case data lose.
9. Make `\label` work in math block.
10. Fix unnecessary empty char in inserted footnote.
11. Fix auto pair match and find/replace in math block.
12. Fix up/down key behavior on code fences.
13. Fix some HTML code (like `&phone;`) not escaped in inline code.
14. Other bug fix.

## 0.9.9.3 (beta)

5, May, 2016

1. Add pandoc integration, import function and export function for docx, rtf, LaTeX, etc.
2. Able to open `.md` file or import supported files by drag and drop into typora's doc icon or window.
3. Fix `H4` style in `pixyll` theme.
4. Fix sql mode error for code blocks.
5. Fix a bug for parsing headers with underline style.
6. Fix a bug for undo/redo for editing lists.
7. Fix a bug when pasting lists.
8. Other bug fix.

## 0.9.9.2.5 (beta)

23, Apr, 2016

1. Fix LaTeX is not correctly exported after opening existing files.
2. Fix a bug which may cause content inside list items get lost.
3. Fix wrong indent for content inside list after parsing raw markdown.
4. Support "Open File Location" action.
5. Fix a bug menu items under "File" menu cannot be enabled/disabled correctly.
6. Fix a bug that if image path contains special chars like quotes, the image cannot be displayed correctly.
7. Fix another crash problem and improve stability.
8. Fix a bug on pasting list.

## 0.9.9.2.1 (beta)

18, Apr, 2016

1. Fix some crashes after 0.9.9.x 

## 0.9.9.2 (beta)

17, Apr, 2016

1. Fix a bug sometimes a line will be duplciated after open.
2. Fix a bug that the file is still occupied even after window close.
3. Fix a bug typora will crash when opening exisiting file.
4. Fix a bug that the position of quick open dialog is wrong.

## 0.9.9.1 (beta)

6, Apr, 2016

1. Fix a critical bug for saving.
2. Fix a critical bug for task list.

## 0.9.9.0 (beta)

4, Apr, 2016

1. Rewrite typora's Markdown parse engine and largely improve the performance on opening mid-sized files.
2. Add simple "Quick Open" feature to allow users to open files quickly from recent files, current folder or context folder.
3. Support word count in selection. (Select a range of text and open word-count panel).
4. Support pin window on top. Fix shortcut key for "fullscreen".
5. Fix bugs for pair auto-complete.
6. Fix bugs for Korean IME.
7. Fix a bug that typora will eat and replace non-breaking space.
8. Fix a bug that outline is not clickable in exported HTML.
9. Fix relative image path on exported HTML.
10. Able to generate filenames automatically when exporting PDF.
11. Other bugs.

## 0.9.8.8 (beta)

13, Mar, 2016

1. Fix minor parse issue for URL, subscript and superscript.
2. Fix compatibility issue between Chinese IME and auto-pair feature
3. Include and autoload MathJax extension, including chemistry package and others (e.g. $\ce{C6H5-CHO}$).
4. Other bug fix.

## 0.9.8.7 (beta)

3, Mar, 2016

1. Support ==highlight== syntax (should enable it from preference panel).
2. Support auto complete pairs of brackets, quotes and parentheses.
3. Fix bugs on lists.
4. Fix bugs for drag and drop images in same folder. 
5. Fix bugs related to auto correction. Fix tab key.
6. Fix selection styles in code fences, python code in code fences will use 4-space indent.
7. Fix customize font size not work for exported HTML/PDF.
8. Fix bugs for LaTeX editing/rendering.
9. Auto insert path/urls from clipboard when insert images/hyperlinks from menubar or shortcut keys.
10. Fix bugs related to up/down key and text selection.
11. Other bug fix.

## 0.9.8.6 (beta)

21, Feb, 2016

1. Fix critical bug for inputing whitespace in headers.
2. Change default text alignment back to left-align. Pixyll and Gothic theme will use full justification.
3. Fix a small bug on exported HTML.
4. Update Sparkle framework to prevent HTTP MITM vulnerability.

## 0.9.8.5 (beta)

21, Feb, 2016

1. Add basic support for editing in source code mode directly.
2. Support signle line break (shift+return).
3. Improve LaTeX rendering quality.
4. Fix bugs on basic theme and improve design of theme gothic.
   (Old css files are backed-up under "old-theme" folder under user's theme folder).
5. Fix bug that tab+subbullet will be parsed as code fences.
6. Fix syntax highlight support for PHP, SQL, Objective-c, and add support for CQL, mariadb, etc.
7. Fix ctricial bug for Finish IME.
8. Fix jump to top/bottom not work in some cases.
9. Fix bugs in find/replace.
10. Correct typo in prefernece panel and fix other small bugs.

## 0.9.8.1 (beta)

3, Jun, 2016

1. Fix a critical bug.

## 0.9.8 (beta)

26, DEC, 2015

1. Fix the bug image drag & drop not work.
2. Support grammar checking, and user can perform spell&gramma check on whole document by shortcut key `⌘+;`.
3. Fix syntax parse for task list.

## 0.9.7.9 (beta)

16, DEC, 2015

1. Fix the bug sometimes shortcut keys does not work.
2. Fix the bug TextExpander popup and fill does not work with Typora.
3. Fix the bug copy/paste cannot work in context menu.

## 0.9.7.8 (beta)

14, DEC, 2015

1. Fix a crucial bug when using IME on Typora.
2. Improve styles when paste to rich editor.
3. Fix bugs related to email and link syntax.
4. Fix option+arrow key in inline math.
5. Fix copy, paste & select in save dialog.
6. Typora will use `https` to check and download updates.
7. We will release beta on Windows in near future :)

## 0.9.7.5 (beta)

30, NOV, 2015

1. Fix bug that outline panel cannot be scrolled.
2. Fix bug that some shortcut keys does not work after new window is opened.
3. Fix bugs related to email auto-detection.
4. Fix bug that spell check cannot be turned off.

## 0.9.7.4 (beta)

28, NOV, 2015

1. Support Find & Replace.
2. Support background color and TOC in exported PDF.
3. Able to toggle outline view from menu.
4. Relative path support for image drag & drop. 
5. Add function to reveal image in finder from context menu.
6. Bug fix about list bullet and task list.
7. Fix several bugs related to CKJ IME.
8. Shortcut keys to insert rows for table.
9. Fix bug for crashes when click menu item.
10. Fix knowns compatibility issues on OS X 10.11.1. 
11. Other bug fix.

## 0.9.7 (beta)

20, OCT, 2015

1. Support <u>underline</u> (`<u>underline</u>`).
2. Allow user to set `copy markdown source code` as default copy behavior.
3. Add function to copy in HTML code format.
4. Recognize code block by `\t` when pasting or open file.
5. Fix bug that img with relative path not shown on exported PDF/HTML.
6. Fix the bug that sometimes list mark disappears.

## 0.9.6.8 (beta)

12, OCT, 2015

1. Fix compatibility issues on El Capitan, including word count, outline button can not shown, images cannot display, etc.
2. Support reference images.
3. Auto refresh local images if they are modified.
4. Fix bug that some code highlight become unavailable after last update.
5. Fix bugs for editing on a range of text.
6. Improve speed and performance.
7. Fix bugs for exported HTML and PDF.
8. Other bug fix.

## 0.9.6 (beta)

30, AUG, 2015

1. Add academic feature: inline math support.
2. Add academic feature: subscript and superscript.
3. Won't escape HTML tags when export to HTML/PDF.
4. Add code highlight for R, D, diff, Erlang, http, jade, reStructuredtext, rust, jinja2, asp, jsp, erb, ejs.
5. Other bug fix and performance improvement.

## 0.9.5.7 (beta)

9, AUG, 2015

1. Fix a crucial bug for saving lists.
2. Fix a crucial bug for saving table contents.

## 0.9.5.6 (beta)

2, AUG, 2015

1. Add emoji support ​:smile:​.
2. Fix bugs for paste function.
3. Support export HTML without CSS styles.
4. Choose `<title>` from filename or content automatically for exported HTML.
5. Fix bugs that local images not shown in exported PDF.
6. Improve code fences. Add auto-close-tag and auto-close-bracts for code fences
7. Improve word count for other languages. Add line count function.
8. Fix delete operation on first selectable blocks, fix behavior for `ctrl+k`.
9. Add configuration for indent size when saving.
10. Fix bug that typora will crash when apply inline styles for multiple line.
11. Other style fix and bug fix.

## 0.9.5 (beta)

28, JUN, 2015

1. Add **word count** feature. (For Chinese characters, it will count one character as one word automatically).
2. Watch file modifications by external applications when editing.
3. Add `TOC`, `Math Block` to main menu.
4. Support 4 whitespace indent for code blocks when reading/pasting markdown sources.
5. Detach <code>HTML tags</code>
6. Able to open/edit all text files, whatever the extension name is.
7. Fix Image not shown when editing.
8. Fix bugs that user cannot convert paragraphs into list or blockquote from menu commands.
9. Fix CSS style.
10. Remove unnecessary empties lins in lists when exporting or pasting.
11. Fix bug: cursor will lose when clicking top/bottom area.
12. Improve performance.
13. Other bug fix.

## 0.9.4.5 (beta)

30, MAY, 2015

1. Fix bugs parsing list and task list.
2. Fix bugs that shift + arrow key does not work correctly.
3. Fix an undo/redo bug.
4. Fix export function for task list.
5. Fix broken style when export to HTML/PDF.
6. Export to HTML/PDF will keep file name.
7. Reduce exported HTML file’s size.
8. Other bug fix.

## 0.9.4 (beta)

6, MAY, 2015

1. Support customized font size.
2. Support image with relative path.
3. Allow typora to open all plain text files, including .txt file
4. Allow user to change from code blocks to paragraph from menu.
5. Detect Php Markdown Extra’s attribute list syntax on headings
6. Add new shortcut key ⌘+-/+
7. Turn off smart quote on YAML Front Matters automatically
8. Add syntax highlight for typescript
9. Allow clicking empty bottom area to append new paragraph after code fences and other selectable blocks
10. Fix key navigations on tables
11. Fix a bug that export/print does not work
12. Fix a copy/paste bug
13. Fix a bug that cut/undo/save function in code fences does not work
14. Fix a bug that when undo stack reach its maximum, undo function is broken
15. Fix a bug that Option + Delete does not work, Shift + up/down arrow key does not work
16. Other bug fix.

## 0.9.3 (beta)

19, APR, 2015

1. Support opening files in local disk, when clicking hyperlinks targeting at local files
2. Better key navigation for tables (use `tab`, `shift+tab`, and `enter` key to jump to another cell quickly).
3. New code fences syntax: `Swift` and `Scala`.
4. Fix bugs of lists
5. Fix bugs: open another file will crash on fullscreen mode.
6. Other bug fix.

## 0.9.2 (beta)

8, APR, 2015

1. Add Yosemite window style — seamless window style 
2. Add `[TOC]` syntax support
3. Add outline support.
4. Improve copy function, Copy to other HTML editor will restore the style.
5. Add preference window
6. New shortcut key:
   1. Jump to selection `cmd+j`
   2. Jump to top `cmd+[`
   3. Jump to bottom `cmd+]`
7. Bug fix and css style fix.

## 0.9.1 (beta)

17, Mar, 2015

1. Fix bug of characters not shown when using Japanese IME.
2. Improve theme styles and add a new theme.
3. Other bug fix.
4. Improve copy & paste. Support copy as Markdown.
5. Suggest file name when saving.

## 0.9.0 (beta)

9, Mar, 2015

1. fix a bug sometimes delete operation fail.
2. fix a bug typora will eat character when using IME.
3. add basic support for Markdown Extra’s attribute syntax for images.
4. init anonymous usage message collection
5. other bug fix.

## 0.8.9 (beta)

4, Mar. 2015

1. fix a bug of delete operation
2. fix a bug that typora cannot open `.md` files with YAML Front Matters
3. typora will remember position of last closed window when restart.

## 0.8.8 (beta)

27, Feb. 2015

#### Usability Improment

1. Live preview for lists and quote-blocks will be applied immediately instead of changing styles after pressing `return` key.
2. Change the way to display, edit image
3. Support drag & drop to insert image. Support custom url prefix for images.
4. Block/Inline styles will be marked in menu `Paragraph` and `Format` from menu bar.
5. Add hint for h3~h6 headers.
6. Change click behavior for hyperlinks. Click to edit and command+click to open link.
7. Add new shortcut key `Command+E` to select a sequence of styled text (or cell in table).

#### Bug Fix

1. Fix the error layout of exported PDF.
2. Fix the bug that menu item not work when multiple window is opened.
3. Fix bugs that lead to slow performance.
4. Other bug fix.

## 0.8.7 (alpha)

28, Jun. 2015

1. add support for LaTex/Tex math blocks
2. fix bugs of initialization.
3. some other bug fix.

## 0.8.6 (alpha)

1, Jun, 2015

1. Fix bugs about cusor position and inline style.
2. Fix Image style and tooltip location. 
3. Fix unproper behavior when locked.

## 0.8.5 (alpha)

1. fix bugs
2. add support for YAML front matters

## 0.8.2 (alpha)

1. fix knwon bugs

## 0.8.1 (alpha)

First working version for alpha test.