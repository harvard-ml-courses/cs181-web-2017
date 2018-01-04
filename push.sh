### option one ###
# first install this: pip install jinja2-cli
jinja2 index.html.tpl  site.yaml > index.html 

### option two ###
# first install these: pip install j2cli and pip install j2cli[yaml]
# j2 index.html.tpl site.yaml > index.html

### this pushes to harvard-ml-courses/cs181-web-2017 ###
git add .
git commit -a -m .
git push origin gh-pages

### this pushes to http://cs181.fas.harvard.edu/
### but the newer harvard-ml-courses/cs181-web is pushed there
### ssh cs181@login.fas.harvard.edu "cd public_html; git pull; chmod 755 *.html *.css"
