html_ content = "<html>" <> content <> "</html>"
body_ content = "<body>" <> content <> "</body>"
head_ content = "<head>" <> content <> "</head>"
title_ content = "<title>" <> content <> "</title>"

makeHtml title content = html_ (head_ (title_ title) <> body_ content)

myhtml = makeHtml "Hello title" "Hello, world!"
main = putStrLn myhtml